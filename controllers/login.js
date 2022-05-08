const passport = require('passport');
var LocalStrategy = require('passport-local');
var crypto = require('crypto');
var db = require('./db');

passport.use(new LocalStrategy(function verify(username, password, cb) {

    db.connection.query('SELECT * FROM user WHERE name = ?', [username], function(err, row) {
        if (err) { throw err; }
        if (row.length === 0) { return cb(null, false, { message: 'Incorrect username or password.' }); }

        row = row[0];

        crypto.pbkdf2(password, row.salt, 310000, 32, 'sha256', function(err, hashedPassword) {
            if (err) { return cb(err); }
            if (!crypto.timingSafeEqual(row.hashed_password, hashedPassword)) {
                return cb(null, false, { message: 'Incorrect username or password.' });
            }
            return cb(null, row);
        });
    });
}));

passport.serializeUser((user, cb) => {

    process.nextTick(() => {
        cb(null, { id: user.id, username: user.name });
    });

});

passport.deserializeUser((user, cb) => {
    process.nextTick(() => {
        return cb(null, user);
    });
});

module.exports.signupUser =  (name, password, cb) => {
    var salt = crypto.randomBytes(16);

    crypto.pbkdf2(password, salt, 310000, 32, 'sha256', function(err, hashedPassword) {
        if (err) { return next(err); }
        db.connection.query('INSERT INTO user (name, hashed_password, salt) VALUES (?, ?, ?)', [
            name,
            hashedPassword,
            salt
        ], function(err, result) {
            if (err) { throw err; }

            var user = {
                id: result.insertId,
                username: name
            };

            cb(user);
        });
    });
}
