const { Router } = require('express');
const express = require('express');
const router = express.Router();
const util = require('../controllers/util.js');

// why cant use this instead? (import { timeString } from '../controllers/util.js')

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

const controller = require('../controllers/activites');
const participationController = require('../controllers/participation');

router.get('/', (req, res) => {
    res.redirect('/activities/all/0');
});

//define the home page route for activities
router.get('/all/:page', (req, res) => {

    const page = parseInt(req.params.page);

    controller.getAllPaginated( page, (activities) => {
        res.render('activities', {
            title:'activities', 
            authenticated: req.isAuthenticated(), 
            admin: false,
            activities: activities,
            pages: {next: page + 1, prev: Math.max(page - 1, 0)},
        });
    });

});

// renamed from activityID to activityName to be more accurate
router.get('/:activityName', (req, res) => {

    let activityName = req.params.activityName;
    // let activityId ; Maybe we should store activityID on the html to reduce db queries?


    // watch out for the async
    controller.getExtendedPosts(activityName, async (posts) => {
        
        // check if user can create posts
        let authenticated = req.isAuthenticated();
        let participant = false;
        // only check if user is logged in
        if (authenticated) participant = await participationController.isParticipant(req.session.passport.user.id, activityName);

        for(let post of posts){
            post.creation_time = util.dateToTimeString(post.creation_time);
        }

        res.render('activity', { ActivityName : activityName,
            posts: posts,
            authenticated: authenticated,
            participant: participant
        });
    });
    
});

// Putting requests

router.put('/createActivity', (req, res) => {

    // create activity with values given in request

    // This is weird because it is a async function (https://www.valentinog.com/blog/throw-async/)
    controller.createActivity(req.body.name, req.body.description)
        .then(() => {
            res.sendStatus(205);})
        .catch((err) => {
            console.error(err);
            res.sendStatus(403);});


});

router.put('/:activityName/createPost', (req, res) => {

    if (req.isUnauthenticated()) {
        res.redirect(`/${req.params.activityName}`);
        return;
    }
    
    let postCreator = req.session.passport.user.id;

    let postName = req.body.name;
    let postBody = req.body.body;

    let postActivity = req.params.activityName;
    
    let time = util.timeString();

    controller.createPost(postName, postBody, postActivity, postCreator, time).
    then(() => {
        res.sendStatus(205);
    })
    .catch((err) => {
        console.error(err);
        res.sendStatus(403);});

});

router.put('/:activityName/join', (req, res) => {

    if (req.isUnauthenticated()) {
        res.redirect(`/${req.params.activityName}`);
        return;
    }

    let participationUser = req.session.passport.user.id;
    let participationActivity = req.params.activityName;
    let time = util.timeString();
    
    participationController.makeParticipant(participationUser, participationActivity, time).
    then(() => {
        res.sendStatus(205);
    })
    .catch((err) => {
        console.error(err);
        res.sendStatus(403);});

});
module.exports = router;
