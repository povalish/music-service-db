create table permissions (
	id uuid default gen_random_uuid() PRIMARY KEY,
	code smallint,
	description text
);

insert into permissions (id, code, description) values 
('1562f13c-2532-426c-b866-0ce840043144', 100, 'Basic user. Can create: playlists. Can edit: playlists. Can delete: playlists.'),
('0db2bb74-e546-4824-99ad-474e5cf7eaa2', 110, 'Music creator. Can create: songs, albums. Can edit: playlists, songs, albums. Can delete: playlists, sonngs, albums.');


-- ACCOUNT TABLE

create table accounts (
	id uuid default gen_random_uuid() PRIMARY KEY,
	email varchar(50),
	password varchar(100),
	country varchar(20)
);

insert into accounts (id, email, password, country) 
values 
('b0c0cd93-b669-40f7-be47-4cf789ba457a', 'admin@musicify.com', '$2a$04$hWS9uvMfS.Q1ALoGkhpe0eYdTJlbHH4h7.7kPy/qMLQExccNqK5Be', 'Russia'),
('37fd1fee-256c-43eb-9b67-f92ac6b57c82', 'wmarcome1@free.fr', '$2a$04$wZF2XcsHmlaUEiyqqMWCguqNC1TzkPbP/T5i7VtERlrlY4Xt5J9hq', 'United States'),
('ea8d5baa-9e67-44c3-9083-27c632695e2f', 'lsambidge2@ihg.com', '$2a$04$UTFYsDuodYdZp8njhOzse.jxYQTvNdVHm5DAzWe0ABxqKce0z55AS', 'Czech Republic'),
('7f7b3bee-c83f-4f41-8de2-68a99e48fc1e', 'kbartlosz3@chronoengine.com', '$2a$04$vc.ZlQnUiafEDHd6k647eut67975LEb7xdeUkwdysiENfm0nGMWwa', 'Vietnam'),
('cd116080-b886-44ca-81a4-aed21c2b48b2', 'bburdin4@csmonitor.com', '$2a$04$iNf0EidoD3xpErOejucXruDWwlcQO2TQVBL3NgSxe9bhviqUgL8my', 'Indonesia'),
('359f1e49-816a-4b1e-98a9-73c3fabc5f46', 'mduffield5@drupal.org', '$2a$04$fZGk1kR20OXs1Mi/SPa0nOF1hXT8PFIY72cRuGjYep/BTIqpxqfd6', 'Portugal'),
('b2c91ea6-57ad-4a3d-834c-78c7cce1a2e9', 'gjiranek6@timesonline.co.uk', '$2a$04$u8gHC3FrhrL8XSDsFfaXWOySpA469SQEz18OQjMctKpSOtE.aPtJS', 'Philippines'),
('486584a0-d833-4ed3-a1cd-e3772dec5a20', 'gjayne7@ehow.com', '$2a$04$dUs6/zVeWjcUQjIbvTdaLe/x2s980vS6U9op4mvO3hVWZ8PLF7ScS', 'Japan'),
('a2bd921d-66d4-4970-9299-e8b7ed3c240e', 'erabidge8@timesonline.co.uk', '$2a$04$Np.B7jSL4YUW2Nboe1yva.xw0SPb4nKpwKfoUtYbXQZlrkLkZ1ewS', 'Indonesia'),
('b5cab5ee-b419-4bc5-bcd2-9fbd7aa13ddb', 'lorton9@state.tx.us', '$2a$04$bkZ7OlTw/ejFf7cNrtYI7.e4islztcHqErTpuHcNL/qsYOKokst5i', 'Armenia'),
('ea41b60c-897f-43eb-816e-5b50c1455413', 'mbullerwella@ca.gov', '$2a$04$o5izAwaiTOlXLREMbFyt4e7dDYn/1u6eDAHYgII00RUpWUVbdEWcC', 'Slovenia'),
('3df53b47-fcc6-4a21-ac2e-c1077890e8d6', 'dnorcrossb@nature.com', '$2a$04$LWjxeabJ/JIVjgUBQIdRQuKfFtmgC.POt0voe2xJRYXeUvKVMoJiS', 'China'),
('ba2e05d9-2805-4e3e-9e77-ce900f73fad0', 'shuitsonc@utexas.edu', '$2a$04$Gc4QwiUdvsnhthfzlagi0OEpL5jPTN/7HHFSFv.RCOxPAOvxUQgie', 'Brazil'),
('1bcb9f7b-185c-41a5-86c9-0f9cbc657c70', 'gpallind@cyberchimps.com', '$2a$04$1P0dvRjDEKic2YgEPrLGAuGU5qnJUh/t8ZskrwD2gCHSBs9kJn/Ay', 'Russia'),
('71e92700-7193-4318-bd9e-2ff92e45bc93', 'lacomee@gnu.org', '$2a$04$iy0TP9dUzzvdoN.jVVLxbultGINR6aWN.MbnD71GsN3PeRz/4CVI2', 'China'),
('5ce57192-dd5b-4948-b430-9888487db372', 'amcgurnf@usgs.gov', '$2a$04$eJ2n9fnXTIgB.3m3wz0GFuMaTuR5MpEktbKFjFRwKFQzuEaCY1OtG', 'Indonesia'),
('4962cd12-5775-46d7-a9fa-e8899126fb33', 'acherrettg@blogger.com', '$2a$04$riwtRQ.lQXFfU3pBVnA8ke6q1EIHermIhJj3QEvT/FOoDwcish7WC', 'Czech Republic'),
('3591fe4d-6cff-4322-a8e4-a4eaeb193096', 'emiddlerh@wix.com', '$2a$04$OXLsBaX3Qtyn551uND8ycuJKTiqdDX1Ln40ptESpXS6z6QeLsvMx2', 'United Kingdom'),
('ad419fc7-c55f-446c-9a28-531a9a4d941b', 'lgreenleesi@histats.com', '$2a$04$RTzlNDqPJuBljDtJDYg08OYWnP3o2FR94fWoGcHzSR/XQKdKRFbRm', 'Senegal'),
('56934298-df9e-4b7b-8e40-33376ef4bb21', 'nmakinsonj@wiley.com', '$2a$04$diVMrOWYkPKsg2HRvke9W.lm5p8WVwqRvFyarjavKd0NrhX9f2QK6', 'Indonesia');

