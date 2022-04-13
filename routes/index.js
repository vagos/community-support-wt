const express = require('express');
const req = require('express/lib/request');

const router = express.Router();
const activitiesRouter = require('./activities.js');
const profileRouter = require('./profile.js');
const postRouter = require('./post.js');


//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

//Switch router for /activities
router.use('/activities', activitiesRouter);
router.use('/profile', profileRouter);
router.use('/posts', postRouter);

//define the home page route
router.get('/', (req, res) => {
    res.render('home', {title:'home'});
});

module.exports = router;
