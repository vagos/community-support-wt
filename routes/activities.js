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

        // REMEMBER TO ADD CHECK FOR IF USER IS ADMIN
        res.render('activities', {title:'activities', 
            authenticated: req.isAuthenticated(), 
            admin: false,
            activities: activities
        });
    });

});

// renamed from activityID to activityName to be more accurate
router.get('/:activityName', (req, res) => {

    // console.log(req);
    let activityName = req.params.activityName;
    // let activityId ; Maybe we should store activityID on the html to reduce db queries?


    // watch out for the async
    controller.getExtendedPosts(activityName, async (posts) => {
        
        // activityID is for testing

        // check if user can create posts
        // console.log(posts);
        let authenticated = req.isAuthenticated();
        let participant = false;
        // only check if user is logged in
        if (authenticated) participant = await controller.isParticipant(req.session.passport.user.id,activityName);

        // convert time string to correct format for display (JS Has a bad date time system) //!Make this into a function later
        for(let post of posts){
            let date = new Date(post.creation_time);
            post.creation_time = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + date.getDate();
            //This is for later since posts dont store hours + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
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
        .then(cb => {
            res.sendStatus(205);})
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
        res.sendStatus(205);
    })
    .catch((err) => {
        console.error(err);
        res.sendStatus(403);});

});

// use get or put?
router.put('/:activityName/join', (req, res) => {


    // IF USER ISNT LOGGED IN
    // console.log("req:",req);
    if (req.isUnauthenticated()) {
        //Send a response status as well?
        res.redirect(`/${req.params.activityName}`);
        return;
    }


    // Gather data to insert

    // getting user
    let participationUser = req.session.passport.user.id;

    // get activity id
    let participationActivity = req.params.activityName;
    
    let time = util.timeString();

    
    // console.log(`NOW PUTTING participant ${participationUser} for activity:${participationActivity} on:${time}\n`);

    controller.makeParticipant(participationUser, participationActivity, time).
    then(cb => {
        // STATUS 205 signals OK, Now refresh page
        res.sendStatus(205);
    })
    .catch((err) => {
        console.error(err);
        res.sendStatus(403);});

});
module.exports = router;
