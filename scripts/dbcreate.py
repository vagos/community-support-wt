import random
import string

# random.seed(999)

base = "./data"

def execute_sql(cursor, sql):
    return cursor.execute(sql)

with open(base + "/usernames.txt", "r") as member_name_file:

    member_names, member_surnames = member_name_file.read().strip().split('\n\n')

    NAMES = member_names.split('\n')
    SURNAMES = member_surnames.split('\n')

# with open(base + "/events.txt", "r") as events_file:
# 
#     event_categories, event_name_verbs, event_name_cause, event_places = events_file.read().strip().split('\n\n')
# 
#     event_name_verbs = event_name_verbs.split('\n')
#     event_name_cause = event_name_cause.split('\n')
#     event_categories = event_categories.split('\n')
#     event_places = event_places.split('\n')
# 
# with open(base + "/tasks.txt", "r") as tasks_file:
# 
#     task_verbs, task_targets = tasks_file.read().strip().split('\n\n')
# 
#     task_verbs = task_verbs.split('\n')
#     task_targets = task_targets.split('\n')


def create_string(l=20):
    return ''.join((random.choice(string.ascii_letters + ' ') for i in range(l)))

def create_username():

    name = random.choice(NAMES)
    surname = random.choice(SURNAMES)

    return name + ' ' + surname

def create_date(previous_date = "2020-1-1"):
    """ Create a random date that happens AFTER previous_date."""

    p_y, p_m, p_d = (int(i) for i in previous_date.split('-'))

    y = random.randint(p_y, 2022)
    m = random.randint(p_m if y == p_y else 1, 12)
    d = random.randint(p_d if m == p_m else 1, 28 if m == 2 else 30)

    return "%s-%s-%s" % (y, str(m).zfill(2), str(d).zfill(2))

table_user_sql = """
CREATE TABLE IF NOT EXISTS user (

    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL DEFAULT '',

) ENGINE=INNODB;
"""



def fill_user(n=10):

    for i in range(n):
        
        user_sql = "INSERT INTO user(name) VALUES('%s');" % create_username()
        print(user_sql)

def add_members(n=10):

    cmd = """
    CREATE TABLE IF NOT EXISTS "member" (
    "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" varchar(30) NOT NULL,
    "surname" varchar(30) NOT NULL,
    "date_of_birth" date DEFAULT NULL,
    "email" varchar(50) DEFAULT NULL,
    "city_of_residence" varchar(50) NULL,
    "phone_number" varchar(13) NULL
    );
    """
    print(cmd)

    execute_sql(cursor,cmd)

    for i in range(n):
        username = create_username(member_names, member_surnames)
        cmd = "INSERT INTO member (name, surname) VALUES('%s', '%s');" % username

        print(cmd)
        execute_sql(cursor,cmd)

def add_volunteers(n=10):

    cmd = """
    CREATE TABLE IF NOT EXISTS "volunteer"
    ("id" integer NOT NULL PRIMARY KEY REFERENCES "member" ("id"),
    "join_date" date NOT NULL
    );
    """

    print(cmd)

    execute_sql(cursor,cmd)

    def create_volunteer():

        _id = execute_sql(cursor,"SELECT id FROM member ORDER BY RANDOM() LIMIT 1").fetchone()[0]
        join_date = create_date()

        return (_id, join_date)

    for i in range(n):
        volunteer = create_volunteer()

        cmd = """
INSERT INTO volunteer VALUES('%s', '%s');
        """ % volunteer

        print(cmd)

        try:
            execute_sql(cursor,cmd)
        except sqlite3.IntegrityError:
            pass

def add_event_categories():

    cmd = """
    CREATE TABLE IF NOT EXISTS "event_category"
    ("name" varchar(30) NOT NULL PRIMARY KEY);
    """

    print(cmd)
    execute_sql(cursor,cmd)

    for c in event_categories:
        cmd = """
        INSERT INTO event_category (name) values('%s');
        """ % (c,)

        print(cmd)
        execute_sql(cursor,cmd)

