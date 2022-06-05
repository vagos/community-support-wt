"""
db creation script

usage: python createDB.py > schema.sql

$ mysql -p 
> source ./schema.sql

some entries will fail because of uniqueness/other constraints. that's ok.
"""

"""
db creation script process for windows

first take prints from console of dbcreate.py and insert them into schema.sql

then open cmd and run:
$ mysql -u admin -p
> enter password

>use test //this will use the test database
>source ./schema.sql // this will run the schema.sql and load the db
"""


import random
import re

from essential_generators import DocumentGenerator

gen = DocumentGenerator()

# random.seed(999)

base = "./random_data"

def execute_sql(cursor, sql):
    return cursor.execute(sql)

with open(base + "/usernames.txt", "r") as member_name_file:

    member_names, member_surnames = member_name_file.read().strip().split('\n\n')

    NAMES = member_names.split('\n')
    SURNAMES = member_surnames.split('\n')

with open(base + "/activities.txt", "r") as tasks_file:

    task_verbs, task_targets = tasks_file.read().strip().split('\n\n')

    TARGETS = task_verbs.split('\n')
    VERBS = task_targets.split('\n')

def comment(s):
    print(f"-- {s}")

def create_activity_name():

    target = random.choice(TARGETS)
    verb = random.choice(VERBS)

    return target + ' ' + verb

def create_string(_type):
    s = ""
    if _type == 'sentence': s = gen.sentence()
    if _type == 'paragraph': s = gen.paragraph()

    if s: return re.sub(r'[\'"\n]', ' ', s)

    return ""

def create_username():

    name = random.choice(NAMES)
    surname = random.choice(SURNAMES)

    # return name + ' ' + surname
    return gen.name()

def create_date(previous_date = "2020-1-1"):
    """ Create a random date that happens AFTER previous_date."""

    p_y, p_m, p_d = (int(i) for i in previous_date.split('-'))

    y = random.randint(p_y, 2022)
    m = random.randint(p_m if y == p_y else 1, 12)
    d = random.randint(p_d if m == p_m else 1, 28 if m == 2 else 30)

    return "%s-%s-%s" % (y, str(m).zfill(2), str(d).zfill(2))

user_table = """
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT '',
    bio TEXT ,
    join_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    hashed_password BINARY(32),
    salt BINARY(16),
    UNIQUE(name)
) ENGINE=INNODB;
"""

friendship_table = """
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
"""

activity_table = """
CREATE TABLE IF NOT EXISTS activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    description VARCHAR(255) DEFAULT ''
) ENGINE=INNODB;
"""

post_table = """
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
"""

comment_table = """
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
"""

participation_table = """
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
"""

trigger_post_insert = """
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
"""

def create_triggers():
    print(trigger_post_insert)

N = 10
def fill_table(table_name, n=10):
    for _ in range(n):
        print(eval(f"create_{table_name}()"))


def create_fk(table_name, row):
    return str(random.randint(1, N))

def create_user():
    sql = "INSERT INTO user(name, bio) VALUES('%s', '%s');" % ( create_username(), create_string('sentence') )
    return sql

def create_activity():
    activity = ( create_activity_name(), create_string('sentence') )
    sql = "INSERT INTO activity(name, description) VALUES('%s', '%s');" % activity
    return sql

def create_post():
    post = (create_string('sentence'), create_fk("activity", "id"), create_fk("user", "id"), create_date(), create_string('paragraph'))
    sql = "INSERT INTO post(name, activity, creator, creation_time, body) VALUES('%s', %s, %s, '%s', '%s');" % post
    return sql

def create_participation():
    row = (create_fk("user", "id"), create_fk("activity", "id"))
    sql = "INSERT INTO participation(user, activity) VALUES(%s, %s);" % row
    return sql

def create_comment():
    comment = ( create_date(), create_fk("user", "id"), create_fk("post", "id"), create_string('paragraph'))
    sql = "INSERT INTO comment(creation_time, creator, post, body) VALUES('%s', %s, %s, '%s');" % comment
    return sql

def create_friendship():
    row = (create_fk("user", "id"), create_fk("user", "id"))
    sql = "INSERT INTO friendship(user_first, user_second) VALUES(%s, %s);" % row
    return sql


def main():

    tables = ["user", "activity", "post", "friendship", "participation", "comment"]

    for t in tables:
        try:
            print(f"DROP TABLE IF EXISTS {t};")
            print(eval(t + "_table"))
        except Exception as e:
            comment(e)

    create_triggers()

    for t in tables:
        fill_table(t, N)


if __name__ == "__main__":
    main()
