DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT '',
    bio TEXT NOT NULL DEFAULT '',
    join_date DATE,
    hashed_password BINARY(32),
    salt BINARY(16)
) ENGINE=INNODB;

INSERT INTO user(name) VALUES('Mario Zuza');
INSERT INTO user(name) VALUES('Artemis Zelda');
INSERT INTO user(name) VALUES('Maria Sigma');
INSERT INTO user(name) VALUES('Vagos Goomba');
INSERT INTO user(name) VALUES('Dabber Triangle');
INSERT INTO user(name) VALUES('Dabber Koopa');
INSERT INTO user(name) VALUES('Anna Zelda');
INSERT INTO user(name) VALUES('John Troopa');
INSERT INTO user(name) VALUES('Anna Goomba');
INSERT INTO user(name) VALUES('Ioanna Pokahontas');
INSERT INTO user(name) VALUES('Dabber Zelda');
INSERT INTO user(name) VALUES('Vagos Pokahontas');
INSERT INTO user(name) VALUES('Panagiotis Troopa');
INSERT INTO user(name) VALUES('Maria Goomba');
INSERT INTO user(name) VALUES('Vagos Johnas');
INSERT INTO user(name) VALUES('Maria Kolombia');
INSERT INTO user(name) VALUES('Maria Triangle');
INSERT INTO user(name) VALUES('Panagiotis Koopa');
INSERT INTO user(name) VALUES('John Goomba');
INSERT INTO user(name) VALUES('John Johnas');
DROP TABLE IF EXISTS activity;

CREATE TABLE IF NOT EXISTS activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    description VARCHAR(255) DEFAULT ''
) ENGINE=INNODB;

INSERT INTO activity(name, description) VALUES('Remove Paintings', 'uKXkXwShYPcfXKmzGEBJshUhowkgHo');
INSERT INTO activity(name, description) VALUES('Fish Paintings', 'mYbgkYPW ICMYRPEKZqAtVDhvHqyEh');
INSERT INTO activity(name, description) VALUES('Cooking Paintings', 'pMDIqQrrsrABhEFHEXzNIptMZEhWOD');
INSERT INTO activity(name, description) VALUES('Collect Eating', 'opAQVKQZXlTmtRIyCdaOxmSUgEpbEU');
INSERT INTO activity(name, description) VALUES('Find Eating', 'piqBFtjyUovxHAzOMlCogFXWZqCgvY');
INSERT INTO activity(name, description) VALUES('Prepare Swimming', 'CNVmfqIoWhZhWlCSznciecugpY BZD');
INSERT INTO activity(name, description) VALUES('Remove Shops', 'SBlRjQXsztRrypbpCijoGUaVAYVTFo');
INSERT INTO activity(name, description) VALUES('Select Shops', 'VzufdDqxgcUVjeCmaDLcSknSnQsOKm');
INSERT INTO activity(name, description) VALUES('Collect Eating', 'lj tGCdIVTDXbzkzyoUnoPJbPPsveN');
INSERT INTO activity(name, description) VALUES('Organise Running', 'DPfbuKk lNHStgrMCstPHKQKrXENxf');
INSERT INTO activity(name, description) VALUES('Cooking Climbing', 'EYdWsnZTimRp JHHWkDBSuhlRiAPdg');
INSERT INTO activity(name, description) VALUES('Fish Swimming', 'fYtKjE KKJmiCPsGNAoGtSeJEYdXuc');
INSERT INTO activity(name, description) VALUES('Organise Food', 'qzOQdewZZHwsvXiNGqAIFHTyeamFYo');
INSERT INTO activity(name, description) VALUES('Find Climbing', 'ZHXVjgwIJbVQbDFfaAAeS XfzPhhKg');
INSERT INTO activity(name, description) VALUES('Draw Running', 'uIsVkooYYUGAdwsrZIHiJdvzfLzXHE');
INSERT INTO activity(name, description) VALUES('Find Drinking', 'AjPxpajLFSkqrAFPGkNCecqHMsHdKL');
INSERT INTO activity(name, description) VALUES('Find Swimming', 'pZzUzcjqYKvEqZuOSKqUrjnPfAFnkr');
INSERT INTO activity(name, description) VALUES('Fish Swimming', 'h VhcKwtcFmNgNWgGhIzQGwMQwjAYS');
INSERT INTO activity(name, description) VALUES('Find Eating', 'gaFjIvlIoLKyjvoAMuOXEG XQcrNnZ');
INSERT INTO activity(name, description) VALUES('Collect Swimming', 'FRswzumEpCLQ TafYFpSkyUrsM uYM');
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