def add_events(n=10):

    execute_sql(cursor," DROP TABLE IF EXISTS event;")

    sql = """
CREATE TABLE IF NOT EXISTS "event"
(
"id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
"name" VARCHAR(20) NOT NULL ,
"start_date" DATE NOT NULL ,
"end_date" DATE DEFAULT NULL ,
"place" VARCHAR(20) DEFAULT NULL ,
"description" VARCHAR(255) NOT NULL DEFAULT '',
"category" VARCHAR(20) DEFAULT NULL,
"organiser" integer DEFAULT NULL ,
CONSTRAINT "category_FK" FOREIGN KEY("category") REFERENCES "event_category"("name") ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT "organiser_FK" FOREIGN KEY("organiser") REFERENCES "employee"("id") ON DELETE SET NULL ON UPDATE CASCADE,
CHECK (start_date <= end_date)
);"""
    print(sql)
    execute_sql(cursor,sql)

    def create_event(categories, verbs, causes, places):

        event_name = random.choice(verbs) + ' ' + random.choice(causes)

        start_date = create_date()
        end_date = create_date(start_date)

        place = random.choice(places)
        description = create_string(20)
        category = random.choice(categories)

        organiser = execute_sql(cursor,"SELECT id FROM employee ORDER BY RANDOM() LIMIT 1").fetchone()[0]

        return (event_name, start_date, end_date, place, description, category, organiser)

    for i in range(n):
        event = create_event(event_categories, event_name_verbs, event_name_cause, event_places)

        cmd = """INSERT INTO event (name, start_date, end_date, place, description, category, organiser)
               values('%s', '%s', '%s', '%s', '%s', '%s', %d)""" % event

        print(cmd)
        execute_sql(cursor,cmd)

def add_employees(n=10):


    cmd = """
CREATE TABLE IF NOT EXISTS "employee"
(
    "id" int NOT NULL,
    "compensation" int NOT NULL DEFAULT 0,
    "position_name" varchar(30) NOT NULL DEFAULT '',

    CONSTRAINT "employee_fk" FOREIGN KEY("id") REFERENCES "member"("id") ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY("id")
);
    """

    print(cmd)

    execute_sql(cursor,cmd)

    def create_employee():

        _id = execute_sql(cursor,"SELECT id FROM member ORDER BY RANDOM() LIMIT 1").fetchone()[0]
        compensation = random.randint(100, 10_000)
        position_name = random.choice(["Head", "Manager", "Assistant Manager", "Assistant"])

        return (_id, compensation, position_name)

    for i in range(n):
        employee = create_employee()
        try:

            cmd = "INSERT INTO employee VALUES(%d, %d, '%s')" % employee

            print(cmd)

            execute_sql(cursor,cmd)

        except sqlite3.IntegrityError:
            pass

def add_tasks(n=10):

    cmd = """
CREATE TABLE IF NOT EXISTS "task"
(
"id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
"name" varchar(20) NOT NULL,
"due_date" date NOT NULL,
"entry_date" date DEFAULT NULL,
"difficulty" smallint NOT NULL DEFAULT '1',
"completed" book NOT NULL DEFAULT FALSE,
"creator" integer NOT NULL REFERENCES "employee"("id"),
"event" integer NOT NULL REFERENCES "event"("id")

CONSTRAINT difficulty_sov CHECK(difficulty >= 1 AND difficulty <= 10)
);
    """

    print(cmd)

    execute_sql(cursor,cmd)

    for i in range(n):
        task = create_task(task_verbs, task_targets)

        cmd = """INSERT INTO task (name, due_date, entry_date, difficulty, completed, creator, event)
       VALUES('%s', '%s', '%s', %d, %d, %d, %d)""" % task

        print(cmd)

        execute_sql(cursor,cmd)

def add_workson(n=10):

    cmd = """
    CREATE TABLE IF NOT EXISTS  "works_on"
    (
    volunteer integer NOT NULL,
    task integer NOT NULL,
    evaluation text NOT NULL DEFAULT '',

    PRIMARY KEY ("volunteer", "task"),
    CONSTRAINT "works_on_fk0" FOREIGN KEY("volunteer") REFERENCES "volunteer" ("id") ON DELETE CASCADE  ON UPDATE CASCADE,
    CONSTRAINT "works_on_fk1" FOREIGN KEY("task") REFERENCES "task" ("id") ON DELETE CASCADE  ON UPDATE CASCADE
    );
"""
    print(cmd)

    execute_sql(cursor,cmd)

    def create_workson():

        volunteer = execute_sql(cursor,"SELECT id FROM volunteer ORDER BY RANDOM() LIMIT 1").fetchone()[0]
        task = execute_sql(cursor,"SELECT id FROM task ORDER BY RANDOM() LIMIT 1").fetchone()[0]

        evaluation = "I think the task was done " + create_string(10);

        return (evaluation, task, volunteer)

    for i in range(n):
        workson = create_workson()

        cmd = """
        INSERT INTO works_on (evaluation, task, volunteer)
        VALUES('%s', %d, %d)
        """ % workson

        try:
            print(cmd)
            execute_sql(cursor,cmd)
        except:
            pass

