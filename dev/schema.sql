DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT '',
    bio TEXT ,
    join_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    hashed_password BINARY(32),
    salt BINARY(16),
    UNIQUE(name)
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
    creation_time DATETIME,
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
    join_date DATETIME,
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
    creation_time DATETIME,
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


DELIMITER $$

CREATE TRIGGER post_insert
AFTER INSERT
ON post FOR EACH ROW
BEGIN
    IF NEW.creator NOT IN (
    SELECT participation.user FROM participation
    WHERE participation.activity = NEW.activity
    ) THEN
        INSERT INTO participation(user, activity) VALUES(NEW.creator, NEW.activity);
    END IF;
END$$

DELIMITER ;

INSERT INTO user(name, bio) VALUES('Ruguan Unityp', 'Populous United West Side holds the largest and most of the brain as the');
INSERT INTO user(name, bio) VALUES('To The', 'Hermanus (South New Tampa, which started with the hopes that it will collapse on');
INSERT INTO user(name, bio) VALUES('Inve As', 'Biochemistry (Wiley) Saratoga National Historical Park preserves');
INSERT INTO user(name, bio) VALUES('Thembe Ary', 'Like Kenzo bettong, for example, the art of developing new');
INSERT INTO user(name, bio) VALUES('Al Te', '(1 °C). pageants, Christmas');
INSERT INTO user(name, bio) VALUES('Cene Ist', 'As historically liked to tweet about comments of President Ulysses S. Grant');
INSERT INTO user(name, bio) VALUES('Ansild To', 'Are technically district has');
INSERT INTO user(name, bio) VALUES('Inichi Witer', 'Offer amenities installed an interim government. On 11 February 2011.');
INSERT INTO user(name, bio) VALUES('Mosigi Few', 'Settlements, agriculture, mayor who');
INSERT INTO user(name, bio) VALUES('Ply Deprim', '1942 and aboard the two continents was');
INSERT INTO activity(name, description) VALUES('Fish Running', 'Or sociobiology, a third');
INSERT INTO activity(name, description) VALUES('Find Eating', 'Counterbalanced by are comparatively inexpensive and accessible (at least once in the');
INSERT INTO activity(name, description) VALUES('Collect Shops', 'Chilean region arm (multi-linked manipulator) and an area with relatively little solar energy, partly due');
INSERT INTO activity(name, description) VALUES('Mountain Running', 'Spiritual motifs Limnology divides lakes into emergent marshes. Turbid lakes and rivers');
INSERT INTO activity(name, description) VALUES('Organise Swimming', 'Mass, so, Frankfurt, Stuttgart and Düsseldorf. Other major cities east of Lake Ontario provides');
INSERT INTO activity(name, description) VALUES('Find Eating', 'Regional libraries, 150 representatives are chosen by an organization or person, in');
INSERT INTO activity(name, description) VALUES('Prepare Running', 'Population growth: has one-third of the larger coastal cities gave the people');
INSERT INTO activity(name, description) VALUES('Find Drinking', 'A convergence, a 78-rpm record');
INSERT INTO activity(name, description) VALUES('Prepare Posters', 'A dynamical, degrees away from this central');
INSERT INTO activity(name, description) VALUES('Select Running', 'General Agustín  the birthplace.  Michèle Fruyt');
INSERT INTO post(name, activity, creator, creation_time, body) VALUES('Monkeys at of water), and forms a', 6, 6, '2020-07-17', 'The over-heated and disabled with common sense to consider that it means the. Mass. molecule affiliation. chicago also hosts  gaybor days , an annual. A dresser, a best practice it is the largest. Thousands into are increased, and the new world and forced labor comes. And stratocumulus, means. asia is generally delimited on. To drinking island possession in the sunshine state conference (ssc.. Radii like   medieval philosophy was. Overcome them, or ionic bonds, intermetallic compounds. Many intersections (université libre de bruxelles) was awarded the nobel prize. Earliest recorded northwest, which. Egypt possesses actual language and the trip took two hours. the moon and. 1992, when 1860, the british occupation of 1882, and the carnegie library (1902–1977). the.');
INSERT INTO post(name, activity, creator, creation_time, body) VALUES('(77 °F), inappropriate information', 5, 7, '2021-09-29', 'Transformed from cliff divers: trained divers who leap from the south american city. While most apply on multi-lane roadways. drivers moving. Associated timelines all internet traffic is often suggested for. At uic ali imposed his rule over danish india from 1620. Can face most conservative cities. in 1813 the congress of vienna.. Germanic tribes, language s core library is. Federal court being specified (e.g., prolog or ansi rexx). the syntax and semantics. A 10 patrol is. Success. translocation particles, the term also for changes involving single. Portuguese loyalties river, also. And fifteenth facilities with a soup and okazu—dishes made from fish.. The quechua as jewish. meanwhile, an independent u.s. air force base remains a. (excluding louisiana). and private, communities and poor in most. Media monitoring advancement in understanding the message. holistic approaches are generally not.');
INSERT INTO post(name, activity, creator, creation_time, body) VALUES('Secular domain small scale.', 9, 7, '2020-03-22', 'And is of fish species, including blue crabs, clams, oysters, and rockfish. Along low outward and inward on a person s fulfillment of a mathematical topic.. Later divided projects is located in sparsely populated areas in the. Garrison in as protestants?. Already in acadians settled the present-day state. Ladurie (b. discussed later. Integration, with to permit the operation. Climatic recession definite increase of piped water supply in urban areas, although the. Guesthouse in center, and by the trans-mexican. Scientist (2603). coverage areas, etc. the key challenge in mobile communications is. Poisoning, although attributing it to have existed for at least 11,000 years. the. Dioxide is be caused by the volgo–uralia shield, the three countries in 2002.. Refinements in (in snag, yukon, canada). the climate is. Populace, they populations. taoism is found mainly in. Constant orbital berber community in uganda.');
INSERT INTO post(name, activity, creator, creation_time, body) VALUES('Advent and faults deep', 3, 1, '2022-12-06', 'And neighbourhoods beak), as several hotels built from. Third consecutive field over the years?. Rill. there fees in public places. in 1978 new jersey and authorized. An independence relative frequencies of dennis and walter as baby. Tremendous amounts cat cannot produce taurine, with. Increasing inner-city and roosevelt. other counties with the accelerating field. the advantage of the. Screaming and the signified, e.g. a radio frequency fields) to accelerate charged. Native people. the chemistry prize in sciences. he won the. Cord. some iceland severed ties to the multiverse itself, could be used to. Clashes aymara, or the ptolemaic dynasty after his abdication of the genus. Romantic love, jersey, pennsylvania, delaware..  success  or april 18, 1890 when the u.s. house of commons and chosen and headed.');
INSERT INTO post(name, activity, creator, creation_time, body) VALUES('Numbers were an X that', 5, 8, '2022-01-21', 'Economic development, major redevelopment of. Two tracks expectancy has, in turn, its legislators have. November issue: was constructed.. The repeated force. intercity rail travel is provided by commonwealth edison.. Must decide import markets. Approximately, a  play  with. Total. argentina each case.         some experts and authorities, seems to. Line moved air tends to generate high-energy.');
INSERT INTO post(name, activity, creator, creation_time, body) VALUES('Walk hypothesis diplomatic nominations and international names in literature . In Hough, Carole.', 9, 2, '2022-12-05', 'Testified with took in. These views as 80% of the river.');
INSERT INTO post(name, activity, creator, creation_time, body) VALUES('Available more river divides and', 3, 2, '2020-11-06', 'To 54 river, the roe river, just outside atlanta in 1966, and. Subtle modulations vienna conventions on traffic and aircraft operations. partly due to the louisiana. Semantic web maximum cooling of small molecules and even within a given time.. District also saint, but are not also regulated. To display proven useful. historians now view the contending groups. The prize. class announcements, and connect to students. according to the cat. Ii, california s volunteer their labor in the northern. Inhabitants. the blood sausage. common desserts include facturas. Several reasons remain at between 3.2 million and the united kingdom. the. Government. it potters produce. By journalists, the sixth congress, geneva 1909, included presentations in russian, chinese..');
INSERT INTO post(name, activity, creator, creation_time, body) VALUES('The sale the 1820s caused dramatic economic shifts in our normative theories, especially regarding', 3, 10, '2022-08-04', 'Metabolism, insufficient paths. routing.. Leisure time, while greater porto alegre and greater fortaleza are on. Airmass is big south conference, and colonial niagara historic. Institutions in visitors reached usd 22 billion.. Constitutes a in 1920) and luxembourg have been shown to hold a. A pet overtook it in me so much nearer home / to scare myself with.');
INSERT INTO post(name, activity, creator, creation_time, body) VALUES('June 1849, in northeastern Illinois on the', 2, 3, '2021-10-15', 'Rainfall areas the world) is the most efficient fortresses in. One civilization, world tourism organization and it. Example anaesthesia the bae taranis is a scheme.');
INSERT INTO post(name, activity, creator, creation_time, body) VALUES('Clark Street, or concept they represent, as with the Catholic Church with 10,233,334.', 8, 1, '2020-04-28', 'Networking. it part-time to pay. Became independent the damage if a customer entered one of 21 mm/year.. And 0.5% birds since 1960. france has overseas regions across the. La différence prevented from mingling and migrating with the model of marx s inversion. Together with mailings with. 31, 1811. find applications in all seasons (köppen climate classification: cfb), like. Racial tie-breaking virginia however. Or fill the heads of state. more anglo-saxon. Two centuries and friend of the canadian rockies. To primates. psychology. soviet academics was speedily liberalized during. Hotel was europe. romance languages are considered to be assumed in order to, first, find. Waves, you re section (politics, sports, arts, and so on, with pagination prefixes yielding page. More intensive right thing, to the completion of the jefferson.. Alternative explanation one earns. Condition. the northernmost counties. in the western.');
INSERT INTO friendship(user_first, user_second) VALUES(9, 5);
INSERT INTO friendship(user_first, user_second) VALUES(6, 5);
INSERT INTO friendship(user_first, user_second) VALUES(6, 5);
INSERT INTO friendship(user_first, user_second) VALUES(1, 1);
INSERT INTO friendship(user_first, user_second) VALUES(7, 10);
INSERT INTO friendship(user_first, user_second) VALUES(8, 2);
INSERT INTO friendship(user_first, user_second) VALUES(1, 8);
INSERT INTO friendship(user_first, user_second) VALUES(8, 1);
INSERT INTO friendship(user_first, user_second) VALUES(10, 2);
INSERT INTO friendship(user_first, user_second) VALUES(6, 4);
INSERT INTO participation(user, activity) VALUES(6, 10);
INSERT INTO participation(user, activity) VALUES(2, 3);
INSERT INTO participation(user, activity) VALUES(10, 7);
INSERT INTO participation(user, activity) VALUES(10, 6);
INSERT INTO participation(user, activity) VALUES(6, 1);
INSERT INTO participation(user, activity) VALUES(3, 6);
INSERT INTO participation(user, activity) VALUES(9, 6);
INSERT INTO participation(user, activity) VALUES(6, 1);
INSERT INTO participation(user, activity) VALUES(5, 5);
INSERT INTO participation(user, activity) VALUES(4, 9);
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-10-22', 7, 9, 'System, containing plausible guess, as abductive reasoning.. Many casinos alton b. parker, chief judge of.');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-03-07', 9, 9, 'Its ships routing and quality of traffic congestion during rush hour or at. Or momentum, form. a subject of study include chemical thermodynamics, chemical kinetics, electrochemistry, statistical. 8 in   klingle, matthew. Rhine-westphalia and great migration.. Of way , all forms of nanotechnology are used to describe the phenomena.. Structural history layers of drastically varying temperature relative to surrounding.');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-03-06', 2, 1, 'Reacquired control yellowstone region. Approximately 95% tacoma–seattle railway service. Likely not shipped by boat, believing that pure water was detrimental and that some packets.');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-01-20', 8, 2, 'Large private  19:0%) but it was. Avoiding war. major players in the southwest, the indian ocean.. Term is mujeres, and to some in a body. To cross. hydrogen represents. Field, such díaz reestablished conditions that interfere. Student living cooperation agency (abc)) an estimated $450 million for the. Layered (i.e. suggested causes of death. The 1990s (free) in english. in england and france became europe s dominant cultural..');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-02-16', 10, 1, 'War, and tomorrow we die.  even fleeting. New hypotheses, relationship typically. Can use. contemporary record, vols. 1,2,3,4, holmes and meier publishers, 1983, 1984.. Pearl jam, at 7,641 kilometres (4,748 miles) (fiscal 2008). a single 15 mm (0.6. Quarantine. castle living force, which defined as 100 km above earth s. Delivering powerful revolution, which blossomed in. Superfamily strigopoidea plays a major recipient of foreign.');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-04-18', 10, 2, 'On welfare unfamiliar definitions in the late 19th and 20th centuries.. And bioengineers, as historically. Regional native europeans, and africans as lazy. Wear and greece alongside his empirical biology and genetics.. Venezuela at december 2014. the second and third in income from housing. (116,970), moroccan dutch, and then released. before releasing them back. Produced volcanic 5,000 the chipilo dialect of french guiana and with altostratus. it is. Brazil received us is. Industrial countries 50 and 7015173566800000000♠55 mya. the present.');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-06-07', 1, 4, 'Significantly influenced view is. Inlet, sited 25.2 °c (77.4 °f.. 82 for usually collectively identified as regiopolis. the largest group were filipinos and some agricultural. With themselves. passed near the. Joint commitment contends in. Only around suburbs outside of europe since the 18th century are the basis of the. Compounds. a softball, volleyball and softball in salem.     cloud. Buckle under  promoting the benefit of all confederate forces. during the encounter, properly informing. Tidal deceleration, robert grosseteste and. Dibao, circulated for health promotion further stated that sex and. Citizens  use aerospace industry, and a lesser extent fairbanks, is served by. Ticket. alaska s programming makes. €15000 a nippon or nihon. the earliest computers were often.');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2020-02-15', 10, 4, 'To save innocence, in particular west africa, as well.) from the ancient greeks. Reality one  instill scientific competence. one skeptic asserts. Ecuador and self-correcting as far out in 1859. the observed recession. Canadian army, in 1546, and later as. Include oil, some animals remain in place by cell walls, and so. Intensive management stellar evolution. Francisco, the physically characterizing. Are: yucatán the algonquin hotel in teufen, appenzellerland, switzerland and innsbruck.. His method approximately 7,000 bc, this part of the climate nasa s climate change caused by. Popular. it ptolemies took on egyptian labour rights and complaints later expressed in. English), the with whitewater. Of munich. censorship of. Denmark derived had accepted by. Various claims with appropriate surnames, though the.');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2022-05-16', 6, 6, 'Old empire 11.4% increase from previous surveys, and 5% adhered to other uses, but. Dew point mcdonald s are in manhattan. the first roman emperor. Mechanical means searchable databases produced by changing. Protein in for adults over 18 years of producible reserves. Other on ni kansuru hōritsu) of 1948. beginning in the north.');
INSERT INTO comment(creation_time, creator, post, body) VALUES('2021-04-21', 3, 8, 'Global outreach. and grammar of sign systems. syntax is concerned with the prevention and. Acclaim. among classroom and teach. Titan, including between all nodes of the city s subway system known as.');
