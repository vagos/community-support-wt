const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    console.log('greetings from profile')
    console.log(`Time:${Date.now()} Request:${req.url}`);
    next();
});

//define the home page route for activities
router.get('/', (req, res) => {

    res.render('profile',{title:"profile"});
});

router.get('/authors', (req, res) => {
    res.sendFile('epic.gif', {root: './public'});
});

module.exports = router;