def add_teamparticipations(n=10):

    cmd = """
    CREATE TABLE IF NOT EXISTS "team_participation"
    (
    "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    "start_date" date NOT NULL,
    "end_date" date NULL,
    "team" varchar(200) NOT NULL REFERENCES "team" ("name"),
    "volunteer" integer NOT NULL REFERENCES "volunteer" ("id")
    );
    """

    print(cmd)
    execute_sql(cursor,cmd)

    def create_teamparticipation():

        start_date = create_date()
        end_date = create_date(start_date) if random.random() < 0.4 else 'NULL'

        volunteer = execute_sql(cursor,"SELECT id FROM volunteer ORDER BY RANDOM() LIMIT 1").fetchone()[0]
        team = execute_sql(cursor,"SELECT name FROM team ORDER BY RANDOM() LIMIT 1").fetchone()[0]

        return (start_date, end_date, volunteer, team)

    for i in range(n):

        team_participation = create_teamparticipation()

        cmd = """
        INSERT INTO team_participation (start_date, end_date, volunteer, team) VALUES('%s', %s, %d, '%s')
        """ % team_participation

        try:
            print(cmd)
            execute_sql(cursor,cmd)
        except sqlite3.IntegrityError:
            pass

def add_eventorganisations(n=10):

    def create_eventorganisation():

        reason = "Event created because " + create_string(20)
        entry_date = "DATE('now')" # This should be before the event's start date.
        event_id_id = execute_sql(cursor,"SELECT id FROM event ORDER BY RANDOM() LIMIT 1").fetchone()[0]
        organiser_id_id = execute_sql(cursor,"SELECT id FROM employee ORDER BY RANDOM() LIMIT 1").fetchone()[0]

        return (reason, entry_date, event_id_id, organiser_id_id)

    for i in range(n):

        eventorganisation = create_eventorganisation()

        cmd = """
        INSERT INTO volunteer_eventorganisation (reason, entry_date, event_id_id, organiser_id_id) VALUES('%s', %s, %d, %d)
        """ % eventorganisation

        try:
            print(cmd)
            execute_sql(cursor,cmd)
        except sqlite3.IntegrityError:
            pass


def add_teams(n=10):

    with open(base + "/teams.txt", "r") as teams_file:

        team_targets, team_occupation = teams_file.read().strip().split('\n\n')

        team_targets    = team_targets.split('\n')
        team_occupation = team_occupation.split('\n')

    cmd = """
    CREATE TABLE IF NOT EXISTS team
    (
    "name" varchar(100) NOT NULL PRIMARY KEY,
    "description" varchar(300) NOT NULL
    );
    """

    print(cmd)

    execute_sql(cursor,cmd)

    for i in range(n):
        team = create_team(team_targets, team_occupation)

        cmd = """
        INSERT INTO team (name, description) VALUES('%s', '%s')
        """ % team

        print(cmd)

        try:
            execute_sql(cursor,cmd)
        except sqlite3.IntegrityError:
            pass

def add_eventparticipations(n=10):

    execute_sql(cursor,"DROP TABLE IF EXISTS event_participation")

    sql = "CREATE TABLE IF NOT EXISTS event_participation"
    sql += """ (
                "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                "member" INTEGER NOT NULL,
                "event" INTEGER NOT NULL,
                "impressions" TEXT DEFAULT NULL,

                CONSTRAINT "member_id_FK" FOREIGN KEY("member") REFERENCES "member"("id") ON DELETE SET NULL ON UPDATE CASCADE,
                CONSTRAINT "event_id_FK" FOREIGN KEY("event") REFERENCES "event"("id") ON DELETE SET NULL ON UPDATE CASCADE,
                UNIQUE ("member", "event")
            );"""

    print(sql)
    execute_sql(cursor,sql)

    def create_eventparticipation():

        impressions = "I thought the event was " + create_string(10)
        member = execute_sql(cursor,"SELECT id FROM member ORDER BY RANDOM() LIMIT 1").fetchone()[0]
        event = execute_sql(cursor,"SELECT id FROM event ORDER BY RANDOM() LIMIT 1").fetchone()[0]

        return (event, member, impressions)

    for i in range(n):
        event_participation = create_eventparticipation()

        cmd = """
        INSERT INTO event_participation (event, member, impressions) VALUES('%s', '%s', '%s')
        """ % event_participation

        try:
            print(cmd)
            execute_sql(cursor,cmd)
        except:
            pass

