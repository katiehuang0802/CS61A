.read sp20data.sql

CREATE TABLE obedience AS
  SELECT seven, instructor FROM students;

CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students WHERE smallest > 2 ORDER BY smallest LIMIT 20;

CREATE TABLE matchmaker AS
  SELECT first.pet, first.song, first.color, second.color
  FROM students AS first, students AS second
  WHERE first.pet == second.pet and first.song == second.song and first.time < second.time;
