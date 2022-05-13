DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT '',
    bio TEXT ,
    join_date DATE,
    hashed_password BINARY(32),
    salt BINARY(16)
) ENGINE=INNODB;

INSERT INTO user(name) VALUES('Orestis Johnas');
INSERT INTO user(name) VALUES('Konstantina Looper');
INSERT INTO user(name) VALUES('Vagos Sigma');
INSERT INTO user(name) VALUES('Orestis Johnas');
INSERT INTO user(name) VALUES('Apostolis Goomba');
INSERT INTO user(name) VALUES('Kostas Zuza');
INSERT INTO user(name) VALUES('John Koopa');
INSERT INTO user(name) VALUES('Artemis Sigma');
INSERT INTO user(name) VALUES('Dabber Koopa');
INSERT INTO user(name) VALUES('Maria Koopa');
INSERT INTO user(name) VALUES('Panagiotis Zuza');
INSERT INTO user(name) VALUES('Artemis Sigma');
INSERT INTO user(name) VALUES('Mario Koopa');
INSERT INTO user(name) VALUES('Panagiotis Koopa');
INSERT INTO user(name) VALUES('Kostas Koopa');
INSERT INTO user(name) VALUES('Orestis Troopa');
INSERT INTO user(name) VALUES('Artemis Zuza');
INSERT INTO user(name) VALUES('Mario Troopa');
INSERT INTO user(name) VALUES('Konstantina Pokahontas');
INSERT INTO user(name) VALUES('John Zelda');
DROP TABLE IF EXISTS activity;

CREATE TABLE IF NOT EXISTS activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    description VARCHAR(255) DEFAULT ''
) ENGINE=INNODB;

INSERT INTO activity(name, description) VALUES('Pickup Shops', 'AIqbPjcRr yJeOaGlaObSrp XIGmTm');    
INSERT INTO activity(name, description) VALUES('Fish Running', 'VhnCGnnLRRGNYaxRZxYdaoTbSJrRdy');    
INSERT INTO activity(name, description) VALUES('Collect Drinking', 'R SoPQeGGHRxbBRlqfzpocPiYLWeqj');
INSERT INTO activity(name, description) VALUES('Remove Eating', 'qngvUEComKraHONFTthWfuoBnbImcc');   
INSERT INTO activity(name, description) VALUES('Remove Shops', 'FuVLKAlCkeolGwaKPAjIehigHSKdva');    
INSERT INTO activity(name, description) VALUES('Fish Paintings', 'tDFVcepnfqxOJTNxHGEAMSpXenWiqh');  
INSERT INTO activity(name, description) VALUES('Prepare Shops', 'RujU INdWLSVMB OxWAwkQEsKiVJbW');
INSERT INTO activity(name, description) VALUES('Prepare Climbing', 'xzwljWPDIubYVmFYOXtcGRyrAkaxty');
INSERT INTO activity(name, description) VALUES('Pickup Shops', 'jVEpcj XLpyceUIbkffhOkx HCEei ');
INSERT INTO activity(name, description) VALUES('Cooking Paintings', 'Pc ytLysFAIqPPvwuxOEUozBBPgZKS');
INSERT INTO activity(name, description) VALUES('Organise Climbing', 'oToWoTUoRaSauHxNaQhG XMuerzhWA');
INSERT INTO activity(name, description) VALUES('Organise Eating', 'bxGzsjQBcXmPidxvBSlFAnNEoqhNOi');
INSERT INTO activity(name, description) VALUES('Pickup Swimming', 'PSSySqBnlHFYaYtOxglHiSmalzBEKK');
INSERT INTO activity(name, description) VALUES('Fish Drinking', 'TPqVZCaPyVQUcTTIoAjFo  JGfbFTe');
INSERT INTO activity(name, description) VALUES('Cooking Eating', 'qxzOPzgnKDFHEvtUlnceiDYTGnwWFt');
INSERT INTO activity(name, description) VALUES('Fish Swimming', 'rBLuGESBZOwPKjBSOnFKwOPwYvGzSp');
INSERT INTO activity(name, description) VALUES('Mountain Posters', 'lsEcbHulaTJPPMkSDfzrbiWueauCvD');
INSERT INTO activity(name, description) VALUES('Cooking Eating', 'mJUBcbNiZGVLrWscpxZMyNNWUnC Nj');
INSERT INTO activity(name, description) VALUES('Fish Climbing', 'qDhjjJQbcKPFNOoNRxUWKfsIrvzUeA');
INSERT INTO activity(name, description) VALUES('Cooking Posters', 'ZDuv xKiSDdBiGlrubiLeGqpcHxqUs');
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

