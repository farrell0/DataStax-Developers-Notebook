



// -------------------------------------------------


DROP KEYSPACE IF EXISTS ks_ngkv;

CREATE KEYSPACE ks_ngkv
   WITH replication = {'class': 'SimpleStrategy',
      'replication_factor': 1}
   AND graph_engine = 'Native';

USE ks_ngkv;


// -------------------------------------------------


CREATE TABLE user2
   (
   user_id              TEXT,
   gender               TEXT,
   age                  INT,
   PRIMARY KEY((user_id))
   )
   WITH VERTEX LABEL v_user2
   ;

CREATE TABLE genre2
   (
   genre_id             TEXT,
   name                 TEXT,
   PRIMARY KEY((genre_id))
   )
   WITH VERTEX LABEL v_genre2
   ;

CREATE TABLE person2
   (
   person_id            TEXT,
   name                 TEXT,
   PRIMARY KEY((person_id))
   )
   WITH VERTEX LABEL v_person2
   ;

CREATE TABLE movie2
   (
   movie_id             TEXT,
   duration             INT,
   country              TEXT,
   year                 INT,
   production           LIST<TEXT>,
   title                TEXT,
   PRIMARY KEY((movie_id))
   )
   WITH VERTEX LABEL v_movie2
   ;


// -------------------------------------------------


CREATE TABLE screenwriter2
   (
   movie_id             TEXT,
   person_id            TEXT,
   PRIMARY KEY((movie_id), person_id)
   )
   WITH EDGE LABEL e_screenwriter2
   FROM v_movie2(movie_id)
   TO v_person2(person_id);
CREATE MATERIALIZED VIEW e_screenwriter_bi2
   AS SELECT movie_id, person_id
   FROM screenwriter2
   WHERE
      movie_id IS NOT NULL
   AND
      person_id IS NOT NULL
   PRIMARY KEY ((person_id), movie_id);

CREATE TABLE cinematographer2
   (
   movie_id             TEXT,
   person_id            TEXT,
   PRIMARY KEY((movie_id), person_id)
   )
   WITH EDGE LABEL e_cinematographer2
   FROM v_movie2(movie_id)
   TO v_person2(person_id);
CREATE MATERIALIZED VIEW e_cinematographer_bi2
   AS SELECT movie_id, person_id
   FROM cinematographer2
   WHERE
      movie_id IS NOT NULL
   AND
      person_id IS NOT NULL
   PRIMARY KEY ((person_id), movie_id);

CREATE TABLE actor2
   (
   movie_id             TEXT,
   person_id            TEXT,
   id                   TEXT,
   PRIMARY KEY((movie_id), person_id, id)
   )
   WITH EDGE LABEL e_actor2
   FROM v_movie2(movie_id)
   TO v_person2(person_id);
CREATE MATERIALIZED VIEW e_actor_bi2
   AS SELECT movie_id, person_id
   FROM actor2
   WHERE
      movie_id IS NOT NULL
   AND
      person_id IS NOT NULL
   AND
      id IS NOT NULL
   PRIMARY KEY ((person_id), movie_id, id);

CREATE TABLE director2
   (
   movie_id             TEXT,
   person_id            TEXT,
   PRIMARY KEY((movie_id), person_id)
   )
   WITH EDGE LABEL e_director2
   FROM v_movie2(movie_id)
   TO v_person2(person_id);
CREATE MATERIALIZED VIEW e_director_bi2
   AS SELECT movie_id, person_id
   FROM director2
   WHERE
      movie_id IS NOT NULL
   AND
      person_id IS NOT NULL
   PRIMARY KEY ((person_id), movie_id);

CREATE TABLE composer2
   (
   movie_id             TEXT,
   person_id            TEXT,
   PRIMARY KEY((movie_id), person_id)
   )
   WITH EDGE LABEL e_composer2
   FROM v_movie2(movie_id)
   TO v_person2(person_id);
CREATE MATERIALIZED VIEW e_composer_bi2
   AS SELECT movie_id, person_id
   FROM composer2
   WHERE
      movie_id IS NOT NULL
   AND
      person_id IS NOT NULL
   PRIMARY KEY ((person_id), movie_id);


CREATE TABLE knows2
   (
   user_id_s            TEXT,
   user_id_d            TEXT,
   PRIMARY KEY((user_id_s), user_id_d)
   )
   WITH EDGE LABEL e_knows2
   FROM v_user2(user_id_s)
   TO v_user2(user_id_d);
