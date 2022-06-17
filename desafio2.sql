-- -- Crie uma QUERY que exiba três colunas: cancoes, artistas e albuns
-- SELECT COUNT(DISTINCT(song_name)) AS cancoes FROM songs; -- quantidade total de canções

-- SELECT COUNT(DISTINCT(artist_name)) AS artistas FROM artists; -- quantidade total de artistas

-- SELECT COUNT(DISTINCT(album_name)) AS albuns FROM albums; -- quantidade total de albuns

SELECT COUNT(DISTINCT(msc.id_song)) AS cancoes, COUNT(DISTINCT(art.id_artist)) AS artistas, COUNT(DISTINCT(alb.id_album)) AS albuns FROM SpotifyClone.songs AS msc
JOIN SpotifyClone.albums AS alb ON msc.id_album = alb.id_album -- juntando a tabela do album com a tabela de msc
JOIN SpotifyClone.artists AS art ON alb.id_artist = art.id_artist; -- ea do artista