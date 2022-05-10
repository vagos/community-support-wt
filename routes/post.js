const express = require('express');
const router = express.Router();

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

const controller = require('../controllers/posts');

router.get('/:postId', (req, res) => {

    controller.getPost(req.params.postId, (post) => {
        // test Comments
        test1 = {id:0, content:"asfasfasf"};
        test2 = {id:2, content:"aasfafsasfasff"};
        postInfo = {post:post , comments:[test1,test2]} 
        res.render('post', postInfo);
        console.log(postInfo);
    });

});

module.exports = router;
