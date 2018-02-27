INSERT INTO state (name, uuid) values ('A & N Islands', 'aad91264-5c1b-4b37-84b0-54e52f3d90ea'::UUID) ON CONFLICT (name) DO NOTHING;
INSERT INTO district (name, uuid, state_id) values ('North and Middle Andaman', 'f89c7582-a240-4d24-aebe-e584b5b28c49'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Diglipur', '04e4776c-4e6f-41bd-91e3-d0a7c0caaeaa'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kadamtala', '27177536-4878-4090-8179-0f29b7e39f32'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Billiground', 'fac99ab2-4334-48f6-8fa0-0b97370f9233'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('Dr. R.P.Hospital', '02b808b9-6586-4bff-bbb0-90d4d96c9ceb'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Long Island', 'f23d3b22-0375-4855-b382-b9332600d802'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kishori Nagar', '6163b397-db6f-4f79-8880-f190aa650e61'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Tugapur', '3d4ac3f5-2ae8-4123-a89a-b060d709e4dd'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Baratang', '40e6cf34-c06c-44eb-90cb-14f8c5c1b928'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Radha Nagar', '06534599-5b42-4d10-9203-27a609d28387'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kalighat', '21f5ad70-314e-450f-a234-11c71c3e2b1b'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Rangat', '769de5b0-99d7-4203-a491-256fa50787c2'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO district (name, uuid, state_id) values ('South Andaman', 'cc256eda-8f1e-4a1d-84ab-ef787264ddbf'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Junglighat', 'd1429acb-f21b-46b3-b0bf-04bd002a9f4c'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Tushnabad', '2942f7be-5b06-4985-93ad-f30e3c1a08ed'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Bambooflat', '1a35ba36-a90a-41d4-bf5a-35ea8b1c42a3'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Chouldari', '3393b1de-5af4-4991-9039-54fcd808178b'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Dairy Farm', 'a8a63764-61c1-46ca-96c1-7cdc90526b52'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Wimberlygunj', '394938b9-da91-4049-82aa-42b81e5fd893'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Manglutan', '5908829c-c6ba-48db-baa9-25107157ce22'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Havelock', '6cbbd681-e6f2-43a3-8004-10b1c658e446'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Delanipur', '7d65b9b6-730b-493f-a6d2-7d409ebaec87'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('G.B.Pant Hospital', '92b1fd49-c867-4463-b876-1dadcce9356a'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Haddo', 'eb7bc92e-385e-4e8c-9f8e-4a5efe28d8c7'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Garacharma', '1b4d2b1f-78b9-4bd9-ba0b-3e2e7a58ea22'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC R K Pur', '7a6e66d3-d8c9-43cc-8437-3e8bff673965'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Ferrargunj', 'c1689823-d37e-47aa-9074-cfe8cbc79564'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Hut Bay', 'e4ddebe1-8d7b-4d73-bb37-b5692757300f'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Neil Island', 'c2d510a9-b159-415f-874f-401d69dde253'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Shadipur', 'ce8222b4-e7fd-4df5-a594-23b2ac241972'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO district (name, uuid, state_id) values ('Nicobar', '511c2003-8a1a-438b-8fba-a58a724a591c'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Gandhinagar', '625d0e6d-882c-4125-87e6-49d2fdb9e378'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Nancowry', '45764d91-a2f5-4254-9f95-12a047b7c74b'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Campbell Bay', '054b64a1-0c76-4a00-8904-7889a3ca1b5b'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Katchal', '957e2f1c-1130-4592-8de6-83b54b5f1b19'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Teressa', '45538f04-d903-4042-a508-e2822c063742'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('BJR Hospital', '2d696ac6-139a-42ad-bf4d-71fc62819bb3'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;
