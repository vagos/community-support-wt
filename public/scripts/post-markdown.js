const comments = document.querySelectorAll('.comment-body');

for (comment of comments) {
    comment.innerHTML = marked.parse(comment.innerHTML);
}

const posts = document.querySelectorAll('.post-body');

for (post of posts) {

    post.innerHTML = marked.parse(post.innerHTML);
}
