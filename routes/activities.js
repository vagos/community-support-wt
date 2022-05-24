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

function getRandomColorRGB(s) { // TODO move this

    function rnd(n) {
    
    for (let i = 0; i < 10; i++) {
        n = n ^ ( n * 19 );
    }

    return Math.abs(n);
}

    function numberifyString(s) {
        let r = 0;

        for (let i = 0; i < s.length; i++) {
           r += s.codePointAt(i); 
        }

        return r;
    }

    seed = numberifyString(s);
    return `rgb(${rnd(seed) % (255)}, ${rnd(seed + 1) % (255)},
        ${rnd(seed + 2) % (255)})`;
}

//define the home page route for activities
router.get('/', (req, res) => {


    controller.getExtendedAll( (activities) => {

        activities.forEach( (v) => {
            v.color = getRandomColorRGB(v.name);
        });

        res.render('activities',{title:'activities', authenticated: req.isAuthenticated(), activities: activities});
    });

});

// renamed from activityID to activityName to be more accurate
router.get('/:activityName', (req, res) => {

    // console.log(req);
    let activityName = req.params.activityName;

    controller.getExtendedPosts(activityName, (posts) => {
        
        // activityID is for testing
        res.render('activity', { name : activityName, 
            posts: posts,
            authenticated: req.isAuthenticated(),
        });
    });
    
});

// Putting requests

router.put('/createActivity', (req, res) => {

    // create activity with values given in request

    // This is weird because it is a async function (https://www.valentinog.com/blog/throw-async/)
    controller.createActivity(req.body.name, req.body.description)
        .then(cb => {
        // console.log("ok");
            res.sendStatus(200);})
        .catch((err) => {
            console.error(err);
            res.sendStatus(403);});


});

router.put('/:activityName/createPost', (req, res) => {


    // IF USER ISNT LOGGED IN
    // console.log("req:",req);
    if (req.isUnauthenticated()) {
        //Send a response status as well?
        res.redirect(`/${req.params.activityName}`);
        return;
    }


    // Gather data to insert

    // getting user
    let postCreator = req.session.passport.user.id;

    let postName = req.body.name;
    let postBody = req.body.body;

    // get activity id
    let postActivity = req.params.activityName;
    
    let time = util.timeString();

    
    // console.log(`NOW PUTTING POST ${postName} :${postBody} \n created by:${postCreator} for activity:${postActivity} on:${time}\n`);

    controller.createPost(postName, postBody, postActivity, postCreator, time).
    then(cb => {
        res.sendStatus(200);
        // Maybe refresh aswell?
    })
    .catch((err) => {
        console.error(err);
        res.sendStatus(403);});

});

module.exports = router;
