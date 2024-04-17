create table profile (
	id uuid default gen_random_uuid() PRIMARY KEY,
	accountId uuid not null,
	nickname varchar(20) not null,
	isPublic boolean default TRUE
);
insert into profile (id, accountId, nickname, isPublic) values ('ff0da384-02d4-4b7a-ba41-943361884b5c', 'b0c0cd93-b669-40f7-be47-4cf789ba457a', 'gigaadmin', false);
insert into profile (id, accountId, nickname, isPublic) values ('7f79eeff-f894-4ea5-ac90-81942688b4ef', '37fd1fee-256c-43eb-9b67-f92ac6b57c82', 'exuding', true);
insert into profile (id, accountId, nickname, isPublic) values ('7aa16eea-431e-43b7-be94-af6b514b6940', 'ea8d5baa-9e67-44c3-9083-27c632695e2f', 'opensystem', true);
insert into profile (id, accountId, nickname, isPublic) values ('d1010778-5f8c-4f42-9da6-0e94354d06c1', '7f7b3bee-c83f-4f41-8de2-68a99e48fc1e', 'workforce', true);
insert into profile (id, accountId, nickname, isPublic) values ('c24d7eee-451b-4181-bdaf-74b9f1bcdeb1', 'cd116080-b886-44ca-81a4-aed21c2b48b2', 'success', true);
insert into profile (id, accountId, nickname, isPublic) values ('0ca4f530-47dd-4fd7-b36a-3352021a22e2', '359f1e49-816a-4b1e-98a9-73c3fabc5f46', 'Seamless', true);
insert into profile (id, accountId, nickname, isPublic) values ('4e876907-d5bf-4f41-9de3-3e936ba008d2', 'b2c91ea6-57ad-4a3d-834c-78c7cce1a2e9', 'Cross-group', true);
insert into profile (id, accountId, nickname, isPublic) values ('4de5ef5e-7d94-4efb-9888-494254d6eb19', '486584a0-d833-4ed3-a1cd-e3772dec5a20', 'hardware', true);
insert into profile (id, accountId, nickname, isPublic) values ('3af99323-f392-411f-9efd-69ebd844b0d9', 'a2bd921d-66d4-4970-9299-e8b7ed3c240e', 'policy', true);
insert into profile (id, accountId, nickname, isPublic) values ('20b4e286-1389-4562-846a-7d7da2ef049b', 'b5cab5ee-b419-4bc5-bcd2-9fbd7aa13ddb', 'capability', true);
insert into profile (id, accountId, nickname, isPublic) values ('abcecf78-17e2-41bf-8e73-a551971bb030', 'ea41b60c-897f-43eb-816e-5b50c1455413', 'access', true);
insert into profile (id, accountId, nickname, isPublic) values ('a7f353c0-5bc1-4362-9b9a-0826758b87e8', '3df53b47-fcc6-4a21-ac2e-c1077890e8d6', 'Networked', false);
insert into profile (id, accountId, nickname, isPublic) values ('7b332a7e-971b-434e-bdb6-72f9e80e1574', 'ba2e05d9-2805-4e3e-9e77-ce900f73fad0', 'Managed', false);
insert into profile (id, accountId, nickname, isPublic) values ('fa9f0fdb-dc2b-44cf-b15d-45afd7542c94', '1bcb9f7b-185c-41a5-86c9-0f9cbc657c70', '3rdgeneration', true);
insert into profile (id, accountId, nickname, isPublic) values ('834422af-b225-4ee7-b240-2c60229c642e', '71e92700-7193-4318-bd9e-2ff92e45bc93', 'Horizontal', false);
insert into profile (id, accountId, nickname, isPublic) values ('176dc709-61c9-4894-9caa-867a21ba6671', '5ce57192-dd5b-4948-b430-9888487db372', 'emulation', false);
insert into profile (id, accountId, nickname, isPublic) values ('0822a617-c875-47c0-8634-9fa409d7d845', '4962cd12-5775-46d7-a9fa-e8899126fb33', 'Integrated', true);
insert into profile (id, accountId, nickname, isPublic) values ('bc3f004d-fcd2-49b1-bb69-c11a438d7ad0', '3591fe4d-6cff-4322-a8e4-a4eaeb193096', 'solution', true);
insert into profile (id, accountId, nickname, isPublic) values ('52e2f0a1-13db-4304-8da5-944a6e6c4660', 'ad419fc7-c55f-446c-9a28-531a9a4d941b', 'Multichannelled', false);
insert into profile (id, accountId, nickname, isPublic) values ('2e9dc39d-f2a7-4194-a06b-c18f40e6252f', '56934298-df9e-4b7b-8e40-33376ef4bb21', 'Functionbased', false);
