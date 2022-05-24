
// gets all comments that are replies to antoher comment
const replyComments = document.querySelectorAll(".reply.comment");

// console.log(replyComments);

function putReplyUnderComment(reply) {

    const replies_to = reply.querySelector(".replies_to").id;

    // console.log(replies_to);

    // splices to get replies-to id
    const replies_to_id = replies_to.slice(9);
    // console.log(replies_to_id);

    // move reply into correct comment

    const comment = document.querySelector(`#comment-${replies_to_id}`);

    comment.querySelector(".reply-comments").appendChild(reply);
}

for (reply of replyComments){

    putReplyUnderComment(reply);
}