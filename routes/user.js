const express = require('express');
const router = express.Router();

const profileController = require('../controllers/profile');

router.use((req , res, next) => {
    next();
});

router.get('/:userId', async (req, res) => {
    userId = req.params.userId;
    user = await profileController.getUserObject(userId); 

    if (userId == req.session.passport.user.id) {
        res.redirect('/profile');
    }

    res.render('profile', { title: 'other_profile' , 
        'user' : user, 
        'self': false });
});


router.get('/stats/:userId', async (req, res) => {
    id = req.params.userId;
    stats = await profileController.getUserStats(id);
    res.json(stats);
});

module.exports = router;
