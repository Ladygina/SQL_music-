INSERT INTO artists(artist_id,nickname) VALUES (1, 'Queen');
INSERT INTO artists(artist_id,nickname) VALUES (2, 'Scorpions');
INSERT INTO artists(artist_id,nickname) VALUES (3, 'Elthon John');
INSERT INTO artists(artist_id,nickname) VALUES (4, 'BTS');


INSERT INTO genre (genre_id, name) VALUES (1,'rock');
INSERT INTO genre (genre_id, name) VALUES (2,'rap');
INSERT INTO genre (genre_id, name) VALUES (3,'classic');
INSERT INTO genre (genre_id, name) VALUES (4, 'shanson');

INSERT INTO albums(album_id, name, year_) VALUES (1,'Queen1', 1997);
INSERT INTO albums(album_id, name, year_) VALUES (2,'Queen2', 1987);
INSERT INTO albums(album_id, name, year_) VALUES (3, 'BTS1', 2016);
INSERT INTO albums(album_id, name, year_) VALUES (4,'BTS2', 2019);
INSERT INTO albums(album_id, name, year_) VALUES (5,'Scorpions1', 1988);
INSERT INTO albums(album_id, name, year_) VALUES (6,'Scorpions2', 1981);

/* length in seconds */
INSERT INTO track(track_id, name, length, album_id) VALUES (1,'Show must go on', 230,1);
INSERT INTO track(track_id, name, length, album_id) VALUES (2,'Humanity', 121,5);
INSERT INTO track(track_id, name, length, album_id) VALUES (3,'Still loving you', 121,6);
INSERT INTO track(track_id, name, length, album_id) VALUES (4,'korean song1', 160,3);
INSERT INTO track(track_id, name, length, album_id) VALUES (5,'korean song2', 150,4);
INSERT INTO track(track_id, name, length, album_id) VALUES (6,'Shape of my heart', 250,2);

INSERT INTO archive(archive_id, name, year_) VALUES (1,'hard', 2000);
INSERT INTO archive(archive_id, name, year_) VALUES (2,'romantic',1999);
INSERT INTO archive(archive_id, name, year_) VALUES (3,'metal', 2019);
INSERT INTO archive(archive_id, name, year_) VALUES (4,'cringe', 2020);
INSERT INTO archive(archive_id, name, year_) VALUES (5,'Scorpions_2023', 2023);

/* extra tables many2many*/
INSERT INTO artists_genre(artist_id,genre_id) VALUES (1,1); /* Queen- rock*/
INSERT INTO artists_genre(artist_id,genre_id) VALUES (2,1); /* Scorpions - rock*/
INSERT INTO artists_genre(artist_id,genre_id) VALUES (3,3); /* Elthon John - classic*/
INSERT INTO artists_genre(artist_id,genre_id) VALUES (4,2); /* BTS - rap*/

INSERT INTO albums_artists(artist_id,album_id) VALUES (1,1); /*Queen - Queen1 */
INSERT INTO albums_artists(artist_id,album_id) VALUES (1,2); /*Queen - Queen2 */
INSERT INTO albums_artists(artist_id,album_id) VALUES (2,5); /*Scorpions - Scorpions1 */
INSERT INTO albums_artists(artist_id,album_id) VALUES (2,6); /*Scorpions - Scorpions2*/
INSERT INTO albums_artists(artist_id,album_id) VALUES (4,3); /*BTS - BTS1*/
INSERT INTO albums_artists(artist_id,album_id) VALUES (4,4); /*BTS - BTS2 */

INSERT INTO archive_tracks(archive_id,track_id) VALUES (1,1); /*Show must go on - hard*/
INSERT INTO archive_tracks(archive_id,track_id) VALUES (2,2); /*Humanity - romantic*/
INSERT INTO archive_tracks(archive_id,track_id) VALUES (2,3); /*Still loving you - romantic*/
INSERT INTO archive_tracks(archive_id,track_id) VALUES (4,4); /*korean_song1 -  cringe*/
INSERT INTO archive_tracks(archive_id,track_id) VALUES (4,5); /*korean_song2 -  cringe*/
INSERT INTO archive_tracks(archive_id,track_id) VALUES (2,6); /*shape of my heart - romantic*/