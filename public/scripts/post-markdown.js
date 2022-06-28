const comments = document.querySelectorAll('.comment-body');

for (var comment of comments) {
    comment.innerHTML = marked.parse(comment.innerHTML);
}

const posts = document.querySelectorAll('.post-body');

for (var post of posts) {

    post.innerHTML = marked.parse(post.innerHTML);
}
