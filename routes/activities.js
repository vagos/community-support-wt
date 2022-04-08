const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

const controller = require('../controllers/activites');

//define the home page route for activities
router.get('/', (req, res) => {

    controller.get_all( (result) => {
        res.render('activities', { title:"ActivitiesTitle" ,activities: result } );
    });


});

module.exports = router;
