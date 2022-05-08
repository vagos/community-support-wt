const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

const controller = require('../controllers/posts');

router.get('/:postId', (req, res) => {

    controller.getPost(req.params.postId, (post) => {
        res.render('post', { post:post });
        console.log(post);
    });

});

module.exports = router;
