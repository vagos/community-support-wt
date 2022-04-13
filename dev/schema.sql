DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT ''
) ENGINE=INNODB;

INSERT INTO user(name) VALUES('Ioanna Goomba');
INSERT INTO user(name) VALUES('Anna Kolombia');
INSERT INTO user(name) VALUES('Konstantina Triangle');
INSERT INTO user(name) VALUES('Ioanna Triangle');
INSERT INTO user(name) VALUES('John Troopa');
INSERT INTO user(name) VALUES('Panagiotis Troopa');
INSERT INTO user(name) VALUES('Dabber Koopa');
INSERT INTO user(name) VALUES('Vagos Looper');
INSERT INTO user(name) VALUES('Dabber Looper');
INSERT INTO user(name) VALUES('Apostolis Johnas');
INSERT INTO user(name) VALUES('Dabber Pokahontas');
INSERT INTO user(name) VALUES('Ioanna Zuza');
INSERT INTO user(name) VALUES('Artemis Goomba');
INSERT INTO user(name) VALUES('Mario Looper');
INSERT INTO user(name) VALUES('Konstantina Zuza');
INSERT INTO user(name) VALUES('Konstantina Zuza');
INSERT INTO user(name) VALUES('Apostolis Zuza');
INSERT INTO user(name) VALUES('Panagiotis Pokahontas');
INSERT INTO user(name) VALUES('Konstantina Zelda');
INSERT INTO user(name) VALUES('Anna Johnas');
DROP TABLE IF EXISTS activity;

CREATE TABLE IF NOT EXISTS activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    description VARCHAR(255) DEFAULT ''
) ENGINE=INNODB;

INSERT INTO activity(name, description) VALUES('Select Drinking', 'wkF QKlVqMSqobJwogjxJzETZgbhpF');
INSERT INTO activity(name, description) VALUES('Cooking Shops', 'HuEVTQBVsHzc Dpkzsicwj SLgIZwB');
INSERT INTO activity(name, description) VALUES('Collect Eating', 'yefQOvbhQwJAvSc vyWprJUBseTtKg');
INSERT INTO activity(name, description) VALUES('Mountain Swimming', 'RkduvBKpJnrrmqkjdwzzPJKVHisvBp');
INSERT INTO activity(name, description) VALUES('Organise Running', 'MclBYgH GYZvUmCkljumgfiJVrtyhq');
INSERT INTO activity(name, description) VALUES('Create Shops', 'kNyXb UboXEJZvafhQeIRXrTDBiYvF');
INSERT INTO activity(name, description) VALUES('Pickup Drinking', 'aTaPcVXmHYsVxytowjaXXdilXdrPpu');
INSERT INTO activity(name, description) VALUES('Mountain Shops', 'DdKPPfdkEkGddSoATdGkgVTkFPxUrT');
INSERT INTO activity(name, description) VALUES('Mountain Eating', 'MJOtvWmpHyZOqIoBbfNkerGSwDJQHr');
INSERT INTO activity(name, description) VALUES('Pickup Paintings', 'gWiMoUT xiCsXUKOwIAaZmGmOQpVkV');
INSERT INTO activity(name, description) VALUES('Organise Drinking', 'JBIZZXvgtkomOypaGIXNspUSnYvVvQ');
INSERT INTO activity(name, description) VALUES('Remove Paintings', 'XmSoToANXjVyMJZZFiwZkd yEJyakg');
INSERT INTO activity(name, description) VALUES('Prepare Climbing', 'Gd AVnccqRHuopNoHOmhAdwLXsGCQD');
INSERT INTO activity(name, description) VALUES('Organise Eating', 'tioqAjFKNKTRuLiRdqNV OgNWYqQlD');
INSERT INTO activity(name, description) VALUES('Mountain Swimming', 'aRiNS wENHIpncXMFBEkYkQgzpXLIs');
INSERT INTO activity(name, description) VALUES('Cooking Running', 'umSPqknjTs YDvFmXfrfQsTJlZqOHq');
INSERT INTO activity(name, description) VALUES('Pickup Paintings', 'wPEDNyjbmnoWEORPlSyrnBRjSNgeWm');
INSERT INTO activity(name, description) VALUES('Find Drinking', 'NLDpKmOslotEdywkadferxkmTwmHLG');
INSERT INTO activity(name, description) VALUES('Cooking Paintings', 'xbkh vLhJZWIiTGPnBylKlhwazdCWA');
INSERT INTO activity(name, description) VALUES('Create Food', 'BABWrOAgECPTzZgwRSjlJNpJZaRkGt');
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

