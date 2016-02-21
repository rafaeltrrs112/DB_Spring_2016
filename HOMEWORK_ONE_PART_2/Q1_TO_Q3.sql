-- Get most likely to enjoy un-watched movies whose categories are
-- the same as the user's favorited categories, most highly rated movies
-- and watched movies.

-- 1. Likely to like by partial percentage
SELECT hatedmovie.idMovies
FROM
  (SELECT
     movies.title    AS uwtitle,
     genre.idGenre   AS target,
     movies.idMovies AS idMovies
   FROM User AS user
     INNER JOIN user_to_genre AS ug ON
                                      user.idUser = ug.idUser
     INNER JOIN Genre AS genre
       ON genre.idGenre = ug.idGenre
     INNER JOIN Movies AS movies ON
                                   movies.idGenre = genre.idGenre
     LEFT OUTER JOIN history ON movies.idMovies = history.idMovie
   WHERE user.idUser = 13 AND history.idMovie IS NULL) AS hatedmovie
  INNER JOIN
  (SELECT movies.idGenre AS target
   FROM Movies AS movies
     INNER JOIN history AS h ON h.idMovie = movies.idMovies
     INNER JOIN ratings AS r ON movies.idMovies = r.idMovies
   WHERE (h.percentage BETWEEN 90 AND 100) AND r.idUser = 13 AND r.rating BETWEEN 4 AND 5) AS goodgenre
    ON hatedmovie.target = goodgenre.target;

-- 2. Likely to like by partial percentage
SELECT hatedmovie.idMovies
FROM
  (SELECT
     movies.title    AS uwtitle,
     genre.idGenre   AS target,
     movies.idMovies AS idMovies
   FROM User AS user
     INNER JOIN user_to_genre AS ug ON
                                      user.idUser = ug.idUser
     INNER JOIN Genre AS genre
       ON genre.idGenre = ug.idGenre
     INNER JOIN Movies AS movies ON
                                   movies.idGenre = genre.idGenre
     LEFT OUTER JOIN history ON movies.idMovies = history.idMovie
   WHERE user.idUser = 13 AND history.idMovie IS NULL) AS hatedmovie
  INNER JOIN
  (SELECT movies.idGenre AS target
   FROM Movies AS movies
     INNER JOIN history AS h ON h.idMovie = movies.idMovies
     INNER JOIN ratings AS r ON movies.idMovies = r.idMovies
   WHERE h.percentage > 0 AND r.idUser = 13 AND r.rating BETWEEN 4 AND 5) AS goodgenre
    ON hatedmovie.target = goodgenre.target;

-- 3. Get most likely to hate, by obtaining movies that are the same
-- as those of movies the use has only partially watched and rated low
-- if they watched it and took the time to rate it low that means they must definitely
-- hate it. 2nd most likely to hate are partially watched movies without a rating or a category
-- like.
-- Get most likely to hate, by obtaining movies that are the same
-- as those of movies the use has only partially watched and rated low
-- if they watched it and took the time to rate it low that means they must definitely
-- hate it. 2nd most likely to hate are partially watched movies without a rating or a category
-- like.
SELECT DISTINCT
  title,
  RANKING
FROM
  (SELECT
     all_movies.idMovies,
     all_movies.title,
     'HATE' AS RANKING
   FROM
     (
       (SELECT
          name,
          idGenre
        FROM
          (SELECT genre.idGenre AS badGenre
           FROM User AS user
             INNER JOIN user_to_genre AS ug ON
                                              user.idUser = ug.idUser
             INNER JOIN Genre AS genre
               ON genre.idGenre = ug.idGenre AND user.idUser = 13
          ) AS unseengenre
          INNER JOIN Genre AS g ON
                                  unseengenre.badGenre != g.idGenre) AS hated_genres
       )
     INNER JOIN Movies AS all_movies ON
                                       hated_genres.idGenre = all_movies.idGenre -- ;
   WHERE idMovies IN (SELECT idMovie
                      FROM history
                      WHERE idUser = 13 AND percentage < 100)
         AND idMovies IN (SELECT idMovies
                          FROM ratings
                          WHERE idUser = 13 AND rating BETWEEN 0 AND 2)) AS group_one;

-- Ranked likes are
-- 1. Movies that match querty 1
-- 2. Movies of the same genre as liked genre.

-- case class Rating(like[], like-less[], hate[])
--
-- getRating(range : (Int, Int)) : Rating = {
-- val highest = Movies between range.low and range.high, 4 to 5
-- val high =  Movies between range.low and range.high WITHOUT a rating.
-- val low = Movies between range.low and range.high, 1 to 3
-- Rating(highest, high, low);
-- }
