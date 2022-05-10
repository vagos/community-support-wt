const db = require('./db');

// returns post for given id
exports.getPost = (postId, cb) => {
    db.connection.query(`SELECT post.*, user.name as creatorName from post join (select id,name from user) as user on user.id=post.creator WHERE 
    post.id = ?`, postId,
    (err, rows) => { if (err) throw err; cb(rows[0]); });
};

// Returns all comments on given post
exports.getComments = (postId, cb) => {
    // Why is the "?" there? its for safety
    db.connection.query(`SELECT * FROM comment WHERE 
    comment.post = ?`, postId,
    (err, rows) => {if (err) throw err; cb(rows); });
}


// // Returns all comments with usernames on given post
exports.getExtendedComments = (postId, cb) => {
    // Why is the "?" there? its for safety
    db.connection.query(`SELECT comment.*, user.name as creatorName from comment join (select id,name from user) as user on user.id=comment.creator WHERE 
    comment.post = ?`, postId,
    (err, rows) => {if (err) throw err; cb(rows); });
}