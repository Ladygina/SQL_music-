/* 2 task */
SELECT name, length FROM track  
WHERE length=(SELECT MAX(length) FROM track);

SELECT name FROM track WHERE length>=210; 

SELECT name FROM archive WHERE year_>=2018 AND year_<=2020;

SELECT nickname FROM artists WHERE nickname NOT LIKE '% %';

SELECT name FROM track 
WHERE name ILIKE 'my %' 
OR name ILIKE '% my' 
OR name ILIKE '% my %' 
OR name ILIKE 'my';

/* 3 task */

SELECT COUNT(artist_id) FROM artists_genre GROUP BY (genre_id);

SELECT COUNT(track_id) FROM track t
                    LEFT JOIN albums a ON t.album_id = a.album_id
                    WHERE (a.year_ >=2019 AND a.year_<=2020);

SELECT AVG(length) FROM track t
                        LEFT JOIN albums a ON t.album_id = a.album_id
                        GROUP BY (a.album_id);

SELECT nickname
FROM artists 
WHERE nickname NOT IN ( 
    SELECT nickname 
    FROM artists art 
    JOIN albums_artists alb_art ON art.artist_id = alb_art.artist_id 
    JOIN albums alb  ON alb.album_id = alb_art.album_id 
    WHERE alb.year_ = 2020 
);

SELECT DISTINCT arch.name 
FROM archive arch 
JOIN archive_tracks arch_tr ON arch.archive_id = arch_tr.archive_id 
JOIN track tr ON arch_tr.track_id = tr.track_id 
JOIN albums alb ON alb.album_id = tr.album_id 
JOIN albums_artists alb_art ON  alb.album_id = alb_art.album_id 
JOIN artists art ON art.artist_id = alb_art.artist_id 
WHERE arch.name ILIKE '%Scorpions%' ;