-- USE SpotifyClone;

-- SELECT * FROM SpotifyClone.user;
-- SELECT * FROM SpotifyClone.history_plays;
-- SELECT * FROM SpotifyClone.songs;
-- SELECT * FROM SpotifyClone.following_artists;
-- SELECT * FROM SpotifyClone.albums;
-- SELECT * FROM SpotifyClone.artists;
-- SELECT * FROM SpotifyClone.plano;

SELECT ART.artist_name AS artista, ALB.album_name AS album 
FROM SpotifyClone.artists AS ART
JOIN SpotifyClone.albums AS ALB ON ART.id_artist = ALB.id_artist
WHERE ART.artist_name = 'Walter Phoenix'
ORDER BY ALB.album_name ASC;