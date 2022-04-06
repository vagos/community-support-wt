DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT ''
) ENGINE=INNODB;

INSERT INTO user(name) VALUES('Vagos Johnas');
INSERT INTO user(name) VALUES('Ioanna Kolombia');
INSERT INTO user(name) VALUES('Ioanna Johnas');
INSERT INTO user(name) VALUES('Orestis Pokahontas');
INSERT INTO user(name) VALUES('Anna Goomba');
INSERT INTO user(name) VALUES('Dabber Troopa');
INSERT INTO user(name) VALUES('Panagiotis Pokahontas');
INSERT INTO user(name) VALUES('Apostolis Goomba');
INSERT INTO user(name) VALUES('Orestis Sigma');
INSERT INTO user(name) VALUES('Panagiotis Goomba');
INSERT INTO user(name) VALUES('Artemis Kolombia');
INSERT INTO user(name) VALUES('Apostolis Zuza');
INSERT INTO user(name) VALUES('John Zelda');
INSERT INTO user(name) VALUES('Maria Triangle');
INSERT INTO user(name) VALUES('Maria Kolombia');
INSERT INTO user(name) VALUES('Orestis Triangle');
INSERT INTO user(name) VALUES('Konstantina Zuza');
INSERT INTO user(name) VALUES('Orestis Goomba');
INSERT INTO user(name) VALUES('Ioanna Looper');
INSERT INTO user(name) VALUES('Panagiotis Kolombia');
DROP TABLE IF EXISTS activity;

CREATE TABLE IF NOT EXISTS activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    description TEXT DEFAULT ''
) ENGINE=INNODB;

INSERT INTO activity(name) VALUES('Collect Paintings');
INSERT INTO activity(name) VALUES('Select Shops');
INSERT INTO activity(name) VALUES('Create Food');
INSERT INTO activity(name) VALUES('Collect Drinking');
INSERT INTO activity(name) VALUES('Pickup Running');
INSERT INTO activity(name) VALUES('Collect Eating');
INSERT INTO activity(name) VALUES('Fish Food');
INSERT INTO activity(name) VALUES('Fish Food');
INSERT INTO activity(name) VALUES('Organise Climbing');
INSERT INTO activity(name) VALUES('Mountain Running');
INSERT INTO activity(name) VALUES('Remove Paintings');
INSERT INTO activity(name) VALUES('Fish Food');
INSERT INTO activity(name) VALUES('Organise Swimming');
INSERT INTO activity(name) VALUES('Draw Eating');
INSERT INTO activity(name) VALUES('Fish Shops');
INSERT INTO activity(name) VALUES('Remove Running');
INSERT INTO activity(name) VALUES('Remove Paintings');
INSERT INTO activity(name) VALUES('Select Climbing');
INSERT INTO activity(name) VALUES('Pickup Shops');
INSERT INTO activity(name) VALUES('Prepare Swimming');
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

INSERT INTO post(activity, creator, creation_time, body) VALUES(8, 17, '2022-01-21', 'HOwzwMHaqZeajqBatuuZLMnuRMYbLo');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 1, '2021-06-04', 'palBJLIQaygqVnIOdtYXnwBiQetYwX');
INSERT INTO post(activity, creator, creation_time, body) VALUES(7, 14, '2021-04-06', 'ElNCVPWhBybhIWyWZjscBsFSzyJYkN');
INSERT INTO post(activity, creator, creation_time, body) VALUES(14, 9, '2022-06-17', 'qDveyTyvMBeeKlQhjJZHHbNSVyOmnG');
INSERT INTO post(activity, creator, creation_time, body) VALUES(1, 2, '2020-12-21', 'BYXvvoUfSnPxMVcgqqIvFxLQLeWKxy');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 18, '2020-06-07', 'JyqqQXjENohLypYMkrfVzvbvxDAzBu');
INSERT INTO post(activity, creator, creation_time, body) VALUES(18, 17, '2021-01-15', 'rtXVncGKCMgCET ABpafMjTOefxKLY');
INSERT INTO post(activity, creator, creation_time, body) VALUES(16, 15, '2022-11-16', 'kwrzXKCIylVBcukAsaYQdYVfqZxlgm');
INSERT INTO post(activity, creator, creation_time, body) VALUES(4, 14, '2020-07-18', 'DAwjmGsMKCXztAXABbhwqiwHhBZwLo');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 4, '2021-05-03', 'InayuWWcGPVkrDFtixgKQdTieKCYZh');
INSERT INTO post(activity, creator, creation_time, body) VALUES(16, 16, '2022-01-24', 'DcZzgdKauqnjdmiRwqlCGnFlXutzb ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(12, 13, '2022-05-01', 'ECQLZYAHKAnAlgEVClDTADnoKDmwYD');
INSERT INTO post(activity, creator, creation_time, body) VALUES(13, 10, '2022-01-07', 'dwt KGKAobDdVkPAkPsunsHwxexDZH');
INSERT INTO post(activity, creator, creation_time, body) VALUES(3, 8, '2021-01-08', 'pZsxSsJSNKLGBuYpdUlOFBTNVaKAjZ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(19, 3, '2022-02-20', 'FFeygPDbxgrzqlmMarKZhtlktxRaK ');
INSERT INTO post(activity, creator, creation_time, body) VALUES(9, 5, '2020-10-27', 'TCTIDqmhxcQvVwmfhAjQFSfRrgoPZV');
INSERT INTO post(activity, creator, creation_time, body) VALUES(5, 10, '2022-09-04', ' eoiJW nHHXgdehWBCZLBmmNsUBYjt');
INSERT INTO post(activity, creator, creation_time, body) VALUES(17, 12, '2020-10-04', 'Yf EJilgMb vYzYLVNAzySHrMRHTZl');
INSERT INTO post(activity, creator, creation_time, body) VALUES(20, 15, '2022-07-18', 'sFoiFZPT GkkTTWlPmoQlhJQSsnxOi');
INSERT INTO post(activity, creator, creation_time, body) VALUES(6, 8, '2021-10-23', 'yr BoLjCbhEwbQZgmntzTCo FCSESD');
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
        REFERENCES activity(id),
    UNIQUE(user, activity)
) ENGINE=INNODB;

INSERT INTO participation(user, activity) VALUES(12, 16);
INSERT INTO participation(user, activity) VALUES(6, 8);
INSERT INTO participation(user, activity) VALUES(17, 1);
INSERT INTO participation(user, activity) VALUES(15, 5);
INSERT INTO participation(user, activity) VALUES(7, 20);
INSERT INTO participation(user, activity) VALUES(10, 1);
INSERT INTO participation(user, activity) VALUES(3, 16);
INSERT INTO participation(user, activity) VALUES(16, 6);
INSERT INTO participation(user, activity) VALUES(2, 2);
INSERT INTO participation(user, activity) VALUES(9, 17);
INSERT INTO participation(user, activity) VALUES(14, 19);
INSERT INTO participation(user, activity) VALUES(18, 8);
INSERT INTO participation(user, activity) VALUES(7, 19);
INSERT INTO participation(user, activity) VALUES(9, 14);
INSERT INTO participation(user, activity) VALUES(8, 12);
INSERT INTO participation(user, activity) VALUES(15, 15);
INSERT INTO participation(user, activity) VALUES(4, 15);
INSERT INTO participation(user, activity) VALUES(2, 16);
INSERT INTO participation(user, activity) VALUES(7, 15);
INSERT INTO participation(user, activity) VALUES(6, 4);
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
