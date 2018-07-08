INSERT INTO state (name, uuid) values ('A & N Islands', 'c42888c9-33e4-4aca-823d-7a3aa409f48c'::UUID) ON CONFLICT (name) DO NOTHING;
INSERT INTO district (name, uuid, state_id) values ('South Andaman', 'aafd935f-0a38-46ed-aa1a-0b5601e3ee1c'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Bambooflat', '44e0a55c-1186-44a9-84b7-c51f646f62be'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Tushnabad', '7ddd93ca-a7b9-41b4-9e0c-0974d5856127'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC R K Pur', 'dc105de3-431f-40e0-a7f1-85ba25c66721'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Ferrargunj', 'eef71a9d-302e-4da0-b570-9af21036b424'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Haddo', '8739f293-7759-497f-9ffd-951fb0cd5421'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('G.B.Pant Hospital', '2b1d5f68-d0c2-4a4c-9edf-29f5852e3a84'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Manglutan', '164f3a2a-7a40-4de5-aa68-371bdde2033d'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Hut Bay', '4cb0ad2a-5f1e-48a5-9280-858c3c74b8db'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Delanipur', '0b322c6a-9462-4b9b-ad49-ddf4cc9b7e30'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Shadipur', '1e84a19f-c700-461a-a84f-0cdf9d2b3ba4'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Dairy Farm', 'f27cb06d-93d1-4231-b349-fcf1b1626464'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Chouldari', '1cc6f76e-0dc7-439a-99d4-2d168159a24d'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Garacharma', '6d119450-c620-49df-9839-d46d62ba5112'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Havelock', '82432ecf-d123-4afa-8f3e-f7e4e423efe1'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Urban Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('UHC Junglighat', '752e288b-6111-4761-b989-0d288d0ce051'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Urban Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Neil Island', '6f5f5bfe-a15f-4dcc-bec8-87f7d4fe8912'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Wimberlygunj', '641e621d-d3a0-4fff-8718-350bb629ed07'::UUID, (SELECT district.id FROM district, state WHERE district.name='South Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO district (name, uuid, state_id) values ('Nicobar', '950aa47c-a579-4f92-a0ef-421d7186d737'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Katchal', '255eb6ec-1af6-45ba-9321-3fbd98f06596'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('BJR Hospital', 'f03aab2a-d199-4751-97bc-035c28196bfb'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Gandhinagar', 'b741ad6d-0b00-42e5-9f52-0ba5264247da'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Nancowry', 'f70c68da-7645-4e7e-a8af-b0e1bab2cccd'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Teressa', 'f8dd84f8-0f0d-410b-9173-a7e24952c4d1'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Campbell Bay', '6e8ea710-f125-4026-a234-069096b47020'::UUID, (SELECT district.id FROM district, state WHERE district.name='Nicobar' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO district (name, uuid, state_id) values ('North and Middle Andaman', 'a109960d-cea6-4953-a96b-275719cbb576'::UUID, (SELECT id FROM state WHERE name='A & N Islands')) ON CONFLICT (state_id, name) DO NOTHING;
INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kishori Nagar', '97de3714-b477-4ad9-99ce-4577386352c2'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kadamtala', '114787f8-d5db-456c-8b62-7912fa547675'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Rangat', '4d289fd5-fb5e-4cc2-8fd1-58e43d384114'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('District Hospital') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('Dr. R.P.Hospital', '6cc1d923-4dfb-441d-a4a0-006de739c5c6'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='District Hospital')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Tugapur', '916bc147-35f7-407c-b5c7-7bf8acda187c'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Community Health Centers') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('CHC Diglipur', 'edfd6673-e04f-46de-a4b6-b2cfcd1b0bac'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Community Health Centers')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Kalighat', '52fe9671-b830-41d7-a8ef-aacba50c9991'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Baratang', '532fe01f-bafe-4107-9e16-5f854777e547'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Billiground', 'a592914f-f29b-420b-b5e2-7b67836d7852'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Radha Nagar', '11d86e40-2ee3-45b0-b24a-08e6c722e800'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;

INSERT INTO facility_type (name) values('Primary Health Centres') on conflict (name) DO NOTHING;
INSERT INTO facility (name, uuid, district_id, facility_type_id) values ('PHC Long Island', '9613a3ff-d51d-4236-b660-6b69d33f4d77'::UUID, (SELECT district.id FROM district, state WHERE district.name='North and Middle Andaman' and state.name='A & N Islands' and district.state_id = state.id), (SELECT id from facility_type where name='Primary Health Centres')) on conflict (district_id, facility_type_id, name) do nothing;
