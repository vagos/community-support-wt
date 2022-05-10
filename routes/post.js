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

            postInfo = {post:post , comments:comments} ;
            res.render('post', postInfo);
            console.log(postInfo);
        });
    });

});

module.exports = router;
