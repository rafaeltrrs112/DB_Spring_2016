-- 4.
SELECT title, RANKING FROM
(SELECT DISTINCT all_movies.idMovies, all_movies.title, 'HATE' as RANKING FROM
  (
      (SELECT name, idGenre FROM
     (SELECT genre.idGenre as badGenre
       FROM User AS user
       INNER JOIN user_to_genre AS ug ON
       user.idUser = ug.idUser
       INNER JOIN Genre AS genre
       ON genre.idGenre = ug.idGenre AND user.idUser = 13
     ) AS unseengenre
     INNER JOIN Genre as g ON
     unseengenre.badGenre != g.idGenre) AS hated_genres
     )
 INNER JOIN Movies as all_movies ON
 hated_genres.idGenre = all_movies.idGenre -- ;
 WHERE idMovies IN (select idMovie from history where idUser = 13 AND percentage < 100)
 AND idMovies   IN (select idMovies from ratings where idUser = 13 AND rating BETWEEN 0 AND 1)) as group_one

UNION

SELECT DISTINCT title, RANKING FROM
(SELECT all_movies.idMovies, title, 'KINDA HATE' as RANKING FROM
  (
      (SELECT name, idGenre FROM
     (SELECT genre.idGenre as badGenre
       FROM User AS user
       INNER JOIN user_to_genre AS ug ON
       user.idUser = ug.idUser
       INNER JOIN Genre AS genre
       ON genre.idGenre = ug.idGenre AND user.idUser = 13
     ) AS unseengenre
     INNER JOIN Genre as g ON
     unseengenre.badGenre != g.idGenre) AS hated_genres
     )
 INNER JOIN Movies as all_movies ON
 hated_genres.idGenre = all_movies.idGenre -- ;
 WHERE idMovies IN (select idMovie from history where idUser = 13 AND percentage < 100)
 AND idMovies   IN (select idMovies from ratings where idUser = 13 AND rating BETWEEN 2 AND 3)) as group_one_half


 UNION

 SELECT DISTINCT title, RANKING FROM
 (SELECT idMovies, title, 'LOVE' as RANKING FROM
 (SELECT * FROM
 (SELECT genre.idGenre as genreId
   FROM User AS user
   INNER JOIN user_to_genre AS ug ON
   user.idUser = ug.idUser
   INNER JOIN Genre AS genre
   ON genre.idGenre = ug.idGenre AND user.idUser = 13) as liked_genres
   INNER JOIN Movies as m ON
   m.idGenre = liked_genres.genreId) as liked_movies
   INNER JOIN history AS h ON h.idMovie = liked_movies.idMovies
   where idMovies IN (SELECT idMovies FROM ratings where idUser = 13
 				 AND rating = 4 AND (h.percentage between 70 and 89))
 ) as group_two

UNION

SELECT uwtitle as title, 'REALLY LOVE' as RANKING FROM
(SELECT hatedmovie.idMovies, uwtitle FROM
  (SELECT movies.title as uwtitle , genre.idGenre as target, movies.idMovies as idMovies
  FROM User AS user
  INNER JOIN user_to_genre AS ug ON
  user.idUser = ug.idUser
  INNER JOIN Genre as genre
  ON genre.idGenre = ug.idGenre
  INNER JOIN Movies as movies ON
  movies.idGenre = genre.idGenre
  LEFT OUTER JOIN history on movies.idMovies = history.idMovie
  WHERE user.idUser = 13 AND history.idMovie is null) AS hatedmovie
INNER JOIN
(SELECT movies.idGenre as target
FROM Movies as movies
INNER JOIN history AS h ON h.idMovie = movies.idMovies
INNER JOIN ratings AS r ON movies.idMovies = r.idMovies
WHERE (h.percentage BETWEEN 90 AND 100) and r.idUser = 13 and r.rating = 5) AS goodgenre ON hatedmovie.target = goodgenre.target) as group_three;