def add_incomes(n=0):

    sql = "CREATE TABLE IF NOT EXISTS income"
    sql += """ ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                "value" INTEGER NOT NULL DEFAULT '1',
                "date" DATE NOT NULL DEFAULT '',
                "participation" INTEGER NOT NULL,
                CONSTRAINT "income_FK" FOREIGN KEY("participation") REFERENCES "event_participation"("id") ON DELETE SET NULL ON UPDATE CASCADE
                 );"""

    print(sql)
    execute_sql(cursor,sql)

    def create_income():

        value = random.randint(1, 5000)
        date = create_date()
        participation = execute_sql(cursor,"SELECT id from event_participation ORDER BY RANDOM() LIMIT 1").fetchone()[0]

        return (value, date, participation)

    for i in range(n):

        income = create_income()

        cmd = """
INSERT INTO income (value, date, participation) VALUES('%s', '%s', %d)
        """ % income

        print(cmd)
        execute_sql(cursor,cmd)


def create_income():

    value = random.randint(1, 5000)
    date = create_date()
    participation = execute_sql(cursor,"SELECT id from event_participation ORDER BY RANDOM() LIMIT 1").fetchone()[0]

    income = (value, date, participation)

    cmd = """
INSERT INTO income (value, date, participation) VALUES('%s', '%s', %d)
        """ % income

    print(cmd)
    execute_sql(cursor,cmd)

def add_sales(n=10):

    sql = "CREATE TABLE IF NOT EXISTS sale"
    sql += """(
               "income" INTEGER NOT NULL,
               "ammount" INTEGER NOT NULL DEFAULT '1',
               "item_name" VARCHAR(20) NOT NULL DEFAULT '',
                CONSTRAINT "income_id_FK" FOREIGN KEY("income") REFERENCES "income"("id") ON UPDATE CASCADE ON DELETE CASCADE
               );"""
    print(sql)
    execute_sql(cursor,sql)

    def create_sale():

        create_income()
        income = execute_sql(cursor,"SELECT LAST_INSERT_ROWID()").fetchone()[0]
        ammount = random.randint(1, 100)
        item_name = create_string(20)

        return (income, ammount, item_name)

    for i in range(n):

        try:

            sale = create_sale()
            cmd = """
            INSERT INTO sale (income, ammount, item_name) VALUES(%d, %d, '%s')
            """ % sale
            print(cmd)
            execute_sql(cursor,cmd)

        except sqlite3.IntegrityError:
            pass

def add_services(n=10):

    sql = "CREATE TABLE IF NOT EXISTS service"
    sql += """("description" TEXT NOT NULL DEFAULT '',
               "income" INTEGER NOT NULL,
                CONSTRAINT "income_id_FK" FOREIGN KEY("income") REFERENCES "income"("id") ON UPDATE CASCADE ON DELETE CASCADE
               );"""
    print(sql)
    execute_sql(cursor,sql)

    def create_service():

        create_income()
        income = execute_sql(cursor,"SELECT LAST_INSERT_ROWID()").fetchone()[0]
        description = "This service is about " + create_string(10)

        return (description, income)

    for i in range(n):
    
        try:
            service = create_service()
            cmd = "INSERT INTO service (description, income) VALUES('%s', %d)" % service
            print(cmd)
            execute_sql(cursor,cmd)

        except sqlite3.IntegrityError:
            pass

def add_donations(n=10):

    sql = "CREATE TABLE IF NOT EXISTS donation"
    sql += """("message" TEXT DEFAULT NULL DEFAULT '',
               "income" INTEGER NOT NULL,
                CONSTRAINT "income_id_FK" FOREIGN KEY("income") REFERENCES "income"("id") ON UPDATE CASCADE
                );"""
    print(sql)
    execute_sql(cursor,sql)


    def create_donation():

        create_income()
        income = execute_sql(cursor,"SELECT LAST_INSERT_ROWID()").fetchone()[0]
        message = "Thanks! " + create_string(10)

        return (message, income)


    for i in range(n):

        try:
            donation = create_donation()
            cmd = """INSERT INTO donation (message, income) VALUES('%s', %d)""" % donation
            print(cmd)
            execute_sql(cursor,cmd)
        except sqlite3.IntegrityError:
            pass

