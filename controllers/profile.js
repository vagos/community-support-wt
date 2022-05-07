const db = require('./db');

exports.getUserObject = async (username, id) => {
   
    const activities = await db.query(`SELECT * FROM participation JOIN activity
    ON participation.activity = activity.id
    WHERE participation.user = ?`, id);

    const friends = await db.query(`SELECT user.id, name FROM friendship JOIN
    user ON user_second = user.id
    WHERE user_first = ?`, [id, id]);

    const info = await db.queryOne(`SELECT join_date, bio FROM user WHERE id = ?`, id);

    user = {
        'name': username,
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

