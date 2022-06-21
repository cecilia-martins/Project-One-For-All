-- USE SpotifyClone;

-- SELECT * FROM SpotifyClone.user;
-- SELECT * FROM SpotifyClone.history_plays;
-- SELECT * FROM SpotifyClone.songs;
-- SELECT * FROM SpotifyClone.following_artists;
-- SELECT * FROM SpotifyClone.albums;
-- SELECT * FROM SpotifyClone.artists;
-- SELECT * FROM SpotifyClone.plano;

SELECT ROUND(MIN(price),2) AS faturamento_minimo, ROUND(MAX(price),2) AS faturamento_maximo,
 ROUND(AVG(price),2) AS faturamento_medio, ROUND(SUM(price),2) AS faturamento_total 
 FROM SpotifyClone.plano AS P
 JOIN SpotifyClone.user AS US ON US.id_plano = P.id_plano;