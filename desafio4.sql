SELECT US.name_user AS usuario,
	IF (MAX(YEAR(HP.play_date)) = '2021', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario FROM SpotifyClone.user AS US
JOIN SpotifyClone.history_plays AS HP ON US.id_user = HP.id_user
GROUP BY usuario
ORDER BY usuario;