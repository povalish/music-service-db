
-- ARTISTS TABLE

CREATE TABLE artists (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  title text NOT NULL,
  hometown text NOT NULL,
  foundation_date date NOT NULL,
  bio text
);


-- ALBUMS TABLE

CREATE TABLE albums (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  title text NOT NULL,
  image text,
  release_date date
);


-- SONGS TABLE

CREATE TABLE songs (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  title text NOT NULL,
  lyrics text,
  duration_ms integer NOT NULL,
  is_public boolean DEFAULT TRUE
);

-- SONG RECORDS TABLE

create table song_records (
	id uuid default gen_random_uuid() PRIMARY KEY,
	artist_id uuid not null REFERENCES artists (id),
	song_id uuid not null REFERENCES songs (id),
  album_id uuid REFERENCES albums (id),
	release_data date default CURRENT_DATE
);

CREATE INDEX idx_song_records_artist_id ON song_records (artist_id);
CREATE INDEX idx_song_records_song_id ON song_records (song_id);
CREATE INDEX idx_song_records_album_id ON song_records (album_id);

CREATE INDEX idx_songs_title ON songs (title);
CREATE INDEX idx_albums_title ON albums (title);
CREATE INDEX idx_artists_title ON artists (title);


-- Taylor Swift

INSERT INTO artists (id, title, hometown, foundation_date, bio) 
VALUES 
('320ae8b0-d97a-43c7-8000-a45f414e72df', 'Taylor Swift', 'Reading, Pennsylvania', '1989-12-13', 'Taylor Alison Swift is an American singer-songwriter known for her narrative songwriting style');

INSERT INTO songs (id, title, lyrics, duration_ms, is_public)
VALUES 
('3ffcde32-ea05-464e-b8a3-2918080515d3', 'Love Story', 'We were both young when I first saw you', 235000, FALSE),
('90427452-99cf-467c-84d6-2ab25701f19c', 'Shake It Off', 'Cause the players gonna play, play, play, play, play', 219000, FALSE),
('2eff672a-37b1-4df1-af5b-10c71ec61e3a', 'Blank Space', 'Got a long list of ex-lovers, they''ll tell you I''m insane', 228000, TRUE);

INSERT INTO albums (id, title, image, release_date) 
VALUES 
('465ea6e0-a77c-4355-a3e4-2c214cc20b0c', 'Fearless', 'fearless.jpg', '2008-11-11'),
('e7765f2b-b2db-4831-8a5b-4167210746b8', '1989', '1989_album.jpg', '2014-10-27');

INSERT INTO song_records (artist_id, song_id, album_id)
VALUES
('320ae8b0-d97a-43c7-8000-a45f414e72df', '3ffcde32-ea05-464e-b8a3-2918080515d3', '465ea6e0-a77c-4355-a3e4-2c214cc20b0c'),
('320ae8b0-d97a-43c7-8000-a45f414e72df', '90427452-99cf-467c-84d6-2ab25701f19c', '465ea6e0-a77c-4355-a3e4-2c214cc20b0c'),
('320ae8b0-d97a-43c7-8000-a45f414e72df', '2eff672a-37b1-4df1-af5b-10c71ec61e3a', 'e7765f2b-b2db-4831-8a5b-4167210746b8');

-- Beyoncé

INSERT INTO artists (id, title, hometown, foundation_date, bio) 
VALUES 
('e82c7146-6a7b-4ef4-8d79-5b32ade2b116', 'Beyonce', 'Houston, Texas', '1981-09-04', 'Beyoncé Giselle Knowles-Carter is an American singer, actress, and producer');

INSERT INTO songs (id, title, lyrics, duration_ms, is_public) 
VALUES 
('77bc4d48-4bf8-49bc-aa4f-3f95eeb983e7', 'Halo', 'Remember those walls I built? Well, baby they''re tumbling down', 237000, FALSE),
('9ac90c95-436f-4e33-b72b-d28b24ffa43f', 'Crazy in Love', 'Got me looking so crazy right now Your love''s got me looking so crazy right now', 235000, TRUE),
('a32c2450-8443-4c91-853e-db2ac7b2bc31', 'Single Ladies (Put a Ring on It)', 'All the single ladies (All the single ladies) All the single ladies (All the single ladies)', 202000, TRUE);

INSERT INTO albums (id, title, image, release_date) 
VALUES 
('c55074f3-ca5d-4f10-8d2c-0575ef579d14', 'Lemonade', 'lemonade.jpg', '2016-04-23'),
('a3aa9757-aafd-4f6f-8c8e-0b8a6fbb091f', 'Beyoncé', 'beyonce.jpg', '2013-12-13');

