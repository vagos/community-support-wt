const db = require('./db');

// returns true if user is in activity
exports.isParticipant = async function (userId ,activityName) {

    let result = await db.query(`SELECT * FROM participation
        JOIN activity ON participation.activity = activity.id
        JOIN user ON participation.user = user.id
        WHERE user.id = ?
        AND activity.name = ?`,[userId ,activityName]);

    // console.log("result:",result);

    // if user is participant in that activity
    if (result.length !=0) return true;
    else return false;

};

// Makes a user a participant in an activity //! Later change to first check if user had a previous participation
exports.makeParticipant = async function (userId, activityName , join_date) {

    // get id for activity

    const Activity = await db.queryOne(`SELECT activity.id FROM activity where activity.name = ?`, activityName);


    // dont forget the .id because it is a row data packet

    // check constraints 

    // try to insert data if it passes constraint

    let temp = await db.query(`INSERT INTO participation(user, activity, join_date) VALUES(?, ?, ?)`, [userId, Activity.id, join_date]);


    // console.log("inserting participant");

};