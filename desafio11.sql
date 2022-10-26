SELECT song_name AS nome_musica,
CASE 
	WHEN song_name = 'The Bard’s Song' THEN REPLACE('The Bard’s Song', 'Bard', 'QA')
    WHEN song_name LIKE 'O Medo de Amar%' THEN REPLACE('O Medo de Amar é o Medo de Ser Livre', 'Amar', 'Code Review')
	WHEN song_name = 'Como Nossos Pais' THEN REPLACE('Como Nossos Pais', 'Pais', 'Pull Requests')
	WHEN song_name = 'BREAK MY SOUL' THEN REPLACE('BREAK MY SOUL', 'SOUL', 'CODE')
    WHEN song_name = 'ALIEN SUPERSTAR' THEN REPLACE('ALIEN SUPERSTAR', 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.songs
WHERE 
song_name LIKE '%Bard’s%'
OR song_name LIKE '%Amar%'
OR song_name LIKE '%Pais%'
OR song_name LIKE '%SOUL%'
OR song_name LIKE '%SUPERSTAR%'
ORDER BY song_name DESC;