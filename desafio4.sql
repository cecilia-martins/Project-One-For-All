SELECT us.name_user as usuario,
	IF(MAX(h_play.play_date) > "2020-12-31", "Usuario ativo", "Usuario inativo") AS condicao_usuario FROM SpotifyClone.user AS us
JOIN SpotifyClone.history_plays AS h_play ON us.id_user = h_play.id_user
GROUP BY us.name_user
ORDER BY us.name_user;