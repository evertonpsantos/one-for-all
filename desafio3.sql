SELECT 
    u.user_name AS usuario,
    COUNT(s.song_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(s.length_in_seconds) / 60, 2) AS total_minutos
FROM
    SpotifyClone.history AS h
        INNER JOIN
    SpotifyClone.songs AS s ON h.song_id = s.song_id
        INNER JOIN
    SpotifyClone.users AS u ON h.user_id = u.user_id
GROUP BY u.user_name
ORDER BY u.user_name;