CREATE MATERIALIZED VIEW e_knows_bi2
   AS SELECT user_id_s, user_id_d
   FROM knows2
   WHERE
      user_id_s IS NOT NULL
   AND
      user_id_d IS NOT NULL
   PRIMARY KEY ((user_id_d), user_id_s);

CREATE TABLE rated2
   (
   user_id              TEXT,
   movie_id             TEXT,
   rating               INT,
   PRIMARY KEY((user_id), movie_id)
   )
   WITH EDGE LABEL e_rated2
   FROM v_user2(user_id)
   TO v_movie2(movie_id);
CREATE MATERIALIZED VIEW e_rated_bi2
   AS SELECT user_id, movie_id
   FROM rated2
   WHERE
      user_id IS NOT NULL
   AND
      movie_id IS NOT NULL
   PRIMARY KEY ((user_id), movie_id);

CREATE TABLE belongs_to2
   (
   movie_id             TEXT,
   genre_id             TEXT,
   PRIMARY KEY((movie_id), genre_id)
   )
   WITH EDGE LABEL e_belongs_to2
   FROM v_movie2(movie_id)
   TO v_genre2(genre_id);
CREATE MATERIALIZED VIEW e_belongs_to_bi2
   AS SELECT movie_id, genre_id
   FROM belongs_to2
   WHERE
      movie_id IS NOT NULL
   AND
      genre_id IS NOT NULL
   PRIMARY KEY ((movie_id), genre_id);


// -------------------------------------------------


CREATE SEARCH INDEX ON ks_ngkv.rated2
   WITH COLUMNS rating { docValues : true };

CREATE SEARCH INDEX ON ks_ngkv.belongs_to2
   WITH COLUMNS genre_id { docValues : true };


//  I didn't do all of the secondary indexes yet-
//
//  Below is the index DDL from Artem's KillrVideo


   // Define vertex indexes

   // schema.vertexLabel("genre").index("genresByName").materialized().by("name").add()
   // schema.vertexLabel("person").index("personsByName").materialized().by("name").add()
   // schema.vertexLabel("user").index("usersByAge").secondary().by("age").add()

   // schema.vertexLabel("movie").index("moviesByTitle").materialized().by("title").add()
   // schema.vertexLabel("movie").index("search").search().by("title").asText().add()
   // schema.vertexLabel("movie").index("moviesByYear").secondary().by("year").add()

   // Define edge indexes

   // schema.vertexLabel("user").index("toMoviesByRating").outE("rated").by("rating").add()
   // schema.vertexLabel("movie").index("toUsersByRating").inE("rated").by("rating").add()


// -------------------------------------------------


COPY user2 (
   user_id,
   gender,
   age
   )
   FROM '20 KV data as pipe/10 user.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;

COPY genre2 (
   genre_id,
   name
   )
   FROM '20 KV data as pipe/11 genre.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;

COPY person2 (
   person_id,
   name
   )
   FROM '20 KV data as pipe/12 person.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;

COPY movie2 (
   movie_id,
   duration,
   country,
   year,
   production,
   title
   )
   FROM '20 KV data as pipe/13 movie.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;


// -------------------------------------------------


COPY screenwriter2 (
   movie_id,
   person_id
   )
   FROM '20 KV data as pipe/20 screenwriter.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;

COPY cinematographer2 (
   movie_id,
   person_id
   )
   FROM '20 KV data as pipe/21 cinematographer.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;

COPY actor2 (
   movie_id,
   person_id,
   id
   )
   FROM '20 KV data as pipe/22 actor.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;

COPY director2 (
   movie_id,
   person_id
   )
   FROM '20 KV data as pipe/23 director.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;

COPY composer2 (
   movie_id,
   person_id
   )
   FROM '20 KV data as pipe/24 composer.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;


// -------------------------------------------------


COPY knows2 (
   user_id_s,
   user_id_d
   )
   FROM '20 KV data as pipe/30 knows.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;

COPY rated2 (
   user_id,
   movie_id,
   rating
   )
   FROM '20 KV data as pipe/31 rated.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;

COPY belongs_to2 (
   movie_id,
   genre_id
   )
   FROM '20 KV data as pipe/32 belongs_to.pipe'
   WITH
      DELIMITER = '|'    
      AND
      HEADER = TRUE
   ;



   

