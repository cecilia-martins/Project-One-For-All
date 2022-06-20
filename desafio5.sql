-- USE SpotifyClone;

-- SELECT * FROM SpotifyClone.user;
-- SELECT * FROM SpotifyClone.history_plays;
-- SELECT * FROM SpotifyClone.songs;
-- SELECT * FROM SpotifyClone.following_artists;
-- SELECT * FROM SpotifyClone.albums;
-- SELECT * FROM SpotifyClone.artists;
-- SELECT * FROM SpotifyClone.plano;

SELECT MSC.song_name AS cancao, COUNT(HP.id_user) AS reproducoes FROM SpotifyClone.songs AS MSC
JOIN SpotifyClone.history_plays AS HP ON MSC.id_song = HP.id_song
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;