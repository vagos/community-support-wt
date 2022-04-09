const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

const controller = require('../controllers/activites');

//define the home page route for activities
router.get('/', (req, res) => {

    controller.getAll( (result) => {
        const activities = result;
        res.render('activities',{title:"activities" ,activities: activities});
    });


});

router.get('/:activityId', (req, res) => {
    res.render('activity', {name : req.params.activityId });
});

module.exports = router;
