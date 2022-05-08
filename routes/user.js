const express = require('express');
const router = express.Router();

const profileController = require('../controllers/profile');

router.use((req , res, next) => {
    next();
});

router.get('/:userId', async (req, res) => {
    userId = req.params.userId;
    user = await profileController.getUserObject(userId); 

    res.render('profile', { title: 'other_profile' , 'user' : user, 'self': false });
});

module.exports = router;
