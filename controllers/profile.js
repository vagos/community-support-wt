const db = require('./db');

exports.getUserObject = async (id) => {
   
    const activities = await db.query(`SELECT * FROM participation JOIN activity
    ON participation.activity = activity.id
    WHERE participation.user = ?`, id);

    const friends = await db.query(`SELECT user.id, name FROM friendship JOIN
    user ON user_second = user.id
    WHERE user_first = ?`, [id, id]);

    const info = await db.queryOne(`SELECT name, join_date, bio FROM user WHERE id = ?`, id);

    user = {
        'name': info.name,
        'id': id,
        'bio': info.bio,
        'activities': activities,
        'friends' : friends
    };

    return user;
};

exports.changeUserBio = async (id, bio) => {
    
    db.query(`UPDATE user SET bio = ?
    WHERE user.id = ?`, [bio, id]);
};

exports.getUserStats = async (id) => {

    comments_per_month = await db.query(`SELECT COUNT(*) as cnt, 
    DATE_FORMAT(comment.creation_time, '%m') as month
    FROM comment WHERE comment.creator = ? 
            GROUP BY month
            ORDER BY month
        `, [id]);

    return {
        comments: comments_per_month,
    };
};
