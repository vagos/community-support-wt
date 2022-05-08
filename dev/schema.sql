DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,    
    name VARCHAR(255) NOT NULL DEFAULT '',
    bio TEXT ,
    join_date DATE,
    hashed_password BINARY(32),
    salt BINARY(16)
) ENGINE=INNODB;

INSERT INTO user(name) VALUES('Apostolis Sigma');
INSERT INTO user(name) VALUES('Apostolis Sigma');
INSERT INTO user(name) VALUES('Maria Goomba');
INSERT INTO user(name) VALUES('Apostolis Goomba');
INSERT INTO user(name) VALUES('Konstantina Pokahontas');
INSERT INTO user(name) VALUES('Artemis Koopa');
INSERT INTO user(name) VALUES('Ioanna Zuza');
INSERT INTO user(name) VALUES('Anna Johnas');
INSERT INTO user(name) VALUES('Ioanna Zuza');
INSERT INTO user(name) VALUES('Vagos Sigma');
INSERT INTO user(name) VALUES('Dabber Johnas');
INSERT INTO user(name) VALUES('Konstantina Zelda');
INSERT INTO user(name) VALUES('Apostolis Kolombia');
INSERT INTO user(name) VALUES('John Zelda');
INSERT INTO user(name) VALUES('Konstantina Pokahontas');
INSERT INTO user(name) VALUES('Kostas Goomba');
INSERT INTO user(name) VALUES('Kostas Pokahontas');
INSERT INTO user(name) VALUES('Dabber Zelda');
INSERT INTO user(name) VALUES('Panagiotis Kolombia');
INSERT INTO user(name) VALUES('John Goomba');
DROP TABLE IF EXISTS activity;

CREATE TABLE IF NOT EXISTS activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    description VARCHAR(255) DEFAULT ''
) ENGINE=INNODB;

INSERT INTO activity(name, description) VALUES('Select Paintings', 'kxZJFuOBqT zbMneBnZvcQaWyBDGPF');
INSERT INTO activity(name, description) VALUES('Select Food', 'ozXZdReIzkaxIHqa iYNDDsgtzhllJ');
INSERT INTO activity(name, description) VALUES('Select Climbing', 'nupYzqQrgpO KCHOM osTowgQLpHIO');
INSERT INTO activity(name, description) VALUES('Select Drinking', 'AwDvnzDTFSzhoMJMvjaabbvIINVJaO');
INSERT INTO activity(name, description) VALUES('Pickup Food', 'rgcrCIYKmHsnKemCjcjcWmqZYxWfBf');
INSERT INTO activity(name, description) VALUES('Remove Paintings', 'WSeRuWvMMgxhCVuWUGtSjnFuLOgOsW');
INSERT INTO activity(name, description) VALUES('Select Shops', 'wcKkdIyucaHLUMlIbbFECPKe UPdtV');
INSERT INTO activity(name, description) VALUES('Select Paintings', 'SRigpcIybvvTuXUGxcCFmvAEutiEbW');
INSERT INTO activity(name, description) VALUES('Pickup Food', 'IDzjeSWVykyUqLCkITVEfhOBkHcUFP');
INSERT INTO activity(name, description) VALUES('Cooking Swimming', 'nFMKXAfWRxbofFoQFJZgLuDjyGbuCJ');
INSERT INTO activity(name, description) VALUES('Mountain Drinking', 'ZbkoYgYxZsOydXEBbWoiklwnngabRF');
INSERT INTO activity(name, description) VALUES('Collect Eating', 'uPEgjyJNFZMbJEDGoxejcWioYGb cB');
INSERT INTO activity(name, description) VALUES('Cooking Eating', 'BoeMjnTDFfveYnHLjEPqSKUGRBkiyh');
INSERT INTO activity(name, description) VALUES('Remove Running', 'IbstHoLHcJemdpHPhGFhdurjEWDHjI');
INSERT INTO activity(name, description) VALUES('Find Shops', 'LWchDXfeESszWFtKTcOileTNoKUEY ');
INSERT INTO activity(name, description) VALUES('Find Food', 'JilAquCNOdlZJuaEJzlsidQZKkWrlh');
INSERT INTO activity(name, description) VALUES('Organise Posters', 'ucJbBDcelBvaFBtogfjGwdArUksfnY');
INSERT INTO activity(name, description) VALUES('Draw Swimming', 'kXenlQztbXDLxDTQiLKZTGVdOkdKur');
INSERT INTO activity(name, description) VALUES('Create Drinking', 'dGfbDxqysTtdiFBi JIkjECUKnoIIV');
INSERT INTO activity(name, description) VALUES('Create Food', 'hOgkyaabUmoubVLbN KAY hhayRZnU');
DROP TABLE IF EXISTS post;

