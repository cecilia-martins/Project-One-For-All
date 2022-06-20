SELECT US.name_user as usuario,
	IF(MAX(HP.play_date) > "2020-12-31", "Usuario ativo", "Usuario inativo") AS condicao_usuario FROM SpotifyClone.user AS US
JOIN SpotifyClone.history_plays AS HP ON US.id_user = HP.id_user
GROUP BY US.name_user
ORDER BY US.name_user;