INSERT INTO post(activity, creator, creation_time, body) VALUES(20, 19, '2020-01-11', 'lkaFXCKWsQYTrRCwGNIcIKP PNuTGO');
INSERT INTO post(activity, creator, creation_time, body) VALUES(20, 9, '2021-11-18', 'aVHMIAxgUoUTVZCTLgjGD YMBkVjli');
INSERT INTO post(activity, creator, creation_time, body) VALUES(19, 16, '2022-09-05', 'DgUfzWoPdJfRNglSVplUEKjEWGuZvI');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 6, '2021-07-11', 'nkKsOXYGutwTTlpSnb AvLWgazJJPE');
INSERT INTO post(activity, creator, creation_time, body) VALUES(15, 13, '2020-05-19', 'UtmSZlOgITUdRgVguHvxjOnEzBmUaf');
INSERT INTO post(activity, creator, creation_time, body) VALUES(20, 6, '2022-09-02', 'vSLTPcYMxBcsAhtfgxZzMYEojaNymg');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 12, '2020-04-24', 'rYIyVy tqaoFzhobzVIVbQlCyaemTC');
INSERT INTO post(activity, creator, creation_time, body) VALUES(5, 14, '2021-10-22', 'cIwnoTWsCVvTwBGcxDgMTXOtRWRwSa');
INSERT INTO post(activity, creator, creation_time, body) VALUES(5, 4, '2021-05-27', 'cvaOFUzewBcZuUjtFiPpmfUjhVdPNH');
INSERT INTO post(activity, creator, creation_time, body) VALUES(11, 2, '2022-05-13', 'ViGhKLlNeRqeaISFrsrpsoNPFTrxfr');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 6, '2022-08-20', 'tHjJlbDZZyHqAKONDYWtCOkdwSzIsu');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 18, '2020-08-15', 'TPQHrqZCQDcgUEdDfSVtxujeoTT Tm');
INSERT INTO post(activity, creator, creation_time, body) VALUES(11, 17, '2021-12-21', 'jnFZFuOZEuEkbjbrvZWSLtjPTNngLV');
INSERT INTO post(activity, creator, creation_time, body) VALUES(16, 14, '2022-07-23', 'UneTaAWzjZtRBnDYKKPSWnyzlHBVuN');
INSERT INTO post(activity, creator, creation_time, body) VALUES(15, 15, '2020-12-07', 'TfFxsTyQGWvxzKSxdSkhGCuswOwawJ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(1, 14, '2020-12-29', 'R HyCbUSMnzEnODUDdfnxwrcGgeELx');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 14, '2020-05-25', 'xkQuPUWtUvJrSKvUtxUHIgVkqanioR');
INSERT INTO post(activity, creator, creation_time, body) VALUES(18, 15, '2020-08-22', 'VCxvzCOpOjJdzsnburCSzhRQRmbtAR');
INSERT INTO post(activity, creator, creation_time, body) VALUES(16, 16, '2022-07-11', 'gHBKHRxdWtRlAXWUliPKBmiMKNdPmd');
INSERT INTO post(activity, creator, creation_time, body) VALUES(7, 18, '2020-04-02', 'gIghtVJrmylayvaNvgRkusCK LXBYc');
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

INSERT INTO friendship(user_first, user_second) VALUES(4, 3);
INSERT INTO friendship(user_first, user_second) VALUES(19, 12);
INSERT INTO friendship(user_first, user_second) VALUES(16, 8);
INSERT INTO friendship(user_first, user_second) VALUES(12, 6);
INSERT INTO friendship(user_first, user_second) VALUES(15, 9);
INSERT INTO friendship(user_first, user_second) VALUES(8, 18);
INSERT INTO friendship(user_first, user_second) VALUES(11, 11);
INSERT INTO friendship(user_first, user_second) VALUES(10, 2);
INSERT INTO friendship(user_first, user_second) VALUES(18, 11);
INSERT INTO friendship(user_first, user_second) VALUES(6, 14);
INSERT INTO friendship(user_first, user_second) VALUES(3, 19);
INSERT INTO friendship(user_first, user_second) VALUES(15, 5);
INSERT INTO friendship(user_first, user_second) VALUES(17, 15);
INSERT INTO friendship(user_first, user_second) VALUES(3, 7);
INSERT INTO friendship(user_first, user_second) VALUES(2, 3);
INSERT INTO friendship(user_first, user_second) VALUES(9, 16);
INSERT INTO friendship(user_first, user_second) VALUES(1, 10);
INSERT INTO friendship(user_first, user_second) VALUES(13, 5);
INSERT INTO friendship(user_first, user_second) VALUES(3, 13);
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

INSERT INTO participation(user, activity) VALUES(3, 20);
INSERT INTO participation(user, activity) VALUES(6, 15);
INSERT INTO participation(user, activity) VALUES(17, 9);
INSERT INTO participation(user, activity) VALUES(18, 11);
INSERT INTO participation(user, activity) VALUES(17, 12);
INSERT INTO participation(user, activity) VALUES(18, 17);
INSERT INTO participation(user, activity) VALUES(15, 6);
INSERT INTO participation(user, activity) VALUES(3, 13);
INSERT INTO participation(user, activity) VALUES(12, 2);
INSERT INTO participation(user, activity) VALUES(18, 15);
INSERT INTO participation(user, activity) VALUES(12, 8);
INSERT INTO participation(user, activity) VALUES(12, 10);
INSERT INTO participation(user, activity) VALUES(15, 14);
INSERT INTO participation(user, activity) VALUES(18, 14);
INSERT INTO participation(user, activity) VALUES(2, 12);
INSERT INTO participation(user, activity) VALUES(10, 14);
INSERT INTO participation(user, activity) VALUES(12, 19);
INSERT INTO participation(user, activity) VALUES(1, 3);
INSERT INTO participation(user, activity) VALUES(1, 18);
INSERT INTO participation(user, activity) VALUES(12, 20);
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

INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-09-08', 13, 18, 'jJSYII pvUPryFDAFykfVrUQbcRisd');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-07-21', 17, 2, 'tIPnwWxzwCWOsQMmDYUGmYrRopQAEI');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-07-28', 13, 4, 'UwewNXqHtVCgufDqZPemnUVRCaAygd');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-12-20', 16, 1, 'MmqmECc ZeGPcexMkDeECVZGWosJGJ');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-10-21', 9, 11, 'oEsPacBsNGKimsxUeSgoooMEACCDVy');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-12-09', 10, 13, 'GxHImWJXbxXQDUJGShZcmWWhbdfGvY');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-08-17', 4, 9, 'YXUTZATFDcYmOsKSrYbxYbaIZyOvRo');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-04-29', 6, 4, 'NijBadVNeYSQtcLvlLDgQVMNTFpoLo');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-07-24', 2, 18, 'wB vJZQlSJfgzXuBMkKhKdw AEAZji');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-06-07', 4, 19, 'cqTLFGOsDXKWMBhSueIHDPmvvBLJpD');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-08-21', 7, 13, 'jHVcJyaoTtKHsqPuxouBVTxGZ WTJZ');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-10-19', 13, 13, 'zgBngzgk hIFemXHzaEAPTKxRyAYeh');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-12-24', 8, 20, 'wDztuuqTpUkXEhtGJ ktRuBaVWAdJA');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-07-19', 20, 19, 'TlADGAduJaeIoPLcujfBGoBYfLZMGb');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-08-09', 5, 8, 'cBrGJVMGzXQIGBbuSZSuWZWOwkHMgO');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-06-29', 18, 13, 'yfEKVmPOzNhwwZBZugOHFOAKwfEsgk');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-03-03', 19, 17, 'GQEVwWtjZRpThVdUAkYLzErLGVQKHT');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-02-17', 12, 9, 'nDsvxlKSBBBm jtbzYsHWNQNoUNOmv');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-11-26', 10, 19, 'PSRXpkxjbqWAqRFikTUQTjFjGbOovu');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-10-10', 10, 16, 'CTpt sBTvATrxYygppByllclTPRYyq');
