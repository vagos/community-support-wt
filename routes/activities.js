const { Router } = require('express');
const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

const controller = require('../controllers/activites');

//define the home page route for activities
router.get('/', (req, res) => {


    controller.getExtendedAll( (extendedActivities) => {

        extendedActivities.forEach( (v) => {
            v.color = `rgb( ${Math.random() * (255)}, ${Math.random() * (255)}, ${Math.random() * (255)})`;
        });

        res.render('activities', {title:"activities", activities: extendedActivities});

    });

});

router.get('/:activityId', (req, res) => {

    activityName = req.params.activityId;

    controller.getExtendedPosts(activityName, (posts) => {
        
        res.render('activity', { name : activityName, 
            posts: posts

        });
    });
    
});

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

module.exports = router;
