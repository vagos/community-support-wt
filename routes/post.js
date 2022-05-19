const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

const controller = require('../controllers/posts');

router.get('/:postId', (req, res) => {

    controller.getPost(req.params.postId, (post) => {
        
        // retrieve comments
        // console.log(`getting comments for post ${post.id}`);

        controller.getExtendedComments(post.id,(comments) => {
            // for (comment of comments){
            //     console.log(comment);
            // }

            res.render('post', {authenticated: req.isAuthenticated(), post:post , comments:comments});
            // console.log(postInfo);
        });
    });

});

module.exports = router;
