
-- user related querries
-- GIVEN_ID is the USER id to give for querry

SELECT password FROM User WHERE User.id=GIVEN_ID

SELECT name, email, join_date FROM User WHERE User.id = GIVEN_ID


SELECT name FROM Participation JOIN Activity ON user_id WHERE user_id = GIVEN_ID

-- SELECT COUNT() FROM has_friendship_with GROUP BY

-- SELECT id FROM has_friendship_with

SELECT Post.id FROM Post JOIN User ON Post.user_id = User.id WHERE User.id = GIVEN_ID

SELECT Comment.id FROM Comment JOIN User ON Comment.user_id = User.id WHERE User.id = GIVEN_ID


-- Activity relAted querries
-- GIVEN_ID is the Activity id to give for querry

SELECT name, description FROM Activity WHERE Activity.id = GIVEN_ID

SELECT COUNT(*) FROM Participation WHERE Participation.activity_id = GIVEN_ID

-- Maybe this can be better with group by?
SELECT User.id FROM User JOIN Participation ON User.id == Participation.user_id WHERE Participation.activity_id = GIVEN_ID

SELECT COUNT(*) FROM Post WHERE Post.activity_id = GIVEN_ID

SELECT Post.id FROM Post WHERE Post.activity_id = GIVEN_ID
