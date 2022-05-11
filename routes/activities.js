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

    // controller.getAll( (result) => {
    //     const activities = result;
    
    //     activities.forEach( (v) => {
    //         v.color = `rgb( ${Math.random() * (255)}, ${Math.random() * (255)}, ${Math.random() * (255)})`;
    //     });

    //     res.render('activities',{title:"activities" ,activities: activities});
    // });

});

router.get('/:activityId', (req, res) => {

    activityName = req.params.activityId;
    
    controller.getPosts(activityName, (posts) => {
        
        res.render('activity', { name : activityName, 
            posts: posts

        });
    });
});

module.exports = router;
