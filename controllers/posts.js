const db = require('./db');

exports.getPost = (postId, cb) => {
    db.connection.query(`SELECT * FROM post WHERE 
    post.id = ?`, postId,
    (err, rows) => { if (err) throw err; cb(rows[0]); });
};
