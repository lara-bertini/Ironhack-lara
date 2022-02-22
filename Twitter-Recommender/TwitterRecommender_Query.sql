DROP TABLE ironhack.twitter_recommender.user_followers;
DROP TABLE ironhack.twitter_recommender.users;

CREATE TABLE ironhack.twitter_recommender.users
(
	u_id BIGINT NOT NULL PRIMARY KEY,
	u_name VARCHAR(256) NOT NULL,
	u_username VARCHAR(256) NOT NULL,
	u_followers_count BIGINT NOT NULL,
	u_following_count BIGINT NOT NULL,
	u_tweet_count BIGINT NOT NULL,
	u_listed_count BIGINT NOT NULL);

CREATE TABLE ironhack.twitter_recommender.user_followers
(
	relationship_id BIGINT NOT NULL PRIMARY KEY,
	origin_id BIGINT NOT NULL,
	following_id BIGINT NOT NULL,
	FOREIGN KEY(origin_id) REFERENCES ironhack.twitter_recommender.users(u_id),
	FOREIGN KEY(following_id) REFERENCES ironhack.twitter_recommender.users(u_id)
);

SELECT * FROM ironhack.twitter_recommender.user_followers;
SELECT * FROM ironhack.twitter_recommender.users;