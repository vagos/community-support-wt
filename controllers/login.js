var passport = require('passport');
var LocalStrategy = require('passport-local');
var crypto = require('crypto');
var db = require('./db');

passport.use(new LocalStrategy(function verify(username, password, cb) {

    db.connection.query('SELECT * FROM user WHERE name = ?', [username], function(err, row) {
        if (err) { throw err; }
        if (!row) { return cb(null, false, { message: 'Incorrect username or password.' }); }

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
