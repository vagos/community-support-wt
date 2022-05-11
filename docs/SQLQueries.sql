
-- user related querries
-- GIVEN_ID is the USER id to give for querry

-- get user password
SELECT password FROM User WHERE User.id=GIVEN_ID

-- get user info
SELECT name, email, join_date FROM User WHERE User.id = GIVEN_ID

-- get user activities
SELECT name FROM Participation JOIN Activity ON user WHERE user = GIVEN_ID

-- get user friend count
SELECT COUNT(user_second) FROM Friendship WHERE user_first=GIVEN_ID

-- get user friends
SELECT user_second FROM Friendship WHERE user_first=GIVEN_ID

-- get user posts
SELECT Post.id FROM Post JOIN User ON Post.creator = User.id WHERE User.id = GIVEN_ID

-- get user comments
SELECT * FROM Comment JOIN User ON Comment.creator = User.id WHERE User.id = GIVEN_ID


-- Activity relAted querries
-- GIVEN_NAME is the Activity name to give for querry

-- get activity info
SELECT name, description FROM Activity WHERE Activity.name = GIVEN_NAME

-- get Participant count
SELECT COUNT(*) FROM Participation WHERE Participation.activity = GIVEN_NAME

-- get all participants
-- Maybe this can be better with group by?
SELECT User FROM User JOIN Participation ON User.id == Participation.user WHERE Participation.activity = GIVEN_NAME

-- get activity post count
SELECT COUNT(*) FROM Post WHERE Post.activity = GIVEN_NAME

-- get all activity post count
SELECT activity.id , COUNT(post.activity) AS postCount FROM activity LEFT JOIN post ON post.activity = activity.id GROUP BY activity.id;

-- get all activity participant count
SELECT activity.id , COUNT(activity.id) AS userCount FROM activity LEFT JOIN participation ON participation.activity = activity.id GROUP BY activity.id;      

-- get activity posts
SELECT Post.id FROM Post WHERE Post.activity = GIVEN_NAME

-- get all actity post and user count
select users.id ,users.userCount, posts.postCount FROM (SELECT activity.id , COUNT(activity.id) AS userCount FROM activity LEFT JOIN participation ON participation.activity = activity.id GROUP BY activity.id) AS users JOIN (SELECT activity.id , COUNT(post.activity) AS postCount FROM activity LEFT JOIN post ON post.activity = activity.id GROUP BY activity.id) AS posts ON users.id = posts.id;

-- Get extended activity info
-- God have mercy on this querry

SELECT activity.* ,info.userCount, info.postCount FROM activity JOIN (select users.id ,users.userCount, posts.postCount FROM (SELECT activity.id , COUNT(activity.id) AS userCount FROM activity LEFT JOIN participation ON participation.activity = activity.id GROUP BY activity.id) AS users JOIN (SELECT activity.id , COUNT(post.activity) AS postCount FROM activity LEFT JOIN post ON post.activity = activity.id GROUP BY activity.id) AS posts ON users.id = posts.id) AS info ON activity.id = info.id;