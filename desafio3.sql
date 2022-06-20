SELECT us.name_user AS usuario, COUNT(msc.id_song) AS qtde_musicas_ouvidas, ROUND(SUM((msc.duration_seconds) / 60), 2) AS total_minutos FROM SpotifyClone.user AS us
JOIN SpotifyClone.history_plays AS h_plays ON us.id_user = h_plays.id_user
JOIN SpotifyClone.songs AS msc ON h_plays.id_song = msc.id_song
GROUP BY us.name_user
ORDER BY us.name_user;