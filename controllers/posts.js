const db = require('./db');

// returns post for given id
exports.getPost = (postId, cb) => {
    db.connection.query(`SELECT * FROM post WHERE 
    post.id = ?`, postId,
    (err, rows) => { if (err) throw err; cb(rows[0]); });
};

// Returns all comments on given post
exports.getComments = (postId, cb) => {
    // Why is the "?" there?
    db.connection.query(`SELECT * FROM comment WHERE 
    comment.post = ?`, postId,
    (err, rows) => {if (err) throw err; cb(rows); });
}