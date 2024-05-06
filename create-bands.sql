-- ARTIST TABLE

CREATE TABLE Artist (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  title text NOT NULL,
  hometown text NOT NULL,
  foundationDate date NOT NULL,
  bio text
);

INSERT INTO Artist (title, hometown, foundationDate, bio) 
VALUES 
('Taylor Swift', 'Reading, Pennsylvania', '1989-12-13', 'Taylor Alison Swift is an American singer-songwriter known for her narrative songwriting style');
('Beyoncé', 'Houston, Texas', '1981-09-04', 'Beyoncé Giselle Knowles-Carter is an American singer, actress, and producer'),
('Ed Sheeran', 'Halifax, West Yorkshire', '1991-02-17', 'Edward Christopher Sheeran is an English singer-songwriter known for his acoustic pop sound'),
('Led Zeppelin', 'London', '1968-09-07', 'English rock band formed in London.'),
('Queen', 'London', '1970-06-27', 'British rock band led by Freddie Mercury.'),
('The Beatles', 'Liverpool', '1960-08-01', 'Legendary band from Liverpool, consisting of John Lennon, Paul McCartney, George Harrison, and Ringo Starr.'),
('Pink Floyd', 'London', '1965-03-12', 'Progressive rock band known for concept albums like "The Dark Side of the Moon".'),
('AC/DC', 'Sydney', '1973-11-04', 'Australian rock band known for hits like "Highway to Hell" and "Back in Black".'),
('Nirvana', 'Seattle', '1987-01-01', 'Iconic grunge band fronted by Kurt Cobain.'),
('The Rolling Stones', 'London', '1962-07-12', 'Legendary rock band formed in London by Mick Jagger and Keith Richards.');


-- SONG TABLE

CREATE TABLE Song (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  title text NOT NULL,
  lyrics text,
  durationMs smallint NOT NULL,
  isPublic boolean DEFAULT TRUE
);

-- Taylor Swift

INSERT INTO Song (id, title, lyrics, durationMs, isPublic)
VALUES 
('550e8400-e29b-41d4-a716-446655440000', 'Love Story', 'We were both young when I first saw you', 235000, FALSE),
('550e8400-e29b-41d4-a716-446655440001', 'Shake It Off', 'Cause the players gonna play, play, play, play, play', 219000, FALSE),
('550e8400-e29b-41d4-a716-446655440002', 'Blank Space', 'Got a long list of ex-lovers, they'll tell you I'm insane', 228000, TRUE);

-- Beyoncé

INSERT INTO Song (id, title, lyrics, durationMs, isPublic) 
VALUES 
('1f9d08b1-85cb-4e55-bbde-128607aa5728', 'Halo', "Remember those walls I built? Well, baby they're tumbling down", 237000, FALSE),
('2c180c04-35b1-4265-8cde-060f3343bcbd', 'Crazy in Love', "Got me looking so crazy right now Your love''s got me looking so crazy right now", 235000, TRUE),
('3e235d5c-aec0-42b6-81ee-b2a65b4aab62', 'Single Ladies (Put a Ring on It)', 'All the single ladies (All the single ladies) All the single ladies (All the single ladies)', 202000, TRUE);

-- Ed Sheeran

INSERT INTO Song (id, title, lyrics, durationMs)
VALUES
  ('7b8f68b6-21c2-4cf7-a965-c9e9d3d4ce4c', 'Shape of You', 'The club isn''t the best place to find a lover / So the bar is where I go', 233000),
  ('48206d02-34d8-4e2b-b748-dcffb403d228', 'Thinking Out Loud', 'When your legs don''t work like they used to before / And I can''t sweep you off of your feet', 281000),
  ('3fb6fccc-16ab-4897-9fa8-ea6c13e55a03', 'Castle on the Hill', 'When I was six years old, I broke my leg / I was running from my brother and his friends', 261000);

-- Led Zeppelin

INSERT INTO Song (id, title, lyrics, durationMs)
VALUES 
  ('f7551c62-826a-4f35-8269-796d0732b96a', 'Stairway to Heaven', "There's a lady who's sure all that glitters is gold...", 480000),
  ('5ebdaa2f-5482-4c71-8a5c-6a4bb42a6566', 'Kashmir', 'Oh, let the sun beat down upon my face...', 420000),
  ('f76a4b74-fc71-439f-9d32-7c829794947f', 'Whole Lotta Love', "You need cooling, baby, I'm not fooling...", 340000);

-- Queen

INSERT INTO Song (id, title, lyrics, durationMs, isPublic) 
VALUES 
('a7a41936-68d1-4fc0-ad6a-2cfaa5cd438f', 'Bohemian Rhapsody', 'Is this the real life? Is this just fantasy?', 354000, FALSE),
('db8c4a34-a482-47e2-acfc-45c198fbd71d', 'We Will Rock You', 'Buddy you''re a boy, make a big noise...', 123000, FALSE),
('6014f42f-5996-40e2-a323-9221e93d1e9b', 'Another One Bites the Dust', 'Steve walks warily down the street...', 224000, TRUE);

-- The Beatles

INSERT INTO Song (id, title, lyrics, durationMs)
VALUES ('a3faf05b-2149-4e45-8300-6a40c6f0e316', 'Hey Jude', 'Hey Jude, dont make it bad...', 432000),
VALUES ('d21ee78b-405c-4ad7-8f46-8f4f939d82b7', 'Let It Be', 'When I find myself in times of trouble...', 237000),
VALUES ('f9c24020-dfa7-4e82-a1b6-7b1cc5f504fb', 'Yesterday', 'Yesterday, all my troubles seemed so far away...', 150000);

-- Pink Floyd

INSERT INTO Song (id, title, lyrics, durationMs, isPublic)
VALUES 
('550e8400-e29b-41d4-a716-446655440000', 'Wish You Were Here', 'So, so you think you can tell...', 334000, TRUE),
('6edee867-367f-47d6-af0f-4ed1be50b3ff', 'Comfortably Numb', 'Hello? Hello? Hello?', 391000, FALSE),
('d43378a8-6ba4-4eab-8b3b-f1b26a163e07', 'Another Brick in the Wall', 'We don''t need no education...', 344000, TRUE);

-- AC/DC

INSERT INTO Song (id, title, lyrics, durationMs)
VALUES
('550e8400-e29b-41d4-a716-446655440000', 'Back in Black', 'Back in black, I hit the sack...', 240000),
('550e8400-e29b-41d4-a716-446655440001', 'Highway to Hell', 'Livin’ easy, lovin’ free...', 210000),
('550e8400-e29b-41d4-a716-446655440002', 'Thunderstruck', 'Sound of the drums...', 300000);

-- Nirvana

INSERT INTO Song (id, title, lyrics, durationMs, isPublic)
VALUES 
('f7f91922-1c7a-4b85-8d18-5a9cfceb81b1', 'Smells Like Teen Spirit', "Load up on guns, bring your friends, It's fun to lose and to pretend", 300000, TRUE);
('2320f98a-0121-4b4b-9b2a-6f3adc3c0d74', 'Come as You Are', "Come as you are, as you were, As I want you to be", 240000, TRUE);
('7f3555dc-de20-4690-9b64-3f9c71fe16cf', 'Heart-Shaped Box', "She eyes me like a Pisces when I am weak, I've been locked inside your heart-shaped box", 270000, FALSE)
