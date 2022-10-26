SELECT 
u.user_name AS usuario, 
IF (MAX(YEAR(h.date_played)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.user_id
GROUP BY h.user_id
ORDER BY u.user_name;