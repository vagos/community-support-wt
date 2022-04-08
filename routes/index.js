const express = require('express');
const req = require('express/lib/request');

const router = express.Router();
const activities_router = require('./activities.js');
const profile_router = require('./profile.js');


//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

//Switch router for /activities
router.use('/activities', activities_router);
router.use('/profile', profile_router);

//define the home page route
router.get('/', (req, res) => {
    res.render('home', {title:'home'});
});

module.exports = router;
