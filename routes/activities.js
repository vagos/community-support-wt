const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    console.log('greetings from activities')
    console.log(`Time:${Date.now()} Request:${req.url}`);
    next();
});

const controller = require('../controllers/activites');

//define the home page route for activities
router.get('/', (req, res) => {

    controller.get_all( (result) => {
        res.render('activities',{title:"ActivitiesTitle" ,activities: result});
    });


});

router.get('/authors', (req, res) => {
    res.sendFile('epic.gif', {root: './public'});
});

module.exports = router;
