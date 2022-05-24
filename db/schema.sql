DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT '',
    bio TEXT ,
    join_date DATE,
    hashed_password BINARY(32),
    salt BINARY(16)
) ENGINE=INNODB;

DROP TABLE IF EXISTS activity;

CREATE TABLE IF NOT EXISTS activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    description VARCHAR(255) DEFAULT ''
) ENGINE=INNODB;

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

DROP TABLE IF EXISTS comment;

CREATE TABLE IF NOT EXISTS comment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    creation_time DATE,
    creator INT,
    post INT,
    replies_to INT DEFAULT NULL,
    body TEXT,
    FOREIGN KEY (creator)
        REFERENCES user(id)
            ON UPDATE CASCADE
            ON DELETE CASCADE,
    FOREIGN KEY (post)
        REFERENCES post(id)
            ON UPDATE CASCADE
            ON DELETE CASCADE,
    CONSTRAINT fk_replies_to
        FOREIGN KEY (replies_to)
            REFERENCES comment(id)
                ON UPDATE CASCADE
) ENGINE=INNODB;

INSERT INTO user(name) VALUES('Dabber Pokahontas');
INSERT INTO user(name) VALUES('Anna Pokahontas');
INSERT INTO user(name) VALUES('John Koopa');
INSERT INTO user(name) VALUES('Konstantina Looper');
INSERT INTO user(name) VALUES('Mario Troopa');
INSERT INTO user(name) VALUES('John Cramberry');
INSERT INTO user(name) VALUES('Anna Troopa');
INSERT INTO user(name) VALUES('Konstantina Troopa');
INSERT INTO user(name) VALUES('Panagiotis Goomba');
INSERT INTO user(name) VALUES('Kostas Zuza');
INSERT INTO user(name) VALUES('Kostas Sigma');
INSERT INTO user(name) VALUES('Orestis Sigma');
INSERT INTO user(name) VALUES('Kostas Pokahontas');
INSERT INTO user(name) VALUES('Panagiotis Cramberry');
INSERT INTO user(name) VALUES('Vagos Zelda');
INSERT INTO user(name) VALUES('Mario Troopa');
INSERT INTO user(name) VALUES('Anna Looper');
INSERT INTO user(name) VALUES('Maria Cramberry');
INSERT INTO user(name) VALUES('Artemis Sigma');
INSERT INTO user(name) VALUES('Maria Looper');
INSERT INTO activity(name, description) VALUES('Remove Drinking', 'GIkipKXYbFscRmrRXlkPjgmLZcuTqr');
INSERT INTO activity(name, description) VALUES('Create Food', 'XiKpKHMHBmTMzGvfFUAfCwEHDWPrQA');
INSERT INTO activity(name, description) VALUES('Mountain Running', 'GfBatzgbaGgAtIsXocLXvqDzBmKUbB');
INSERT INTO activity(name, description) VALUES('Draw Drinking', 'jRSGXAldRsWnQtiBubtmaWFAyqzVyf');
INSERT INTO activity(name, description) VALUES('Collect Shops', 'gwJqsScufLizjkqvUyziMiEScthSfx');
INSERT INTO activity(name, description) VALUES('Cooking Swimming', 'xrqmGsRxRTRSAShdlMZmMnTNADbjCx');
INSERT INTO activity(name, description) VALUES('Draw Eating', 'CtGRLPoszQjjUphtkdWGsGRGiAORwe');
INSERT INTO activity(name, description) VALUES('Cooking Shops', 'qSpROVjcuvviFjQoaluZmgcgcUIeht');
INSERT INTO activity(name, description) VALUES('Select Paintings', 'dddGacUkZnnuZTrklEKgHsMUOnhSPu');
INSERT INTO activity(name, description) VALUES('Remove Running', 'vwOrAKzXurIbxovyMcBwLhkrigyQyY');
INSERT INTO activity(name, description) VALUES('Organise Posters', 'EdqipAIaLeSIQrzWYWmWHFhpmTEzud');
INSERT INTO activity(name, description) VALUES('Create Posters', 'NV Gjdcby TDtnqxsljFHSSSDtvMpK');
INSERT INTO activity(name, description) VALUES('Mountain Swimming', 'VMqcovDGLTTeBmBNuqFvZXHROjZwmc');
INSERT INTO activity(name, description) VALUES('Collect Eating', 'wXNwMacPZyZoWjQNQxhOGoKthfOQLb');
INSERT INTO activity(name, description) VALUES('Cooking Posters', 'bfLZHTsoOdFfdTuKoUoZwssVmaVdqa');
INSERT INTO activity(name, description) VALUES('Find Food', 'CJSoXkCKFDcvCwQSXtvGqduTGCHIJs');
INSERT INTO activity(name, description) VALUES('Mountain Swimming', 'GSucfKNMdyfszshVbjPpJMthwqquEq');
INSERT INTO activity(name, description) VALUES('Draw Eating', 'jFpkMQscndNLyiqodRVmVomBnkIaNe');
INSERT INTO activity(name, description) VALUES('Organise Food', 'ZEehYyvHvPlTKuykrOfiwtrgTVbcFK');
INSERT INTO activity(name, description) VALUES('Fish Paintings', 'QtGachFfCjdSGmdZgjiDiFfnTgVEMT');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 3, '2021-10-11', 'guwoRYsxkRUCYyTYLQfMnBlqFUHdyX');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 17, '2020-11-01', 'YqgFo RsvJkdPXsoTKNiTkqCXPMSaO');
INSERT INTO post(activity, creator, creation_time, body) VALUES(5, 18, '2021-10-09', 'NemsOx jplLbSAFqj BSXDyveApQap');
INSERT INTO post(activity, creator, creation_time, body) VALUES(5, 15, '2021-05-08', 'oPlYlGcAKrtOlrhCpRbeJXNuGMwrbL');
INSERT INTO post(activity, creator, creation_time, body) VALUES(8, 5, '2020-12-13', 'arqIyvVYUKQkJIqNgIWlrnbmynOsHY');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 3, '2021-12-19', 'RKPGDBdzMOxsekkECGylsXFLbqDmzb');
INSERT INTO post(activity, creator, creation_time, body) VALUES(17, 17, '2021-06-12', 'lRWbSQxLWntdKjHwOucNFljqS toxB');
INSERT INTO post(activity, creator, creation_time, body) VALUES(15, 8, '2022-11-02', 'Zjlgj DVGzNtwXnJtDrkyq nx cwwG');
INSERT INTO post(activity, creator, creation_time, body) VALUES(17, 18, '2020-03-09', 'bbFZZCEVuQO OVGNqBIpYFaHTqNWZY');
INSERT INTO post(activity, creator, creation_time, body) VALUES(19, 8, '2021-11-16', 'CNpLcUAymBhJxihklDCcoJuanEbgPP');
INSERT INTO post(activity, creator, creation_time, body) VALUES(4, 20, '2021-03-27', 'Blr zsmxXNrIBgHGnotxfltgaIRSvZ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 20, '2021-03-21', 'FRMSsUHS zwMmb lVAnjOLqgOgKJbn');
INSERT INTO post(activity, creator, creation_time, body) VALUES(1, 3, '2021-10-15', 'ViqblAJOFGCzbuiZjsgHYqWhZoUQMy');
INSERT INTO post(activity, creator, creation_time, body) VALUES(1, 2, '2022-10-24', 'MktLCtyZniEg WEZLKYrSX FEcuTuX');
INSERT INTO post(activity, creator, creation_time, body) VALUES(14, 18, '2022-06-20', 'knhpqxssEEicmcbyyoNMMsoFXkVTDV');
INSERT INTO post(activity, creator, creation_time, body) VALUES(13, 12, '2020-06-17', 'eCGPfWKjKiTjfL JkpfbsNHiszemCY');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 13, '2022-05-13', 'VafNXXujPXFPzEypcACadQAQzqHItv');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 5, '2022-05-24', 'ExlYlCHjJQtgJdtXKwnrQClFytWXNT');
INSERT INTO post(activity, creator, creation_time, body) VALUES(14, 5, '2021-03-30', 'safJkBSaemxDYybCOk dPVIeJBuR Z');
INSERT INTO post(activity, creator, creation_time, body) VALUES(13, 4, '2022-09-15', 'gwJFKejehI BZmLtgegpS urLMlBFE');
INSERT INTO friendship(user_first, user_second) VALUES(20, 7);
INSERT INTO friendship(user_first, user_second) VALUES(17, 15);
INSERT INTO friendship(user_first, user_second) VALUES(10, 18);
INSERT INTO friendship(user_first, user_second) VALUES(14, 4);
INSERT INTO friendship(user_first, user_second) VALUES(6, 14);
INSERT INTO friendship(user_first, user_second) VALUES(7, 12);
INSERT INTO friendship(user_first, user_second) VALUES(20, 8);
INSERT INTO friendship(user_first, user_second) VALUES(14, 1);
INSERT INTO friendship(user_first, user_second) VALUES(9, 10);
INSERT INTO friendship(user_first, user_second) VALUES(16, 17);
INSERT INTO friendship(user_first, user_second) VALUES(10, 18);
INSERT INTO friendship(user_first, user_second) VALUES(1, 12);
INSERT INTO friendship(user_first, user_second) VALUES(19, 15);
INSERT INTO friendship(user_first, user_second) VALUES(20, 15);
INSERT INTO friendship(user_first, user_second) VALUES(14, 9);
INSERT INTO friendship(user_first, user_second) VALUES(20, 8);
INSERT INTO friendship(user_first, user_second) VALUES(15, 20);
INSERT INTO friendship(user_first, user_second) VALUES(14, 19);
INSERT INTO friendship(user_first, user_second) VALUES(10, 15);
INSERT INTO friendship(user_first, user_second) VALUES(4, 18);
INSERT INTO participation(user, activity) VALUES(12, 17);
INSERT INTO participation(user, activity) VALUES(10, 8);
INSERT INTO participation(user, activity) VALUES(14, 4);
INSERT INTO participation(user, activity) VALUES(9, 16);
INSERT INTO participation(user, activity) VALUES(10, 1);
INSERT INTO participation(user, activity) VALUES(1, 19);
INSERT INTO participation(user, activity) VALUES(10, 18);
INSERT INTO participation(user, activity) VALUES(4, 6);
INSERT INTO participation(user, activity) VALUES(2, 18);
INSERT INTO participation(user, activity) VALUES(8, 12);
INSERT INTO participation(user, activity) VALUES(12, 19);
INSERT INTO participation(user, activity) VALUES(5, 18);
INSERT INTO participation(user, activity) VALUES(16, 7);
INSERT INTO participation(user, activity) VALUES(16, 12);
INSERT INTO participation(user, activity) VALUES(4, 19);
INSERT INTO participation(user, activity) VALUES(2, 11);
INSERT INTO participation(user, activity) VALUES(14, 11);
INSERT INTO participation(user, activity) VALUES(11, 1);
INSERT INTO participation(user, activity) VALUES(10, 11);
INSERT INTO participation(user, activity) VALUES(10, 14);
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-09-17', 20, 15, 'BAVzpU Em ZWmXaEvfFV fbKxjyMpV');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-05-10', 15, 17, 'jTuSPINHbLEWZNqOaXcKaVOvaOjqUK');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-11-10', 2, 11, 'DDQBgCbDRUEqNemowEuUjMheQMEfud');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-06-14', 9, 5, 'rJnaEinlyaxKIAbljfjQvCrLotkLUT');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-02-12', 1, 15, 'MKnlcFYZXeDQhixUvocCjGk AHhbeg');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-10-07', 4, 3, 'dUJAbmRuXaZyjCHuCoutRmHUMfIXTP');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-03-12', 9, 4, 'ZnYlwXwGLqXOgSCltBKwjgl eRqJHB');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-10-23', 15, 1, 'McfxjlyybYoBx dRekSqPZmMaPOEEO');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-05-02', 9, 19, 'LNcowBIoKWnPNIhlRVNjgRqzLvTkbM');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-09-18', 1, 1, 'CcxPULaKpXzWPH ybLQBUYFtgNvYiK');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-03-16', 10, 19, 'QiuJngjTfPklttbVdFKIvposwfdSGj');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-08-22', 16, 4, 'otZqexSQZxKjMPWfHpHfksglhvYDax');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-12-17', 16, 7, 'EaqTJJFcoIFvhKPGxBhidiEzfVFfgk');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-02-05', 8, 5, 'lEfPWPGFCmyxTkWzrvsYGos FleIOK');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-03-21', 13, 18, 'dupszBLKCMTiHVlVelXFwdXuLqWNGZ');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-04-11', 17, 13, 'cOMrhTKDWefWRysojERoOiUcxBaFXw');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-10-15', 19, 13, 'xSsLoDGTmOjLqeqmWSdtfmyChhAaMT');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-03-17', 4, 5, 'hKbvZvCieXoCrAZWkkPOxOhDEOwJuX');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-09-06', 11, 11, 'kwZEXtSPfbQxVgel WaLgXmVknTJ o');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-07-20', 16, 10, 'gSfDS MRfuvmvuRbgeQCSmCfWndHFD');