-- PROFILE TABLE

create table profiles (
	id uuid default gen_random_uuid() PRIMARY KEY,
	account_id uuid not null REFERENCES accounts (id),
	nickname varchar(25) not null,
	is_public boolean default TRUE
);

insert into profiles (id, account_id, nickname, is_public) 
values 
('ff0da384-02d4-4b7a-ba41-943361884b5c', 'b0c0cd93-b669-40f7-be47-4cf789ba457a', 'gigaadmin', false),
('7f79eeff-f894-4ea5-ac90-81942688b4ef', '37fd1fee-256c-43eb-9b67-f92ac6b57c82', 'exuding', true),
('7aa16eea-431e-43b7-be94-af6b514b6940', 'ea8d5baa-9e67-44c3-9083-27c632695e2f', 'opensystem', true),
('d1010778-5f8c-4f42-9da6-0e94354d06c1', '7f7b3bee-c83f-4f41-8de2-68a99e48fc1e', 'workforce', true),
('c24d7eee-451b-4181-bdaf-74b9f1bcdeb1', 'cd116080-b886-44ca-81a4-aed21c2b48b2', 'success', true),
('0ca4f530-47dd-4fd7-b36a-3352021a22e2', '359f1e49-816a-4b1e-98a9-73c3fabc5f46', 'Seamless', true),
('4e876907-d5bf-4f41-9de3-3e936ba008d2', 'b2c91ea6-57ad-4a3d-834c-78c7cce1a2e9', 'Cross-group', true),
('4de5ef5e-7d94-4efb-9888-494254d6eb19', '486584a0-d833-4ed3-a1cd-e3772dec5a20', 'hardware', true),
('3af99323-f392-411f-9efd-69ebd844b0d9', 'a2bd921d-66d4-4970-9299-e8b7ed3c240e', 'policy', true),
('20b4e286-1389-4562-846a-7d7da2ef049b', 'b5cab5ee-b419-4bc5-bcd2-9fbd7aa13ddb', 'capability', true),
('abcecf78-17e2-41bf-8e73-a551971bb030', 'ea41b60c-897f-43eb-816e-5b50c1455413', 'access', true),
('a7f353c0-5bc1-4362-9b9a-0826758b87e8', '3df53b47-fcc6-4a21-ac2e-c1077890e8d6', 'Networked', false),
('7b332a7e-971b-434e-bdb6-72f9e80e1574', 'ba2e05d9-2805-4e3e-9e77-ce900f73fad0', 'Managed', false),
('fa9f0fdb-dc2b-44cf-b15d-45afd7542c94', '1bcb9f7b-185c-41a5-86c9-0f9cbc657c70', '3rdgeneration', true),
('834422af-b225-4ee7-b240-2c60229c642e', '71e92700-7193-4318-bd9e-2ff92e45bc93', 'Horizontal', false),
('176dc709-61c9-4894-9caa-867a21ba6671', '5ce57192-dd5b-4948-b430-9888487db372', 'emulation', false),
('0822a617-c875-47c0-8634-9fa409d7d845', '4962cd12-5775-46d7-a9fa-e8899126fb33', 'Integrated', true),
('bc3f004d-fcd2-49b1-bb69-c11a438d7ad0', '3591fe4d-6cff-4322-a8e4-a4eaeb193096', 'solution', true),
('52e2f0a1-13db-4304-8da5-944a6e6c4660', 'ad419fc7-c55f-446c-9a28-531a9a4d941b', 'Multichannelled', false),
('2e9dc39d-f2a7-4194-a06b-c18f40e6252f', '56934298-df9e-4b7b-8e40-33376ef4bb21', 'Functionbased', false);

