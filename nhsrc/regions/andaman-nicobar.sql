INSERT INTO state (name, uuid) values ('A & N Islands', 'ee8ce9e5-55f5-4c2e-b9dd-d9d022dfd0ab'::UUID) ON CONFLICT (name) DO NOTHING;
INSERT INTO district (name, uuid, state_id) values ('South Andaman', 'bf52b8a3-7a67-4c05-a7cf-832bf6428a78'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Chouldari', '79c46ed9-83e5-4ae5-a39b-ce69e2cdb847'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Bambooflat', '639ab301-312d-4ea2-97d1-8d5aa49d1718'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Hut Bay', '75b0da84-3fbc-4b66-bbfb-290748a68725'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Ferrargunj', '49ca1582-7ed5-42e3-8a76-db604dd2f10b'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Neil Island', '1a4def53-0246-40e9-9342-adffc36dad40'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Manglutan', '936a9ca5-bb5f-4088-877e-871f0a4f8c63'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC R K Pur', '99bdf353-85e0-49d7-a0fd-df4ebfd1db26'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('G.B.Pant Hospital', '2bc93b4f-c42c-4e08-b3be-0c862b82f9c7'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Garacharma', 'd3ca7497-e126-482e-b43e-c5fbc7c367f1'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Wimberlygunj', '40927a1e-b036-4b7c-8235-4f61cbb45299'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Tushnabad', '5fa7b1bf-1e17-45a6-b024-066023a61ec1'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Junglighat', 'ae4c567a-f93e-4e07-a68b-6af0a9b9724a'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Delanipur', 'c3f0c6eb-458e-40ce-912c-48526c59ed12'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Shadipur', '5a28b248-bc70-4bb9-b9ff-5a5bb7c44c9c'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Haddo', 'c95fb34c-11ac-40a6-a8fd-bf9fa4aa9e56'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Havelock', '977a3f87-46e0-48dd-b9d0-1c4431929113'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Dairy Farm', '55500a9c-e7d8-42ef-9ee0-e201f3fe51ed'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO district (name, uuid, state_id) values ('Nicobar', '7f5b5789-195a-4d76-b814-da4795311aa5'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Campbell Bay', '98f150a6-14f0-4027-831e-42e1ee4d2ba3'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('BJR Hospital', 'fe2269f0-c812-4355-86c0-65c58aab56a7'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Teressa', 'ec4501d8-4026-41f0-b46f-c190d2a8e803'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Katchal', 'c2d9f469-016a-4d37-a69c-3b64563a2e3f'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Gandhinagar', '5bafe1fb-bcae-46b7-b640-d2bbdff3037f'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Nancowry', 'f8fec9a4-8d25-4242-a1f9-b071a10cc695'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO district (name, uuid, state_id) values ('North and Middle Andaman', '6a8a37ce-6e6d-4f41-b971-4c5700715242'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kadamtala', '78f0f1a0-9c86-4074-94aa-8660f87b7506'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Long Island', 'fed72598-5c26-4509-b53a-644d6454bdcc'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kishori Nagar', '1bedc136-3808-476e-a010-6f253150a593'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Radha Nagar', '586cb432-f912-4008-b562-81278b50729d'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('Dr. R.P.Hospital', 'e39bca06-3b25-4b28-b9b0-267f83092b3e'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kalighat', '028d1429-02bf-4924-bc6a-fca2bc3f6ae5'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Tugapur', '283aead4-58b7-4757-9d08-319b6c08a181'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Baratang', 'cb2468e1-2b54-4623-b317-fd2c6da38f49'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Billiground', '75d0d94d-d64c-4da9-aad6-635673b1ef74'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Rangat', 'a611ed0f-2cbc-4f5a-bdf3-acc9ffdc52b6'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Diglipur', '4142f0bd-65e3-4f8b-a738-db52ad263a91'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;
