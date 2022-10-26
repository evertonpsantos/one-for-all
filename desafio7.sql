SELECT 
    at.artist_name AS artista,
    al.album_name AS album,
    COUNT(fa.artist_id) AS seguidores
FROM
    SpotifyClone.albums AS al
        INNER JOIN
    SpotifyClone.artists AS at ON at.artist_id = al.artist_id
        INNER JOIN
    SpotifyClone.followed_artists AS fa ON at.artist_id = fa.artist_id
GROUP BY at.artist_id , al.album_name
ORDER BY seguidores DESC , artista ASC , album ASC;