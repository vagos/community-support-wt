DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT ''
) ENGINE=INNODB;

INSERT INTO user(name) VALUES('Anna Pokahontas');
INSERT INTO user(name) VALUES('Artemis Looper');
INSERT INTO user(name) VALUES('Kostas Troopa');
INSERT INTO user(name) VALUES('Dabber Triangle');
INSERT INTO user(name) VALUES('Panagiotis Koopa');
INSERT INTO user(name) VALUES('Mario Goomba');
INSERT INTO user(name) VALUES('Kostas Cramberry');
INSERT INTO user(name) VALUES('Anna Cramberry');
INSERT INTO user(name) VALUES('Panagiotis Pokahontas');
INSERT INTO user(name) VALUES('Ioanna Johnas');
INSERT INTO user(name) VALUES('Vagos Cramberry');
INSERT INTO user(name) VALUES('John Johnas');
INSERT INTO user(name) VALUES('Mario Zelda');
INSERT INTO user(name) VALUES('Ioanna Cramberry');
INSERT INTO user(name) VALUES('Kostas Triangle');
INSERT INTO user(name) VALUES('Mario Triangle');
INSERT INTO user(name) VALUES('John Troopa');
INSERT INTO user(name) VALUES('Ioanna Kolombia');
INSERT INTO user(name) VALUES('Konstantina Pokahontas');
INSERT INTO user(name) VALUES('Maria Troopa');
DROP TABLE IF EXISTS activity;

CREATE TABLE IF NOT EXISTS activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    description TEXT DEFAULT ''
) ENGINE=INNODB;

INSERT INTO activity(name, description) VALUES('Select Posters', 'VEYTteRdndrCpNUwaDyHTOggqUsXFT');
INSERT INTO activity(name, description) VALUES('Collect Running', 'nezDPZktCGYAMyyoPkKeDeONzPtedv');
INSERT INTO activity(name, description) VALUES('Draw Running', 'FVZRYkkOPwQubNsjAiFzARcPRySWPV');
INSERT INTO activity(name, description) VALUES('Collect Drinking', 'ZUKdpmpNCNGowAjzLXGmnQo HWQnzX');
INSERT INTO activity(name, description) VALUES('Draw Climbing', 'SWfFKuPcdpxxRPzUSLmCqfhTDKbooc');
INSERT INTO activity(name, description) VALUES('Find Paintings', 'nhjNmasxGhqmmysmlnhbfFoolTkMFE');
INSERT INTO activity(name, description) VALUES('Collect Paintings', 'FkauYOuaGSLyoJZAmbuYqkpufCpRGz');
INSERT INTO activity(name, description) VALUES('Remove Shops', 'XxyQfkRbzVnjzEcrKBNmhFiCcKPkDi');
INSERT INTO activity(name, description) VALUES('Cooking Swimming', 'AkixJUOSDtDUpDDGUNKwThDWxKgvoz');
INSERT INTO activity(name, description) VALUES('Select Shops', 'RoxCjIsoqNGKdWDRXvvBgdJqzqtRaN');
INSERT INTO activity(name, description) VALUES('Prepare Posters', 'FunjRYcLdqVRpMXTjYXPTiiR qLwCY');
INSERT INTO activity(name, description) VALUES('Organise Shops', 'rbmyaXZAFSoKvTZGgqDEzbwWZvkunz');
INSERT INTO activity(name, description) VALUES('Prepare Paintings', 'OXsjsIjxJxHvVyWVIbKdlXFcBHzjBW');
INSERT INTO activity(name, description) VALUES('Draw Food', 'sqCjTJDRAZIKUthBmrHgnIKrJSgcOS');
INSERT INTO activity(name, description) VALUES('Cooking Swimming', 'FPOssezVCEYBzlzFBXCdyABQvpFgBw');
INSERT INTO activity(name, description) VALUES('Organise Posters', 'ziUfhuclKMgLFjlLSpsZZAcGofCHNE');
INSERT INTO activity(name, description) VALUES('Cooking Eating', 'UAAnDZPUKiTJF lkQ oXrF oijDuwv');
INSERT INTO activity(name, description) VALUES('Fish Eating', 'Iv ZpxBBrKFOkZIBGEiPwGOxpOjrpo');
INSERT INTO activity(name, description) VALUES('Collect Eating', 'vTgDVnXGgXHEqkbncGvAzWHNnQUqqb');
INSERT INTO activity(name, description) VALUES('Pickup Swimming', 'GdtUVVXxBIHbrDIRdiux lCnmieSzH');
DROP TABLE IF EXISTS post;

