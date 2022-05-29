const express = require('express');
const router = express.Router();
const util = require('../controllers/util.js');

//middleware that is specific to this router
router.use((req , res, next) => {
    next();
});

const controller = require('../controllers/posts');
const participationController = require('../controllers/participation');

router.get('/:postId', (req, res) => {

    controller.getPost(req.params.postId, (post) => {
        
        // retrieve comments
        // console.log(`getting comments for post ${post.id}`);

        controller.getExtendedComments(post.id, async (comments) => {
            
            let authenticated = req.isAuthenticated();
            let participant = false;
            // only check if user is logged in
            let activityName = await controller.getActivityName(req.params.postId);
            // console.log(activityName);
            if (authenticated) participant = await participationController.isParticipant(req.session.passport.user.id,activityName);

            res.render('post', {authenticated: authenticated, participant:  participant, activityName:activityName, post:post , comments:comments});
            // console.log(postInfo);
        });
    });

});

router.put('/:postId/createComment', (req, res) => {

    // IF USER ISNT LOGGED IN
    // console.log("req:",req);
    if (req.isUnauthenticated()) {
        //Send a response status as well?
        res.redirect(`/${req.params.activityName}`);
        return;
    }

    // console.log("creating comment");
    // Gather data to insert

    // getting user
    let commentCreator = req.session.passport.user.id;

    let commentBody = req.body.body;
    let commentReply = req.body.replies_to;

    // get post id
    let commentPost = req.params.postId;
    
    let time = util.timeString();

    
    // console.log(`NOW PUTTING COMMENT ${commentBody} \n created by:${commentCreator} for post:${commentPost} on:${time}, reply to:${commentReply}\n`);

    controller.createComment(commentCreator, commentPost, commentBody, commentReply, time).
    then(cb => {
        res.sendStatus(205);
    })
    .catch((err) => {
        console.error(err);
        res.sendStatus(403);});

});

module.exports = router;
