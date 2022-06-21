-- USE SpotifyClone;

-- SELECT * FROM SpotifyClone.user;
-- SELECT * FROM SpotifyClone.history_plays;
-- SELECT * FROM SpotifyClone.songs;
-- SELECT * FROM SpotifyClone.following_artists;
-- SELECT * FROM SpotifyClone.albums;
-- SELECT * FROM SpotifyClone.artists;
-- SELECT * FROM SpotifyClone.plano;

SELECT COUNT(HP.id_user) AS quantidade_musicas_no_historico 
FROM SpotifyClone.history_plays AS HP
JOIN SpotifyClone.user AS US ON HP.id_user = US.id_user
WHERE US.name_user = 'Bill';