create table Permission (
	id uuid default gen_random_uuid() PRIMARY KEY,
	code smallint,
	description text
);
insert into Permission (id, code, description) values ('1562f13c-2532-426c-b866-0ce840043144', 100, 'Basic user. Can create: playlists. Can edit: playlists. Can delete: playlists.');
insert into Permission (id, code, description) values ('0db2bb74-e546-4824-99ad-474e5cf7eaa2', 110, 'Music creator. Can create: songs, albums. Can edit: playlists, songs, albums. Can delete: playlists, sonngs, albums.');