INSERT INTO song_records (artist_id, song_id, album_id)
VALUES
('e82c7146-6a7b-4ef4-8d79-5b32ade2b116', '77bc4d48-4bf8-49bc-aa4f-3f95eeb983e7', 'c55074f3-ca5d-4f10-8d2c-0575ef579d14'),
('e82c7146-6a7b-4ef4-8d79-5b32ade2b116', '9ac90c95-436f-4e33-b72b-d28b24ffa43f', 'a3aa9757-aafd-4f6f-8c8e-0b8a6fbb091f'),
('e82c7146-6a7b-4ef4-8d79-5b32ade2b116', 'a32c2450-8443-4c91-853e-db2ac7b2bc31', 'a3aa9757-aafd-4f6f-8c8e-0b8a6fbb091f');

-- Ed Sheeran

INSERT INTO artists (id, title, hometown, foundation_date, bio) 
VALUES 
('977e3c4f-234d-467e-b8d8-30fa4aa97577', 'Ed Sheeran', 'Halifax, West Yorkshire', '1991-02-17', 'Edward Christopher Sheeran is an English singer-songwriter known for his acoustic pop sound');

INSERT INTO songs (id, title, lyrics, duration_ms)
VALUES
('be3c1234-ac68-4cc4-a171-7df00a52dd77', 'Shape of You', 'The club isn''t the best place to find a lover / So the bar is where I go', 233000),
('72129ecb-5cd3-472e-8635-03c023775b5f', 'Thinking Out Loud', 'When your legs don''t work like they used to before / And I can''t sweep you off of your feet', 281000),
('ccc36eaa-bdf6-4ad7-8827-7cb07082e6db', 'Castle on the Hill', 'When I was six years old, I broke my leg / I was running from my brother and his friends', 261000);

INSERT INTO albums (id, title, image, release_date) 
VALUES 
('6a2d4f72-5ee8-45ee-bbd0-63cf6913f020', 'Divide', 'divide.jpg', '2017-03-03'),
('fa310450-2047-49d2-b373-7ff3372e2190', 'X', 'multiply.jpg', '2014-06-20');

INSERT INTO song_records (artist_id, song_id, album_id)
VALUES
('977e3c4f-234d-467e-b8d8-30fa4aa97577', 'be3c1234-ac68-4cc4-a171-7df00a52dd77', '6a2d4f72-5ee8-45ee-bbd0-63cf6913f020'),
('977e3c4f-234d-467e-b8d8-30fa4aa97577', '72129ecb-5cd3-472e-8635-03c023775b5f', '6a2d4f72-5ee8-45ee-bbd0-63cf6913f020'),
('977e3c4f-234d-467e-b8d8-30fa4aa97577', 'ccc36eaa-bdf6-4ad7-8827-7cb07082e6db', 'fa310450-2047-49d2-b373-7ff3372e2190');

-- Led Zeppelin

INSERT INTO artists (id, title, hometown, foundation_date, bio) 
VALUES 
('b3d2cbdb-e1d9-4c6f-a34b-7dfcad75bdf3', 'Led Zeppelin', 'London', '1968-09-07', 'English rock band formed in London.');

INSERT INTO songs (id, title, lyrics, duration_ms)
VALUES 
('86de91e5-50bf-4157-986d-401b65226cac', 'Stairway to Heaven', 'There''s a lady who''s sure all that glitters is gold...', 480000),
('fee8399a-a307-4a4c-9dc0-30b4154e081d', 'Kashmir', 'Oh, let the sun beat down upon my face...', 420000),
('772a1c27-5eb7-4e80-a7bc-8d2a12296f45', 'Whole Lotta Love', 'You need cooling, baby, I''m not fooling...', 340000);

INSERT INTO albums (id, title, image, release_date) 
VALUES 
('6ddc3994-1436-43df-aea7-123b0ac33a7c', 'Led Zeppelin IV', 'ledzeppelin4.jpg', '1971-11-08'),
('f3b7bfef-d219-4835-8c2e-e3545a1b3aad', 'Physical Graffiti', 'physicalgraffiti.jpg', '1975-02-24');

INSERT INTO song_records (artist_id, song_id, album_id)
VALUES
('b3d2cbdb-e1d9-4c6f-a34b-7dfcad75bdf3', '86de91e5-50bf-4157-986d-401b65226cac', '6ddc3994-1436-43df-aea7-123b0ac33a7c'),
('b3d2cbdb-e1d9-4c6f-a34b-7dfcad75bdf3', 'fee8399a-a307-4a4c-9dc0-30b4154e081d', 'f3b7bfef-d219-4835-8c2e-e3545a1b3aad'),
('b3d2cbdb-e1d9-4c6f-a34b-7dfcad75bdf3', '772a1c27-5eb7-4e80-a7bc-8d2a12296f45', 'f3b7bfef-d219-4835-8c2e-e3545a1b3aad');

-- Queen