INSERT INTO post(activity, creator, creation_time, body) VALUES(10, 16, '2022-07-20', 'YazVdDUmjqgyFkMTp BwWYiMBytqHr');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 2, '2020-01-16', 'BMXF rMeCHKAgKlhwbxfDPeOGrTZuE');
INSERT INTO post(activity, creator, creation_time, body) VALUES(1, 4, '2022-11-23', 'QlWZgUoXEKQikxqcjHUruLCkGKwWxq');
INSERT INTO post(activity, creator, creation_time, body) VALUES(8, 18, '2022-01-21', 'LLIBvUYIwiSFuQZ ZIooHFoJnaWwyv');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 7, '2021-08-03', 'fSkuoFXOpX BwwniPfZRpRNLYosUsw');
INSERT INTO post(activity, creator, creation_time, body) VALUES(17, 3, '2021-12-05', 'oXS xefMleGlYeTehutNKcxzaVoFLK');
INSERT INTO post(activity, creator, creation_time, body) VALUES(19, 3, '2020-02-04', 'muuMrrAXixjXNRRIWGgylADagpjeBE');
INSERT INTO post(activity, creator, creation_time, body) VALUES(16, 6, '2020-03-25', 'DwKhUQTf PTEzmPXWMobKgYbFNPwme');
INSERT INTO post(activity, creator, creation_time, body) VALUES(15, 4, '2022-11-02', 'oYlWoRSNBPEPx IllTYdfApZPnlsLx');
INSERT INTO post(activity, creator, creation_time, body) VALUES(1, 2, '2021-03-24', 'XsCVMdapdRetlowRuFLeaqnlSJFfVu');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 5, '2022-03-12', 'CIhdAHIWfaFtSzvdqWFCxhoghjCrLD');
INSERT INTO post(activity, creator, creation_time, body) VALUES(14, 16, '2020-11-03', 'dcXsAiCkehtNjyaDFyRbqwUzjTeWKB');
INSERT INTO post(activity, creator, creation_time, body) VALUES(8, 6, '2021-09-30', 'LMdgeyQzphUnQCjDxTfkRhPiiuUPsW');
INSERT INTO post(activity, creator, creation_time, body) VALUES(4, 2, '2022-08-21', 'CgXyoSgwtkDZoLPKsZrqvydVDZVVeg');
INSERT INTO post(activity, creator, creation_time, body) VALUES(11, 19, '2021-01-07', 'YJcWJpTMITo jimejaNqOnUvIJQfyq');
INSERT INTO post(activity, creator, creation_time, body) VALUES(4, 16, '2020-06-26', 'TGDXMpqPovXCeGyHOgUPqRMcKZeiUJ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(15, 2, '2022-10-13', 'hSsxOTIGkSUH IYcDsPdjxDSJmsuhc');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 19, '2022-09-14', 'lNgPWVTibnVsUUPJuMeMiZCMfPZcGF');
INSERT INTO post(activity, creator, creation_time, body) VALUES(10, 17, '2022-12-19', 'CvSDvcVKLjNLozzpkojBwHpAkNRidW');
INSERT INTO post(activity, creator, creation_time, body) VALUES(4, 6, '2021-06-30', 'U NhLxhyyImWGalnnVncveSbfQEKZv');
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

INSERT INTO friendship(user_first, user_second) VALUES(14, 12);
INSERT INTO friendship(user_first, user_second) VALUES(15, 10);
INSERT INTO friendship(user_first, user_second) VALUES(8, 11);
INSERT INTO friendship(user_first, user_second) VALUES(1, 5);
INSERT INTO friendship(user_first, user_second) VALUES(20, 7);
INSERT INTO friendship(user_first, user_second) VALUES(12, 1);
INSERT INTO friendship(user_first, user_second) VALUES(19, 1);
INSERT INTO friendship(user_first, user_second) VALUES(4, 5);
INSERT INTO friendship(user_first, user_second) VALUES(1, 7);
INSERT INTO friendship(user_first, user_second) VALUES(8, 3);
INSERT INTO friendship(user_first, user_second) VALUES(12, 6);
INSERT INTO friendship(user_first, user_second) VALUES(10, 14);
INSERT INTO friendship(user_first, user_second) VALUES(3, 18);
INSERT INTO friendship(user_first, user_second) VALUES(16, 2);
INSERT INTO friendship(user_first, user_second) VALUES(11, 1);
INSERT INTO friendship(user_first, user_second) VALUES(3, 17);
INSERT INTO friendship(user_first, user_second) VALUES(20, 20);
INSERT INTO friendship(user_first, user_second) VALUES(9, 12);
INSERT INTO friendship(user_first, user_second) VALUES(2, 3);
INSERT INTO friendship(user_first, user_second) VALUES(10, 18);
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

INSERT INTO participation(user, activity) VALUES(4, 19);
INSERT INTO participation(user, activity) VALUES(17, 7);
INSERT INTO participation(user, activity) VALUES(6, 7);
INSERT INTO participation(user, activity) VALUES(7, 11);
INSERT INTO participation(user, activity) VALUES(3, 15);
INSERT INTO participation(user, activity) VALUES(16, 17);
INSERT INTO participation(user, activity) VALUES(12, 6);
INSERT INTO participation(user, activity) VALUES(12, 1);
INSERT INTO participation(user, activity) VALUES(13, 2);
INSERT INTO participation(user, activity) VALUES(12, 11);
INSERT INTO participation(user, activity) VALUES(14, 3);
INSERT INTO participation(user, activity) VALUES(8, 7);
INSERT INTO participation(user, activity) VALUES(9, 19);
INSERT INTO participation(user, activity) VALUES(7, 19);
INSERT INTO participation(user, activity) VALUES(8, 10);
INSERT INTO participation(user, activity) VALUES(10, 14);
INSERT INTO participation(user, activity) VALUES(5, 9);
INSERT INTO participation(user, activity) VALUES(7, 11);
INSERT INTO participation(user, activity) VALUES(4, 17);
INSERT INTO participation(user, activity) VALUES(16, 8);
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

INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-03-18', 11, 10, 'OzPExowhCwfrUoijDwzeAwCiaSyFKL');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-01-09', 11, 13, 'AmQiYwHNrgBZO SZtYKIlNiTvWeOzP');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-06-04', 19, 11, 'poDJkshINVQGMLySfYMhrZWFBHLqUV');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-05-08', 8, 4, 'DxaYBxJxhyEgGiNizfyNpJRtSwoqJK');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-07-19', 8, 2, 'rLSPvSPnnQjE msXKVPiVSsyCFYJqJ');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-09-29', 14, 20, 'DtyLCIVRboDUWZKGuHbNVOqjzYzDvS');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-02-27', 8, 19, 'KnOxCbHLLEPhgTsVsXMpnQBOZtiOZe');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-05-08', 11, 14, 'SlHYDJgfKMmyuGBBegWH JaXTOhGyZ');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-03-20', 19, 2, 'ubtQFNPsJBBAWvrFvbAyNyvWfEGfXX');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-11-03', 15, 20, 'JcFWRZwt sYoVZFVc BoJPFzTZPUIy');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-02-26', 11, 11, 'hOnYsEmqtWUBlmRKHdolUB OzmAGLd');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-10-30', 19, 12, 'rvbARJiTOyzc tXAhqeIKPSooUCred');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-08-15', 12, 3, 'keiNnGutf elyMzwt LanQNSWpqrMR');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-08-11', 19, 14, 'fosYpnvbySsUgmybtjJaDT  sGNwXq');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-05-30', 15, 16, 'gOIbuIJLHZZYzMrFSJQKcgdrnYGWNO');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-12-09', 13, 15, 'hnIUWUsuImJQyNhhaTT ODietFV gF');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-04-30', 8, 6, 'ihZGgODxdFfTMPMQWeydCmRdVNVwvp');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-11-20', 18, 9, 'ScmEpShFwaduoSFcHfrReZFlhWTKuD');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-09-14', 4, 20, 'WmqweLfmcpejRiMIDjqoolct kZxCM');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-08-19', 12, 15, 'bOIqOOagRkBhCcxVBPVnuitlkrAGEj');