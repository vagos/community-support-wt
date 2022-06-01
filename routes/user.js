const express = require('express');
const router = express.Router();

const profileController = require('../controllers/profile');

router.use((req , res, next) => {
    next();
});

router.get('/:userId', async (req, res) => {
    userId = req.params.userId;
    user = await profileController.getUserObject(userId);
    
    // check if user is friend
    let authenticated = req.isAuthenticated();
    let friend = false;

    // only check if user is logged in
        if (authenticated) friend = await profileController.isFriend(req.session.passport.user.id, userId);

    res.render('profile', { title: 'other_profile' , 
        'user' : user, 
        'self': false,
        authenticated: authenticated,
        friend : friend});
});


router.get('/stats/:userId', async (req, res) => {
    id = req.params.userId;
    stats = await profileController.getUserStats(id);
    res.json(stats);
});

// put methods

router.put('/:userId/addFriend', async (req, res) => {
   
    // IF USER ISNT LOGGED IN
    console.log("req:",req);
    if (req.isUnauthenticated()) {
        //Send a response status as well?
        res.redirect(`/${req.params.userId}`);
        return;
    }

    // Gather data to insert

    // getting user
    let firstUser = req.session.passport.user.id;

    let secondUser = req.params.userId;

    
    console.log(`Making friends firstUser :${firstUser}  secondUser:${secondUser} \n`);

    profileController.addFriend(firstUser, secondUser).
    then(cb => {
        res.sendStatus(205);
    })
    .catch((err) => {
        console.error(err);
        res.sendStatus(403);});
});

module.exports = router;