INSERT INTO artists (id, title, hometown, foundation_date, bio) 
VALUES 
('cf384c36-9d3c-4f08-a570-1437b743e1d3', 'Queen', 'London', '1970-06-27', 'British rock band led by Freddie Mercury.');

INSERT INTO songs (id, title, lyrics, duration_ms, is_public) 
VALUES 
('68647b69-3485-4f87-bcbf-0c6f05d38202', 'Bohemian Rhapsody', 'Is this the real life? Is this just fantasy?', 354000, FALSE),
('1e98d43c-bf43-442b-9b04-b5b4ee6136d5', 'We Will Rock You', 'Buddy you''re a boy, make a big noise...', 123000, FALSE),
('915db85d-80a3-4808-8529-397875fb7c7b', 'Another One Bites the Dust', 'Steve walks warily down the street...', 224000, TRUE);

INSERT INTO albums (id, title, release_date) 
VALUES 
('43186ad8-fdac-4793-9256-d928c3852781', 'A Night at the Opera', '1975-11-21'),
('d87f12a5-961b-4b5f-b058-144d831f10c2', 'The Game', '1980-06-30');

INSERT INTO song_records (artist_id, song_id, album_id)
VALUES
('cf384c36-9d3c-4f08-a570-1437b743e1d3', '68647b69-3485-4f87-bcbf-0c6f05d38202', '43186ad8-fdac-4793-9256-d928c3852781'),
('cf384c36-9d3c-4f08-a570-1437b743e1d3', '1e98d43c-bf43-442b-9b04-b5b4ee6136d5', 'd87f12a5-961b-4b5f-b058-144d831f10c2'),
('cf384c36-9d3c-4f08-a570-1437b743e1d3', '915db85d-80a3-4808-8529-397875fb7c7b', 'd87f12a5-961b-4b5f-b058-144d831f10c2');

-- The Beatles

INSERT INTO artists (id, title, hometown, foundation_date, bio) 
VALUES 
('1b58dcdf-fd8b-415a-a32d-6480e4b499d4', 'The Beatles', 'Liverpool', '1960-08-01', 'Legendary band from Liverpool, consisting of John Lennon, Paul McCartney, George Harrison, and Ringo Starr.');

INSERT INTO songs (id, title, lyrics, duration_ms)
VALUES 
('766467ae-df74-49e7-a1ca-f3d4472acb05', 'Hey Jude', 'Hey Jude, dont make it bad...', 432000),
('9d11b2d7-01d3-4cb1-9727-faaa2987e2be', 'Let It Be', 'When I find myself in times of trouble...', 237000),
('745f97bc-7cc0-453a-af7b-e1c7d072442c', 'Yesterday', 'Yesterday, all my troubles seemed so far away...', 150000);

INSERT INTO albums (id, title, release_date) 
VALUES 
('62099da8-56fc-40bd-ab3c-d3ea49b02f19', 'Abbey Road', '1969-09-26'),
('bec2ef82-66ef-41a7-be55-be25aff900d2', 'Sgt. Pepper''s Lonely Hearts Club Band', '1967-06-01');

INSERT INTO song_records (artist_id, song_id, album_id)
VALUES
('1b58dcdf-fd8b-415a-a32d-6480e4b499d4', '766467ae-df74-49e7-a1ca-f3d4472acb05', '62099da8-56fc-40bd-ab3c-d3ea49b02f19'),
('1b58dcdf-fd8b-415a-a32d-6480e4b499d4', '9d11b2d7-01d3-4cb1-9727-faaa2987e2be', '62099da8-56fc-40bd-ab3c-d3ea49b02f19'),
('1b58dcdf-fd8b-415a-a32d-6480e4b499d4', '745f97bc-7cc0-453a-af7b-e1c7d072442c', 'bec2ef82-66ef-41a7-be55-be25aff900d2');

-- Pink Floyd

INSERT INTO artists (id, title, hometown, foundation_date, bio) 
VALUES 
('17b19d6d-2677-44e8-83a2-55ed3b32e0b4', 'Pink Floyd', 'London', '1965-03-12', 'Progressive rock band known for concept albums like "The Dark Side of the Moon".');

INSERT INTO songs (id, title, lyrics, duration_ms, is_public)
VALUES 
('2c607bbe-df11-422c-9bf3-fa3101e3d4df', 'Wish You Were Here', 'So, so you think you can tell...', 334000, TRUE),
('8cbf6b9a-3474-466f-9bb0-a65995870c9f', 'Comfortably Numb', 'Hello? Hello? Hello?', 391000, FALSE),
('62aea836-107d-4a61-9da3-f804ea13c6d3', 'Another Brick in the Wall', 'We don''t need no education...', 344000, TRUE);

