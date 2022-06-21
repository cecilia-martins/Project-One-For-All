-- USE SpotifyClone;

-- SELECT * FROM SpotifyClone.user;
-- SELECT * FROM SpotifyClone.history_plays;
-- SELECT * FROM SpotifyClone.songs;
-- SELECT * FROM SpotifyClone.following_artists;
-- SELECT * FROM SpotifyClone.albums;
-- SELECT * FROM SpotifyClone.artists;
-- SELECT * FROM SpotifyClone.plano;

SELECT MSC.song_name AS nome, COUNT(HP.id_song) AS reproducoes
FROM SpotifyClone.songs AS MSC
JOIN SpotifyClone.history_plays AS HP ON MSC.id_song = HP.id_song
JOIN SpotifyClone.user AS US ON HP.id_user = US.id_user
JOIN SpotifyClone.plano AS P ON P.id_plano = US.id_plano
WHERE plano_type = 'gratuito' OR plano_type = 'pessoal'
GROUP BY MSC.song_name
ORDER BY MSC.song_name ASC;