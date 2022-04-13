DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT ''
) ENGINE=INNODB;

INSERT INTO user(name) VALUES('Ioanna Cramberry');
INSERT INTO user(name) VALUES('Vagos Triangle');  
INSERT INTO user(name) VALUES('Konstantina Pokahontas');
INSERT INTO user(name) VALUES('Orestis Kolombia');
INSERT INTO user(name) VALUES('Panagiotis Looper');
INSERT INTO user(name) VALUES('Panagiotis Kolombia');
INSERT INTO user(name) VALUES('Orestis Goomba');
INSERT INTO user(name) VALUES('Apostolis Troopa');
INSERT INTO user(name) VALUES('Apostolis Kolombia');
INSERT INTO user(name) VALUES('Ioanna Cramberry');
INSERT INTO user(name) VALUES('Orestis Kolombia');
INSERT INTO user(name) VALUES('John Zuza');
INSERT INTO user(name) VALUES('Maria Pokahontas');
INSERT INTO user(name) VALUES('Orestis Zelda');
INSERT INTO user(name) VALUES('Vagos Zelda');
INSERT INTO user(name) VALUES('Vagos Kolombia');
INSERT INTO user(name) VALUES('Orestis Triangle');
INSERT INTO user(name) VALUES('Orestis Johnas');
INSERT INTO user(name) VALUES('Kostas Looper');
INSERT INTO user(name) VALUES('Kostas Zelda');
DROP TABLE IF EXISTS activity;

CREATE TABLE IF NOT EXISTS activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    description TEXT DEFAULT ''
) ENGINE=INNODB;

INSERT INTO activity(name, description) VALUES('Collect Running', 'xedSqMsiNDlUSRkYYUeOuOAlunHBsF');
INSERT INTO activity(name, description) VALUES('Select Swimming', 'qxSQgRCmiZFxIGYnNPkyLNzRzTBU L');
INSERT INTO activity(name, description) VALUES('Cooking Climbing', 'MKjiljsHvViMcittbEuLOTCEjmybPg');
INSERT INTO activity(name, description) VALUES('Fish Food', 'zRjmvrOuTNjkBMCkMCF PQSHINpIWZ');
INSERT INTO activity(name, description) VALUES('Cooking Swimming', 'WNcjvQhQtIyLG baZzDvMMRNCrovVX');
INSERT INTO activity(name, description) VALUES('Mountain Posters', 's SLimRlcLRvkq  sbzJGzvgXJKplX');
INSERT INTO activity(name, description) VALUES('Prepare Eating', ' UDExCxjpCmWdFncOkZuCZOMw BEKZ');
INSERT INTO activity(name, description) VALUES('Mountain Eating', 'VbcPICFINCZTsuidiQbCwjsXMirkAz');
INSERT INTO activity(name, description) VALUES('Cooking Posters', 'zRozzJxGrQVfqeDFPv jDengHCqRuY');
INSERT INTO activity(name, description) VALUES('Prepare Running', 'kXEhHEyZCYgaepPopeadbqHgxqClgk');
INSERT INTO activity(name, description) VALUES('Prepare Food', 'zLMPKetBNcYsHRMbvaVhZ TINWvZJK');
INSERT INTO activity(name, description) VALUES('Pickup Swimming', 'KudcBMyXBifgMGtYCSaGFvnRlCzEYq');
INSERT INTO activity(name, description) VALUES('Mountain Swimming', 'R bLsqfAHsgNCJUvspvGJwCTrYmvEW');
INSERT INTO activity(name, description) VALUES('Collect Eating', 'wBrQuxTNtVuynAXHTYHxKJxVXsCzmP');
INSERT INTO activity(name, description) VALUES('Cooking Food', 'qJQBpLfYkqSMBWPaubqDySclmjNTiV');
INSERT INTO activity(name, description) VALUES('Fish Running', 'eNFqZXAUiSaZY YdouwUT WShgBRDp');
INSERT INTO activity(name, description) VALUES('Prepare Shops', 'NDtIzmgTWaAeOh CNNVOhlMbtQezzq');
INSERT INTO activity(name, description) VALUES('Cooking Running', 'CRrlGvOPqNpipzhTgdfSRbwTBmWCOC');
INSERT INTO activity(name, description) VALUES('Fish Food', 'sWJEowftTfm wZzbmTcrAYTBtrlcET');
INSERT INTO activity(name, description) VALUES('Fish Running', 'RAeLxyJfmBZXeQPzE HAHUuhgqJdst');
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