CREATE TABLE IF NOT EXISTS post (
    id INT AUTO_INCREMENT PRIMARY KEY,
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

INSERT INTO post(activity, creator, creation_time, body) VALUES(1, 3, '2022-03-17', 'uZseBhYFZM zgBAuGI RzpZJA MMix');
INSERT INTO post(activity, creator, creation_time, body) VALUES(8, 12, '2021-04-01', 'fUlayGzyUdacXjLKYpGdnbqUoYPfrP');
INSERT INTO post(activity, creator, creation_time, body) VALUES(13, 1, '2020-07-04', 'CnCerbnTxvbVfcKuxoZgjOyCpDhYdm');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 16, '2021-04-09', 'PtlcBVabZenHZy Ap UZwtQQAwSObs');
INSERT INTO post(activity, creator, creation_time, body) VALUES(16, 9, '2022-10-08', 'nvZsBOAbwIbgJPdsZKgWncCYKBPgyC');
INSERT INTO post(activity, creator, creation_time, body) VALUES(2, 12, '2021-11-17', 'qSWPTXRpaVfUKSUgLIDcYMGLgYStpC');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 3, '2022-03-04', 'BSSUgfiCjxjJnEbtAfGpRtMSkfAnbO');
INSERT INTO post(activity, creator, creation_time, body) VALUES(5, 16, '2020-04-25', 'VNtbXhvQFCBXhQJlKFCfJmTuyAQcwc');
INSERT INTO post(activity, creator, creation_time, body) VALUES(10, 3, '2020-01-21', 'BtqnNGZ mtvsreohtqmksmkxzdenSu');
INSERT INTO post(activity, creator, creation_time, body) VALUES(15, 19, '2021-02-16', ' pqXVLWWcGBOQkqLDblmhFPUPuQrRJ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(18, 9, '2022-04-01', 'uPSMnMtlJuUdcbUOPzNejsDfgdzOGn');
INSERT INTO post(activity, creator, creation_time, body) VALUES(2, 8, '2021-08-22', 'kDAXgwlwEeWVsqQmqxbFpSpweuM sU');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 13, '2021-05-01', 'uGhTzOnAuGCKRIaXcuwKPzGckdyDCV');
INSERT INTO post(activity, creator, creation_time, body) VALUES(2, 11, '2021-07-18', 'nOiLlUFpRlTbEmfPJKmWDpZVzwqSbN');
INSERT INTO post(activity, creator, creation_time, body) VALUES(10, 8, '2021-03-28', 'LsOcLdhuHmcqKxnAznHJQAmrcsBgEx');
INSERT INTO post(activity, creator, creation_time, body) VALUES(17, 11, '2020-03-07', 'tA wMylBVMaAyqGlexDDEomhVXzEu ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(17, 8, '2022-11-17', 'NQQGsYUitmiDFinWrAnCGyrxbyPAgZ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(13, 17, '2022-10-02', 'cauXvLnTCsmiWwxgmRxaURXXbSiCpa');
INSERT INTO post(activity, creator, creation_time, body) VALUES(5, 8, '2022-02-15', 'bG WJfCVMcxZt xrmClHiMolOZQoRY');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 19, '2022-01-28', 'dIBsrijzjaCMkouLQHKnMdev Bqibj');
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

-- name 'create_friendship' is not defined
DROP TABLE IF EXISTS participation;

CREATE TABLE IF NOT EXISTS participation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user INT,
    activity INT,
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

INSERT INTO participation(user, activity) VALUES(19, 5);
INSERT INTO participation(user, activity) VALUES(2, 18);
INSERT INTO participation(user, activity) VALUES(2, 17);
INSERT INTO participation(user, activity) VALUES(11, 5);
INSERT INTO participation(user, activity) VALUES(18, 4);
INSERT INTO participation(user, activity) VALUES(20, 15);
INSERT INTO participation(user, activity) VALUES(18, 8);
INSERT INTO participation(user, activity) VALUES(3, 15);
INSERT INTO participation(user, activity) VALUES(7, 17);
INSERT INTO participation(user, activity) VALUES(7, 14);
INSERT INTO participation(user, activity) VALUES(12, 14);
INSERT INTO participation(user, activity) VALUES(9, 5);
INSERT INTO participation(user, activity) VALUES(9, 12);
INSERT INTO participation(user, activity) VALUES(11, 2);
INSERT INTO participation(user, activity) VALUES(11, 18);
INSERT INTO participation(user, activity) VALUES(14, 2);
INSERT INTO participation(user, activity) VALUES(12, 3);
INSERT INTO participation(user, activity) VALUES(18, 8);
INSERT INTO participation(user, activity) VALUES(17, 12);
INSERT INTO participation(user, activity) VALUES(5, 3);
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

-- name 'create_comment' is not defined