def add_expenses(n=10):

    sql = "CREATE TABLE IF NOT EXISTS expense"
    sql += """("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
               "date" DATE NOT NULL,
               "value" INTEGER NOT NULL DEFAULT 1,
               "description" TEXT DEFAULT NULL,
               "event" INTEGER NOT NULL,
                CONSTRAINT "event_id_FK" FOREIGN KEY("event") REFERENCES "event"("id") ON DELETE SET NULL ON UPDATE CASCADE
                );"""
    print(sql)
    execute_sql(cursor,sql)

    def create_expense():

        date = create_date()
        value = random.randint(1, 10000)
        description = "This expense is for " + create_string(20)
        event = execute_sql(cursor,"SELECT id FROM event ORDER BY RANDOM() LIMIT 1").fetchone()[0]

        return (date, value, description, event)


    for i in range(n):

        expense = create_expense()

        cmd = "INSERT INTO expense (date, value, description, event) VALUES('%s', %d, '%s', %d)" % expense

        print(cmd)
        execute_sql(cursor,cmd)

def CreateViews():

    cmd = """
    CREATE VIEW team_members(volunteer_id, name, surname, team_name) AS
    SELECT M.id, M.name, M.surname, TP.team
    FROM team_participation as TP, member as M
    WHERE TP.volunteer = M.id;
    """
    print(cmd)
    execute_sql(cursor,cmd)

    cmd = """
    CREATE VIEW volunteer_task_assigned(volunteer_id, volunteer_name, volunteer_surname, task_id, task_name) AS
    SELECT M.id, M.name, M.surname, T.id, T.name
    FROM task as T, member as M, works_on as W
    WHERE W.task = T.id AND W.volunteer = M.id;
    """
    print(cmd)
    execute_sql(cursor,cmd)

    cmd = """
    CREATE VIEW active_event(name, id) AS
    SELECT name, id FROM event WHERE event.end_date > date('now') OR event.end_date is NULL;
    """
    print(cmd)
    execute_sql(cursor,cmd)

    cmd = """
    CREATE VIEW active_team_members(name, surname, id, team_name) AS
    SELECT M.name, M.surname, M.id, T.name
    FROM team_participation as TP JOIN team as T ON TP.team = T.name JOIN member as M ON TP.volunteer = M.id
    WHERE TP.end_date is NULL;
    """
    print(cmd)
    execute_sql(cursor,cmd)

def CreateTriggers():

    sql = """
CREATE TRIGGER correct_participation_date
BEFORE INSERT ON event_participation
BEGIN
    SELECT
        CASE
            WHEN NEW.event NOT IN (SELECT id FROM active_event) THEN
                RAISE (ABORT, 'No new participations allowed on this event. It is not active.')
            END;
END;
    """
    print(sql)
    execute_sql(cursor,sql)

    sql = """
CREATE TRIGGER double_team_participation
    BEFORE INSERT ON team_participation

    BEGIN
        SElECT
            CASE
                WHEN EXISTS (SELECT id FROM team_participation as TP WHERE TP.volunteer = NEW.volunteer AND TP.team = NEW.team AND TP.end_date is NULL) THEN
                    RAISE(ABORT, 'A volunteer cannot join the same team twice without leaving first.')
                END;
    END;
    """

    print(sql)
    execute_sql(cursor,sql)

    sql = """
CREATE TRIGGER correct_income_date
BEFORE INSERT ON income 
BEGIN 
    SELECT 
        CASE 
            WHEN NEW.date > date('now') THEN 
                RAISE(ABORT, 'An income cannot happen in the future!')
            END;
END;
    """

    print(sql)
    execute_sql(cursor,sql)

def CreateIndexes():

    sql = """
CREATE UNIQUE INDEX team_name_index
ON team(name)
"""
    print(sql)
    execute_sql(cursor,sql)

    sql = """
CREATE UNIQUE INDEX member_id_index
ON member(id)
"""
    print(sql)
    execute_sql(cursor,sql)

    sql = """
CREATE UNIQUE INDEX task_id_index
ON task(id)
"""
    print(sql)
    execute_sql(cursor,sql)

    sql = """
CREATE UNIQUE INDEX event_id_index
ON event(id)
"""
    print(sql)
    execute_sql(cursor,sql)

def add_admin(name, surname):

    cmd = f"""INSERT INTO member(name, surname) VALUES('{name}', '{surname}');"""
    print(cmd)
    execute_sql(cursor,cmd)

    member_id = execute_sql(cursor,"SELECT LAST_INSERT_ROWID()").fetchone()[0]

    cmd = f"""INSERT INTO volunteer VALUES({member_id}, '{create_date()}');"""
    print(cmd)
    execute_sql(cursor,cmd)

    cmd = f"""INSERT INTO employee VALUES({member_id}, {77777}, '{"Admin"}');"""
    print(cmd)
    execute_sql(cursor,cmd)

def main():

    print(table_user_sql)
    fill_user()


if __name__ == "__main__":
    main()
