const express = require('express');
const req = require('express/lib/request');

const router           = express.Router();

const activitiesRouter = require('./activities.js');
const profileRouter    = require('./profile.js');
const postRouter       = require('./post.js');
const loginRouter      = require('./login.js');
const userRouter       = require('./user.js');

const activityController = require('../controllers/activites');
const userController = require('../controllers/users');
// const userController = require('../controllers/user');

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

//Switch router for /activities
router.use('/activities', activitiesRouter);
router.use('/profile', profileRouter);
router.use('/posts', postRouter);
router.use('/login', loginRouter);
router.use('/user', userRouter);

//define the home page route
router.get('/', async (req, res) => {
    const activities = await activityController.getPopularActivities();
    const users = await userController.getTopUsers();

    res.render('home', {title:'home', 
        activities: activities,
        users, users,
        authenticated: req.isAuthenticated()});
});

module.exports = router;
