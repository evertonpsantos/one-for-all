SELECT 
    s.song_name AS cancao, 
    COUNT(h.song_id) AS reproducoes
FROM
    SpotifyClone.history AS h
        INNER JOIN
    SpotifyClone.songs AS s ON h.song_id = s.song_id
GROUP BY song_name
ORDER BY reproducoes DESC, cancao 
LIMIT 2;