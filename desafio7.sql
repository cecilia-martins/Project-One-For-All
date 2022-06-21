-- USE SpotifyClone;

-- SELECT * FROM SpotifyClone.user;
-- SELECT * FROM SpotifyClone.history_plays;
-- SELECT * FROM SpotifyClone.songs;
-- SELECT * FROM SpotifyClone.following_artists;
-- SELECT * FROM SpotifyClone.albums;
-- SELECT * FROM SpotifyClone.artists;
-- SELECT * FROM SpotifyClone.plano;

SELECT ART.artist_name AS artista, ALB.album_name AS album, COUNT(FA.id_artist) AS seguidores
FROM SpotifyClone.artists AS ART
JOIN SpotifyClone.albums AS ALB ON ART.id_artist = ALB.id_artist
JOIN SpotifyClone.following_artists AS FA ON FA.id_artist = ART.id_artist
GROUP BY ART.artist_name, ALB.album_name
ORDER BY seguidores DESC, artista, album;