INSERT INTO albums (id, title, image, release_date) 
VALUES 
('77370ef4-f161-4b57-b644-ecafa276ce3b', 'The Dark Side of the Moon', 'darksideofthemoon.jpg', '1973-03-01'),
('184ef165-deee-4779-afd9-02c8e8d748d4', 'Wish You Were Here', 'wishyouwerehere.jpg', '1975-09-12');

INSERT INTO song_records (artist_id, song_id, album_id)
VALUES
('17b19d6d-2677-44e8-83a2-55ed3b32e0b4', '2c607bbe-df11-422c-9bf3-fa3101e3d4df', '184ef165-deee-4779-afd9-02c8e8d748d4'),
('17b19d6d-2677-44e8-83a2-55ed3b32e0b4', '8cbf6b9a-3474-466f-9bb0-a65995870c9f', '77370ef4-f161-4b57-b644-ecafa276ce3b'),
('17b19d6d-2677-44e8-83a2-55ed3b32e0b4', '62aea836-107d-4a61-9da3-f804ea13c6d3', '77370ef4-f161-4b57-b644-ecafa276ce3b');

-- AC/DC

INSERT INTO artists (id, title, hometown, foundation_date, bio) 
VALUES 
('2fcb3ab5-cc42-485e-8c2c-70aa84e77ce2', 'AC/DC', 'Sydney', '1973-11-04', 'Australian rock band known for hits like "Highway to Hell" and "Back in Black".');

INSERT INTO songs (id, title, lyrics, duration_ms)
VALUES
('2d39a166-95f5-4f05-bd5f-4404c21201e6', 'Back in Black', 'Back in black, I hit the sack...', 240000),
('df07baca-37ed-41e9-94c1-2a0bec69a6eb', 'Highway to Hell', 'Livin’ easy, lovin’ free...', 210000),
('6960c04a-5da7-46cd-9d75-b8f20c0e45ca', 'Thunderstruck', 'Sound of the drums...', 300000);

INSERT INTO albums (id, title, release_date) 
VALUES 
('a48214ca-7482-4784-9657-f442f9c4ef86', 'Back in Black', '1980-07-25'),
('f3655455-85b6-4dd3-b10c-2894d7b55db6', 'Highway to Hell', '1979-07-27');

INSERT INTO song_records (artist_id, song_id, album_id)
VALUES
('2fcb3ab5-cc42-485e-8c2c-70aa84e77ce2', '2d39a166-95f5-4f05-bd5f-4404c21201e6', 'a48214ca-7482-4784-9657-f442f9c4ef86'),
('2fcb3ab5-cc42-485e-8c2c-70aa84e77ce2', 'df07baca-37ed-41e9-94c1-2a0bec69a6eb', 'f3655455-85b6-4dd3-b10c-2894d7b55db6'),
('2fcb3ab5-cc42-485e-8c2c-70aa84e77ce2', '6960c04a-5da7-46cd-9d75-b8f20c0e45ca', 'f3655455-85b6-4dd3-b10c-2894d7b55db6');

-- Nirvana

INSERT INTO artists (id, title, hometown, foundation_date, bio) 
VALUES 
('81096988-ab49-4e9b-8d71-d50ac318af78', 'Nirvana', 'Seattle', '1987-01-01', 'Iconic grunge band fronted by Kurt Cobain.');


INSERT INTO songs (id, title, lyrics, duration_ms, is_public)
VALUES 
('092167a8-bcc5-4910-9aad-97623edd0c06', 'Smells Like Teen Spirit', 'Load up on guns, bring your friends, It''s fun to lose and to pretend', 300000, TRUE),
('36c3ef3b-0faf-4572-bc8a-ed14859c4478', 'Come as You Are', 'Come as you are, as you were, As I want you to be', 240000, TRUE),
('21dff3a3-fd90-4517-b7fc-e578aaae6482', 'Heart-Shaped Box', 'She eyes me like a Pisces when I am weak, I''ve been locked inside your heart-shaped box', 270000, FALSE);

INSERT INTO albums (id, title, release_date) 
VALUES 
('89536aeb-111d-4704-8add-074da12a19bc', 'Nevermind', '1991-09-24'),
('bae14363-d6a4-423d-a15f-0c8f6cf62202', 'In Utero', '1993-09-21');

INSERT INTO song_records (artist_id, song_id, album_id)
VALUES
('81096988-ab49-4e9b-8d71-d50ac318af78', '092167a8-bcc5-4910-9aad-97623edd0c06', '89536aeb-111d-4704-8add-074da12a19bc'),
('81096988-ab49-4e9b-8d71-d50ac318af78', '36c3ef3b-0faf-4572-bc8a-ed14859c4478', '89536aeb-111d-4704-8add-074da12a19bc'),
('81096988-ab49-4e9b-8d71-d50ac318af78', '21dff3a3-fd90-4517-b7fc-e578aaae6482', 'bae14363-d6a4-423d-a15f-0c8f6cf62202');

