DROP TABLE IF EXISTS entries;

CREATE TABLE entries(
  id SERIAL PRIMARY KEY,
  author VARCHAR,
  photo_url TEXT,
  date_taken VARCHAR,
  like_counter INT
);