-- AccountPermission TABLE

create table account_permissions (
	id uuid default gen_random_uuid() PRIMARY KEY,
	account_id uuid not null REFERENCES accounts (id),
	permission_id uuid not null REFERENCES permissions (id),
	assignment_data DATE,
	assignment_by uuid REFERENCES accounts (id)
);

insert into account_permissions (id, account_id, permission_id, assignment_data, assignment_by) 
values
('98aa4e70-6ba2-4967-9769-a2322916893c', 'b0c0cd93-b669-40f7-be47-4cf789ba457a', '1562f13c-2532-426c-b866-0ce840043144', '02/10/2024', null),
('5229ecdc-c270-4066-be68-7cb7af109941', 'b0c0cd93-b669-40f7-be47-4cf789ba457a', '0db2bb74-e546-4824-99ad-474e5cf7eaa2', '02/10/2024', null),
('0ffe20c4-c574-4192-99f2-d12f0a2c7e0e', '37fd1fee-256c-43eb-9b67-f92ac6b57c82', '1562f13c-2532-426c-b866-0ce840043144', '08/18/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('133e7917-9d8c-4fa8-9e73-d4dfc152ffe8', 'ea8d5baa-9e67-44c3-9083-27c632695e2f', '1562f13c-2532-426c-b866-0ce840043144', '06/13/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('9a5822e9-0ea2-4c17-804a-e4f6aec960fe', '7f7b3bee-c83f-4f41-8de2-68a99e48fc1e', '1562f13c-2532-426c-b866-0ce840043144', '11/05/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('ef86f2b3-5918-44f0-ac76-cdcf401f2f7d', 'cd116080-b886-44ca-81a4-aed21c2b48b2', '1562f13c-2532-426c-b866-0ce840043144', '11/08/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('05ce2d87-844f-44a8-b0e3-d2dccd6f27eb', '359f1e49-816a-4b1e-98a9-73c3fabc5f46', '1562f13c-2532-426c-b866-0ce840043144', '05/25/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('20c397f0-625b-4640-a322-c020c59d8ca7', 'b2c91ea6-57ad-4a3d-834c-78c7cce1a2e9', '1562f13c-2532-426c-b866-0ce840043144', '02/06/2024', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('92d483e5-3fd4-480c-881e-60d4b7d52563', '486584a0-d833-4ed3-a1cd-e3772dec5a20', '1562f13c-2532-426c-b866-0ce840043144', '09/28/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('c3dacf7e-a5bc-40ef-a1ce-c037690a87ee', 'a2bd921d-66d4-4970-9299-e8b7ed3c240e', '1562f13c-2532-426c-b866-0ce840043144', '09/19/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('d647e165-1232-4745-9f3a-296962ab0070', 'b5cab5ee-b419-4bc5-bcd2-9fbd7aa13ddb', '1562f13c-2532-426c-b866-0ce840043144', '02/25/2024', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('a7f6c96d-a7e3-4956-b379-6148fb09fcf3', 'ea41b60c-897f-43eb-816e-5b50c1455413', '1562f13c-2532-426c-b866-0ce840043144', '07/07/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('7f809c81-8168-4a4b-a64d-afc26610334b', 'ea41b60c-897f-43eb-816e-5b50c1455413', '0db2bb74-e546-4824-99ad-474e5cf7eaa2', '06/21/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('b3c19476-7813-4899-9a12-5a6f995cee46', '3df53b47-fcc6-4a21-ac2e-c1077890e8d6', '1562f13c-2532-426c-b866-0ce840043144', '08/20/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('be117f4d-2e5d-468a-abd4-b9a0fb812c11', '3df53b47-fcc6-4a21-ac2e-c1077890e8d6', '0db2bb74-e546-4824-99ad-474e5cf7eaa2', '04/28/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('3deb663f-943c-4b8e-a6f0-868fe39ae6b7', 'ba2e05d9-2805-4e3e-9e77-ce900f73fad0', '1562f13c-2532-426c-b866-0ce840043144', '01/26/2024', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('d7a71d20-23f4-4fd4-959a-7f3a5a4dc54f', '1bcb9f7b-185c-41a5-86c9-0f9cbc657c70', '1562f13c-2532-426c-b866-0ce840043144', '09/27/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('dbea43c8-b87a-40ae-9ebb-231598db2dca', '71e92700-7193-4318-bd9e-2ff92e45bc93', '1562f13c-2532-426c-b866-0ce840043144', '10/11/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('617f6f81-c0e0-4d43-a614-9cefe552ad1a', '5ce57192-dd5b-4948-b430-9888487db372', '1562f13c-2532-426c-b866-0ce840043144', '11/19/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('4f354fb4-d300-444f-af8a-ea1db9b74f0a', '4962cd12-5775-46d7-a9fa-e8899126fb33', '1562f13c-2532-426c-b866-0ce840043144', '02/06/2024', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('d6133b07-0fd8-40d2-b870-d8e69ce600ed', '3591fe4d-6cff-4322-a8e4-a4eaeb193096', '1562f13c-2532-426c-b866-0ce840043144', '08/07/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('ac90407a-fe51-4239-910d-664d0fd6d141', '3591fe4d-6cff-4322-a8e4-a4eaeb193096', '0db2bb74-e546-4824-99ad-474e5cf7eaa2', '05/19/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('8f29b05d-4475-4ab7-bd6b-244247548f7c', 'ad419fc7-c55f-446c-9a28-531a9a4d941b', '1562f13c-2532-426c-b866-0ce840043144', '09/15/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('bd0ee7cb-71cb-4297-9308-ee14af00310d', 'ad419fc7-c55f-446c-9a28-531a9a4d941b', '0db2bb74-e546-4824-99ad-474e5cf7eaa2', '11/24/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('c0da7c08-0dc7-4c72-959a-7bce97732236', '56934298-df9e-4b7b-8e40-33376ef4bb21', '1562f13c-2532-426c-b866-0ce840043144', '05/08/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a'),
('1a22de4c-2ebc-4dca-b227-532c5b6b6c66', '56934298-df9e-4b7b-8e40-33376ef4bb21', '0db2bb74-e546-4824-99ad-474e5cf7eaa2', '06/17/2023', 'b0c0cd93-b669-40f7-be47-4cf789ba457a');