INSERT INTO post(activity, creator, creation_time, body) VALUES(2, 20, '2022-10-02', 'NRyKEjJqbacBHIPRDKsKUhECYueCAg');
INSERT INTO post(activity, creator, creation_time, body) VALUES(11, 16, '2022-03-30', 'jOxoJSIkCAVFVYCwbSHNsHSVedZYrQ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 9, '2022-05-11', 'skkZFdDDtdVHLCwhVOABxaPTcKQauB');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 13, '2020-04-01', 'yRsOWAxOjOCJGkSc zOKhWsaJEijYR');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 13, '2021-10-14', 'CglmSCLZzEpOSAgZLgUJXYtUabemfH');
INSERT INTO post(activity, creator, creation_time, body) VALUES(13, 4, '2022-05-04', 'xpsCJaJohJZnbeOFUmFxbFftOmZPYr');
INSERT INTO post(activity, creator, creation_time, body) VALUES(7, 6, '2021-02-16', 'ypWoJnqUEXiIIvROWeDHlsosxsU mg');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 4, '2020-02-14', 'egPtJtEY LixkZFqFTbZbPOmrxHRPv');
INSERT INTO post(activity, creator, creation_time, body) VALUES(19, 6, '2022-04-28', 'sKgOfSfrXHLtTVPQdVyBrOsDzfSaKv');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 17, '2021-07-30', 'LIBdEYgztrdgkyvaHeadnFPueQShiv');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 15, '2021-05-28', 'pMZnTCrxzJgWZaVjksoIIFjLHYbifB');
INSERT INTO post(activity, creator, creation_time, body) VALUES(15, 17, '2020-10-08', 'TBacPbhahGRpDXNyWCKfJryUNXVqnL');
INSERT INTO post(activity, creator, creation_time, body) VALUES(19, 5, '2021-05-13', 'NPyPDtKjVIDmmDPWIEhwonakKMgOcp');
INSERT INTO post(activity, creator, creation_time, body) VALUES(20, 16, '2022-01-17', 'XckIzXwtVhKohivsnEgqnYoAyTNppb');
INSERT INTO post(activity, creator, creation_time, body) VALUES(5, 15, '2022-01-11', 'zvxIqoItJlZeno WGzxQHIwbid aeJ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(18, 3, '2021-10-17', 'LvXublYgEsKYEFKFTtzHKBRlpNLawz');
INSERT INTO post(activity, creator, creation_time, body) VALUES(19, 8, '2021-03-04', 'aMPtThpjwYvqBqNYfJ issUoRtWDcL');
INSERT INTO post(activity, creator, creation_time, body) VALUES(19, 6, '2021-06-01', 'UKCkqcOaXwZDXuQHuDqdTleCVDYsSL');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 7, '2020-07-09', 'CGewKaGahyWRDnrsPKVOfDWUyzXCcl');
INSERT INTO post(activity, creator, creation_time, body) VALUES(15, 3, '2022-03-21', 'GrmIuOMjymWufhWHqAEeeWTYvQhWUl');
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

INSERT INTO participation(user, activity) VALUES(7, 13);
INSERT INTO participation(user, activity) VALUES(15, 12);
INSERT INTO participation(user, activity) VALUES(10, 5);
INSERT INTO participation(user, activity) VALUES(11, 9);
INSERT INTO participation(user, activity) VALUES(9, 5);
INSERT INTO participation(user, activity) VALUES(19, 12);
INSERT INTO participation(user, activity) VALUES(8, 8);
INSERT INTO participation(user, activity) VALUES(6, 9);
INSERT INTO participation(user, activity) VALUES(17, 2);
INSERT INTO participation(user, activity) VALUES(6, 17);
INSERT INTO participation(user, activity) VALUES(9, 17);
INSERT INTO participation(user, activity) VALUES(17, 18);
INSERT INTO participation(user, activity) VALUES(3, 11);
INSERT INTO participation(user, activity) VALUES(3, 17);
INSERT INTO participation(user, activity) VALUES(17, 14);
INSERT INTO participation(user, activity) VALUES(17, 11);
INSERT INTO participation(user, activity) VALUES(2, 15);
INSERT INTO participation(user, activity) VALUES(18, 11);
INSERT INTO participation(user, activity) VALUES(2, 14);
INSERT INTO participation(user, activity) VALUES(16, 4);
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

INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-02-21', 10, 11, 'kPYMFLUTqhpyqBLzvomHOFNHgRnpyz');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-08-03', 12, 6, 'KoDvOeoQAzxjijdHUsVnlfIVvycksk');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-05-20', 19, 19, 'awzGTpEdgkaRsEmFvBygsXIRogqIay');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-06-29', 16, 6, 'MBxxsJRjwlphVAsxQZfWVMqmYRpmQp');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-10-07', 10, 11, 'JUOelzceanXmYTWUSjFCRxApenxLdu');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-03-11', 20, 19, 'VzEaiieNRsnMdoxpQGcmCUZnZulpKX');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-09-12', 13, 20, 'SVZiwAlgvattkRuqcVzFjKMgLvDc z');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-09-18', 17, 10, 'qymvnFNnvStamHPgPbxLQmTNTblsqT');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-05-04', 18, 20, 'ZPzFIGDSXKIQPRRUQtdzArIMuXcZbG');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-12-06', 4, 7, 'ZRjrcDibzRAiIZmHTRBRHIyqLevLEi');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-06-30', 7, 14, 'vgkugfsHJvZIt SOxnx atcRewPTwK');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-05-26', 2, 13, 'pUUY tYx nlFCHocQNVyQCdJPKCaKU');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-11-09', 5, 17, 'HgaTwVCaxZzkTduGCjWaKsMRLZcQdX');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-02-23', 12, 3, 'FYyOxvzjgrKTNlXTUpwTFHoYXWSnOB');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-03-18', 1, 5, 'XeJbASOULpbAzNgtWYGwCJEiLLmeFE');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-03-27', 18, 18, 'ZUCGhEkAKCSrHFC DsRNkufLwtYvXw');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-05-28', 11, 4, 'StjELnnexzmRmFCjWATMrqcpTuuUbL');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-09-06', 8, 7, 'OohnWPhxLANKempluqGjDgxre bzAm');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-02-03', 12, 15, 'pLOGhWUBcGRmJTVavhjzP OfhhnBbW');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-03-19', 2, 9, 'hdsAWJD ONKCHbFYcocNeLqFDqEJgf');