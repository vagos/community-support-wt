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
        name: 'vagosactivity',
        members: 12
    };

    a2 = {
        name: 'tolisactivity',
        members: 66
    };


    res.render('index', {activities: [a1, a2]});
});

router.get('/authors', (req, res) => {
    res.sendFile('epic.gif', {root: './public'});
});

module.exports = router;
