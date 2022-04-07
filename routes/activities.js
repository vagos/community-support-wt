const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    console.log('greetings from activities')
    console.log(`Time:${Date.now()} Request:${req.url}`);
    next();
});

//define the home page route for activities
router.get('/', (req, res) => {

    a1 = {
        name: 'activity1',
        description: 'Description1',
        members: 12
    };

    a2 = {
        name: 'activity2',
        description: 'Description2 this is a super long description basically to test how many character we want in a simple description before it gets to much to show. I think these are enough. But in case they are not here are some more epic character to look at',
        members: 66
    };

    
    res.render('activities',{title:"ActivitiesTitle" ,activities: [a1, a2]});
});

router.get('/authors', (req, res) => {
    res.sendFile('epic.gif', {root: './public'});
});

module.exports = router;
