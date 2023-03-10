USE vk;

DROP TABLE IF EXISTS song_name;
CREATE TABLE song_name (
	id SERIAL,
	song_name VARCHAR(100) NOT NULL,
	
	INDEX idx_song_name(song_name)
) COMMENT 'song_name';

DROP TABLE IF EXISTS song_data;
CREATE TABLE song_data (
	song_data_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	song_artist VARCHAR(100) NOT NULL,
	song_album VARCHAR(100) NOT NULL,
	
	INDEX idx_song_artist_album(song_artist, song_album)
) COMMENT 'song_data';

ALTER TABLE song_data ADD CONSTRAINT songs_data_id
FOREIGN KEY (song_data_id) REFERENCES song_name(id);