CREATE TABLE IF NOT EXISTS post (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    activity INT,
    creator INT,
    creation_time DATE,
    body TEXT,
    FOREIGN KEY (activity)
        REFERENCES activity(id)
            ON UPDATE CASCADE
            ON DELETE CASCADE,
    FOREIGN KEY (creator)
        REFERENCES user(id)
            ON UPDATE CASCADE
            ON DELETE CASCADE
) ENGINE=INNODB;

INSERT INTO post(activity, creator, creation_time, body) VALUES(7, 17, '2021-06-10', 'GdCpzIFIMGzffMzqoPCRdPBNkNPwXn');
INSERT INTO post(activity, creator, creation_time, body) VALUES(18, 4, '2020-12-26', 'VUHpDXPsSCUoORNBlHcdQnOfVPVveb');
INSERT INTO post(activity, creator, creation_time, body) VALUES(18, 6, '2021-05-18', 'AHzCLzVqoJcdzjutNWHrptiiejXrVG');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 11, '2020-09-17', 'YfhIbmtRntBuxzwMasJfyblSlRoZNV');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 11, '2021-11-10', 'ozwfWoZdBTFxEgCHRdkXScDXfvAKSL');
INSERT INTO post(activity, creator, creation_time, body) VALUES(2, 5, '2020-03-17', 'hFczfzOxUZuWhBUYciyLgQlFRvxAZq');
INSERT INTO post(activity, creator, creation_time, body) VALUES(19, 7, '2022-09-14', 'IooMwAWwOEKEJVOWnPAsweSepSeSzy');
INSERT INTO post(activity, creator, creation_time, body) VALUES(20, 6, '2022-08-01', 'QDsSudnlirRmDSgFZegebemhvvPwFx');
INSERT INTO post(activity, creator, creation_time, body) VALUES(8, 17, '2020-02-17', 'DbeydlMnx hkdUeFOvvpJ CYYEuHZH');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 10, '2022-04-18', 'iRBPsacgxcyIcVXAPfJvlsjtipkyqv');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 7, '2021-12-01', 'GputoAdmFqZPsjCtDemOnCweslJVyT');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 7, '2020-06-16', 'wpH RHiXpwpNkLGvoTgKCbjdecXkTL');
INSERT INTO post(activity, creator, creation_time, body) VALUES(18, 20, '2021-01-16', 'NEXoirWqCNZwB bWWXpXiB IzWOIoJ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 2, '2022-08-17', 'CFrbWWbCO ofERecgMUUGDikvdvyuU');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 14, '2022-09-29', 'UgZUEwJccrSFTllSZXbQoepHWL AAp');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 20, '2020-04-09', 'vaZDCAfJLOMXDFsExPnviGFcqiUpql');
INSERT INTO post(activity, creator, creation_time, body) VALUES(10, 9, '2021-06-12', 'AfF pzILwC UQZXfVktDeZtXuFBtGA');
INSERT INTO post(activity, creator, creation_time, body) VALUES(2, 16, '2020-02-28', 'ytoW pbtibaTIAQLtTqyTTbbpGVZgn');
INSERT INTO post(activity, creator, creation_time, body) VALUES(1, 13, '2021-12-06', 'jPMooBtpXWxTZcSdJQRzKiGLRlOWwk');
INSERT INTO post(activity, creator, creation_time, body) VALUES(4, 15, '2022-03-03', 'xxaZcEDcOxRAqbSLIKeaQIACIiAdIx');
DROP TABLE IF EXISTS friendship;

CREATE TABLE IF NOT EXISTS friendship (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_first INT,
    user_second INT,
    FOREIGN KEY (user_first)
        REFERENCES user(id)
            ON UPDATE CASCADE
            ON DELETE CASCADE,
    FOREIGN KEY (user_second)
        REFERENCES user(id)
            ON UPDATE CASCADE
            ON DELETE CASCADE
) ENGINE=INNODB;

INSERT INTO friendship(user_first, user_second) VALUES(16, 11);
INSERT INTO friendship(user_first, user_second) VALUES(18, 8);
INSERT INTO friendship(user_first, user_second) VALUES(2, 19);
INSERT INTO friendship(user_first, user_second) VALUES(3, 14);
INSERT INTO friendship(user_first, user_second) VALUES(18, 10);
INSERT INTO friendship(user_first, user_second) VALUES(3, 19);
INSERT INTO friendship(user_first, user_second) VALUES(19, 20);
INSERT INTO friendship(user_first, user_second) VALUES(14, 12);
INSERT INTO friendship(user_first, user_second) VALUES(20, 12);
INSERT INTO friendship(user_first, user_second) VALUES(12, 14);
INSERT INTO friendship(user_first, user_second) VALUES(2, 13);
INSERT INTO friendship(user_first, user_second) VALUES(20, 6);
INSERT INTO friendship(user_first, user_second) VALUES(10, 1);
INSERT INTO friendship(user_first, user_second) VALUES(5, 9);
INSERT INTO friendship(user_first, user_second) VALUES(15, 9);
INSERT INTO friendship(user_first, user_second) VALUES(2, 19);
INSERT INTO friendship(user_first, user_second) VALUES(1, 4);
INSERT INTO friendship(user_first, user_second) VALUES(17, 15);
INSERT INTO friendship(user_first, user_second) VALUES(3, 6);
INSERT INTO friendship(user_first, user_second) VALUES(2, 20);
DROP TABLE IF EXISTS participation;

CREATE TABLE IF NOT EXISTS participation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user INT,
    activity INT,
    join_date DATE,
    FOREIGN KEY (user)
        REFERENCES user(id)
            ON UPDATE CASCADE
            ON DELETE CASCADE,
    FOREIGN KEY (activity)
        REFERENCES activity(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    UNIQUE(user, activity)
) ENGINE=INNODB;

INSERT INTO participation(user, activity) VALUES(12, 20);
INSERT INTO participation(user, activity) VALUES(3, 2);
INSERT INTO participation(user, activity) VALUES(9, 1);
INSERT INTO participation(user, activity) VALUES(10, 3);
INSERT INTO participation(user, activity) VALUES(6, 6);
INSERT INTO participation(user, activity) VALUES(5, 6);
INSERT INTO participation(user, activity) VALUES(12, 8);
INSERT INTO participation(user, activity) VALUES(8, 3);
INSERT INTO participation(user, activity) VALUES(15, 4);
INSERT INTO participation(user, activity) VALUES(13, 9);
INSERT INTO participation(user, activity) VALUES(10, 8);
INSERT INTO participation(user, activity) VALUES(14, 17);
INSERT INTO participation(user, activity) VALUES(16, 12);
INSERT INTO participation(user, activity) VALUES(16, 10);
INSERT INTO participation(user, activity) VALUES(5, 12);
INSERT INTO participation(user, activity) VALUES(8, 7);
INSERT INTO participation(user, activity) VALUES(20, 17);
INSERT INTO participation(user, activity) VALUES(20, 20);
INSERT INTO participation(user, activity) VALUES(16, 4);
INSERT INTO participation(user, activity) VALUES(1, 4);
DROP TABLE IF EXISTS comment;

CREATE TABLE IF NOT EXISTS comment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    creation_time DATE,
    creator INT,
    post INT,
    body TEXT,
    FOREIGN KEY (creator)
        REFERENCES user(id)
            ON UPDATE CASCADE
            ON DELETE CASCADE,
    FOREIGN KEY (post)
        REFERENCES post(id)
            ON UPDATE CASCADE
            ON DELETE CASCADE
) ENGINE=INNODB;

INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-07-05', 11, 14, 'SvASAxWxmdEyuyJvJvrOdsIcMCdFDs');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-09-04', 4, 1, 'vIvDdcwUQYitDpiaDnFFtiaQiAxGub');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-12-30', 20, 3, 'CyqCtTtjjvAYAmhzMytrafqUKlaVuO');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-03-09', 19, 15, 'zrqHXLbKfUpuQlSvhpWZTVQABxX AE');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-11-20', 20, 10, 'kkDTibiXMiZqwwxmHzhdtVzvDiqGfw');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-01-21', 6, 1, 'LDerVVErzIDpYzsTfw GJNmQUIkBD ');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-05-29', 18, 16, 'wZobZpEuTJZdLWtgyMrfjZphYbrhOV');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-10-10', 11, 2, 'tyAVIi MgivHaxCQnNIxCGUEqDKJVz');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-04-20', 10, 14, 'VXYiLbDppAgHLuOogyrLOxehMcdGkB');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-09-17', 11, 10, 'CIQwvCHFskYgsNxCjufxoPDkiyANPD');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-12-12', 9, 18, 'BnOKZnNDR GWajQqhQgNhBGgvAibYE');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-04-30', 12, 14, 'HN aG jbukyXldVMCDLqIJwhFSUzth');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-05-25', 10, 20, 'YGmAdetVOGItXXPFAJqRcfNZSelHRo');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-09-10', 10, 14, 'XUbQjMGHXABDIxmpJmoMTvDVlbBLfH');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-05-16', 17, 19, 'fReYfnvjiXhtKBVPZcmhbWRqkbvnrP');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-08-19', 15, 16, 'CZRuDrYokNGBvbRJfuLLTPtYVTKVuf');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-01-17', 8, 20, 'QvyuFEcrFzoTnhNWKdDsQcUSP uEip');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-05-14', 2, 4, 'NBybkDL XppsZcLMtZuyISHVkIWpJv');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-01-11', 3, 15, ' ToKOiHokQhHpqdkEluZhZOtfyuGdJ');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-02-24', 10, 6, 'SULJOwO UBwgVk fNLAHXNwYUXfLIl');