INSERT INTO post(activity, creator, creation_time, body) VALUES(14, 12, '2022-08-26', 'OeINhOJrKWXdEmWZvHrPupsVvq trP');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 13, '2020-06-11', 'QvUbPAwQvCB kcOgkraZZvnEEIv ni');
INSERT INTO post(activity, creator, creation_time, body) VALUES(16, 12, '2021-01-09', 'amthpZnjDXwWC xiUPkKNhNiOARjjM');
INSERT INTO post(activity, creator, creation_time, body) VALUES(13, 1, '2020-11-27', 'lyilQKIfznGKDqReQiyoreepHYFBsj');
INSERT INTO post(activity, creator, creation_time, body) VALUES(10, 16, '2021-04-06', 'tqjsUiJkIcjWSHiXkJNBa UqHgYObz');
INSERT INTO post(activity, creator, creation_time, body) VALUES(10, 8, '2021-06-26', 'OQkAPudPNabJhbNFAoegdApEQbDSWD');
INSERT INTO post(activity, creator, creation_time, body) VALUES(4, 4, '2020-06-05', 'WYnvTpNZKgvRmEFVqxKPdpAYMkdRrD');
INSERT INTO post(activity, creator, creation_time, body) VALUES(7, 5, '2022-05-13', 'lcqnwKgPsOQnGfQLoNIoNblubxEpKu');
INSERT INTO post(activity, creator, creation_time, body) VALUES(2, 13, '2022-02-08', 'IWyNpuVaYJxGGgjcvPmLzQeQofyNki');
INSERT INTO post(activity, creator, creation_time, body) VALUES(20, 18, '2021-12-22', 'JaQ qgrKqiLOzQAWJrFbAMYoc KeGe');
INSERT INTO post(activity, creator, creation_time, body) VALUES(11, 3, '2022-09-17', 'XPLDbXgkuACNceKYhUUPsX lRbwCeF');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 8, '2020-03-02', 'scGVcvgbWzVqRDgMvLhUqRrPSJIZFZ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(15, 4, '2022-03-27', 'MWDcUAaoO CHNvItG mQgLEroJvGvR');
INSERT INTO post(activity, creator, creation_time, body) VALUES(8, 11, '2020-08-15', 'hDBXHlTZjSscSshQUJQCRjdbpFNFMb');
INSERT INTO post(activity, creator, creation_time, body) VALUES(8, 9, '2021-12-23', 'yjJbgzHUDJgkhOLDLPkEQNypeqnKTG');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 10, '2021-04-05', 'FfzYZjHEc gOKWiIsPdZutlGRRkarj');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 20, '2021-12-24', 'QoHlRSatNVpQyNijwhURjtRyZtCA O');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 17, '2021-05-16', 'VbBmBzRanXsPrcqnzVfvjIawEqnmVZ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(19, 7, '2022-07-27', 'fQUjYzrIlxvUAUsAhKCHmTqrwfSPiZ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(15, 13, '2021-05-01', 'ZgKJlQdDMBNLRfncGJpqyZgDoeYQaz');
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

INSERT INTO participation(user, activity) VALUES(16, 15);
INSERT INTO participation(user, activity) VALUES(10, 7);
INSERT INTO participation(user, activity) VALUES(4, 4);
INSERT INTO participation(user, activity) VALUES(16, 9);
INSERT INTO participation(user, activity) VALUES(15, 19);
INSERT INTO participation(user, activity) VALUES(17, 4);
INSERT INTO participation(user, activity) VALUES(8, 19);
INSERT INTO participation(user, activity) VALUES(9, 13);
INSERT INTO participation(user, activity) VALUES(2, 3);
INSERT INTO participation(user, activity) VALUES(20, 9);
INSERT INTO participation(user, activity) VALUES(13, 19);
INSERT INTO participation(user, activity) VALUES(10, 14);
INSERT INTO participation(user, activity) VALUES(7, 8);
INSERT INTO participation(user, activity) VALUES(1, 11);
INSERT INTO participation(user, activity) VALUES(2, 9);
INSERT INTO participation(user, activity) VALUES(18, 20);
INSERT INTO participation(user, activity) VALUES(20, 5);
INSERT INTO participation(user, activity) VALUES(15, 13);
INSERT INTO participation(user, activity) VALUES(14, 7);
INSERT INTO participation(user, activity) VALUES(13, 16);
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
