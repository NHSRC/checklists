INSERT INTO state (name, uuid) values ('A & N Islands', '51743fe4-1d9d-4cce-a24b-f860d4e7f305'::UUID) ON CONFLICT (name) DO NOTHING;
INSERT INTO district (name, uuid, state_id) values ('South Andaman', '9a3e0dcb-14cd-40df-a959-230e6a97951b'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Neil Island', 'db296c9e-a4c6-434a-9eaf-9edae817074a'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC R K Pur', 'd478f028-0713-40ac-abb2-51b8ef62721a'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Manglutan', '725d96f4-5402-46c4-a543-a36740b01b68'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Shadipur', '09fdb972-fc7e-4bce-a9f4-0978ce14f51a'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Wimberlygunj', '259f14e1-57b3-462b-9eb8-ae6e3732d7aa'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Delanipur', '6015a356-faf0-4af0-9735-dc105e012bea'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Haddo', 'edacd20f-1c79-4eab-bd92-d6a861007dad'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Garacharma', '8d40ffbe-45ef-4913-a985-6b01bcd6c3f1'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Havelock', 'edbb9717-7b81-45f6-a22a-7593dd501881'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Ferrargunj', '8dc025f0-46ec-4916-930a-8423b59f7ae3'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Hut Bay', '1317baaa-1da6-46af-ae42-0c946c55d459'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Tushnabad', '58d306c7-80f0-4a10-b47d-9c263943fd40'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Bambooflat', '9a9549f5-854b-407f-840e-dd5af3918c67'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Chouldari', '11ca3350-99ae-433c-9122-ec64d065da15'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Dairy Farm', '74591f92-37dc-4c87-bf8a-4311cb8e06c8'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('G.B.Pant Hospital', '58832bbf-db8e-47a7-a58b-e7eb300b4b55'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Junglighat', '7c3c4b60-f14a-4a77-9f87-f7c685e6cbfa'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO district (name, uuid, state_id) values ('North and Middle Andaman', '5954f3c3-652f-4aa2-9bf9-4d257de5b36f'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kishori Nagar', '9291440c-e31d-4b52-8ac0-0642e40c3d63'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kadamtala', '7a5404e1-10c9-4312-894b-f17d007cec58'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Rangat', '050c0371-e181-4189-b9d9-013432368ab0'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Tugapur', '21ed851c-65be-4217-9893-94afb4829e3d'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kalighat', '63d1fcf3-d19f-43f6-a19a-30c2f88160d2'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Radha Nagar', '38068f2d-9704-43cb-b8e3-00369ad377a5'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('Dr. R.P.Hospital', '521ff8c5-63ee-44a8-929b-80a45e0b4e5c'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Diglipur', '9d5ec971-5225-427b-9531-0a0a8bee5a1e'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Baratang', 'ee63ad7a-6b98-4a45-b4b2-3c99906088c8'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Long Island', '425b51b8-f927-4f9f-bf93-f07ee3298c09'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Billiground', 'd2dabbda-b559-4bf9-8eb8-cd48f33cf364'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO district (name, uuid, state_id) values ('Nicobar', 'ece57ff7-dafb-4aae-b02a-49980575294c'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('BJR Hospital', '3cb93e26-9f78-4fc3-b544-101524941e09'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Nancowry', '9384fa63-1034-4a29-ae13-85837f65ca75'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Gandhinagar', '51776229-192e-4341-b919-c15551647fca'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Teressa', '645e79fb-a323-4474-9960-9b86521c254d'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Campbell Bay', '31f1c8e9-f987-4057-9536-6da37cf05e6f'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Katchal', '484b42ab-96ec-4058-b12f-d851fe16d728'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;
