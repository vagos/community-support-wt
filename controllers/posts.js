const db = require('./db');

// returns post for given id
exports.getPost = (postId, cb) => {
    db.connection.query(`SELECT post.*, user.name as creatorName FROM post JOIN (SELECT id,name FROM user) as user ON user.id=post.creator WHERE 
    post.id = ?`, postId,
    (err, rows) => { if (err) throw err; cb(rows[0]); });
};

// Returns all comments ON given post
exports.getComments = (postId, cb) => {
    // Why is the "?" there? its for safety
    db.connection.query(`SELECT * FROM comment WHERE 
    comment.post = ?`, postId,
    (err, rows) => {if (err) throw err; cb(rows); });
};

// returns activityName FROM given postId
exports.getActivityName = async function (postId) {

    let result = await db.queryOne(`SELECT activity.name
        FROM post              
        JOIN activity ON activity.id = post.activity
        WHERE post.id= ?`,postId);

    // console.log("result:",result);

    // return result
    return result.name;

};

// // Returns all comments with usernames ON given post
exports.getExtendedComments = (postId, cb) => {
    // Why is the "?" there? its for safety
    db.connection.query(`SELECT comment.*, user.name as creatorName FROM comment JOIN (SELECT id,name FROM user) as user ON user.id=comment.creator WHERE 
    comment.post = ?`, postId,
    (err, rows) => {if (err) throw err; cb(rows); });
};

exports.createComment = async (commentCreator, commentPost, commentBody, commentReply, commentCreationTime, cb) => {


    //convert "NULL" to NULL
    let replies_to;
    if(commentReply=="NULL") replies_to=null;
    else replies_to=commentReply;

    // dont forget the .id because it is a row data packet
    // console.log("will insert:",commentCreator, commentPost, commentBody ,replies_to, commentCreationTime);

    // check if it passed constraints

    // WHAT ARE THE CONSTRAINTS FOR COMMENT?
    // IF user is in activity?


    // try to insert data if it passes constraint

    let temp = await db.query(`INSERT INTO comment(creator,post,body,replies_to,creation_time) VALUES(?, ?, ?, ?, ?)`, [commentCreator, commentPost, commentBody, replies_to, commentCreationTime]);

};