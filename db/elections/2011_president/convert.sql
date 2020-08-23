
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party1_id, party1_valid_ballots from _2011_president_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party2_id, party2_valid_ballots from _2011_president_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party3_id, party3_valid_ballots from _2011_president_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party4_id, party4_valid_ballots from _2011_president_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party5_id, party5_valid_ballots from _2011_president_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party6_id, party6_valid_ballots from _2011_president_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party7_id, party7_valid_ballots from _2011_president_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party8_id, party8_valid_ballots from _2011_president_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party9_id, party9_valid_ballots from _2011_president_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party10_id, party10_valid_ballots from _2011_president_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party11_id, party11_valid_ballots from _2011_president_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party12_id, party12_valid_ballots from _2011_president_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party13_id, party13_valid_ballots from _2011_president_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party14_id, party14_valid_ballots from _2011_president_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party15_id, party15_valid_ballots from _2011_president_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party16_id, party16_valid_ballots from _2011_president_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party17_id, party17_valid_ballots from _2011_president_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party18_id, party18_valid_ballots from _2011_president_1_votes where party18_id is not null;
drop table _2011_president_1_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 23, section_id, party1_id, party1_valid_ballots from _2011_president_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 23, section_id, party2_id, party2_valid_ballots from _2011_president_2_votes where party2_id is not null;
drop table _2011_president_2_votes;

insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 22, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2011_president_1_protocols;
drop table _2011_president_1_protocols;
insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 23, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2011_president_2_protocols;
drop table _2011_president_2_protocols;


insert into districts (id, district_code, district_name) select distinct region_id, CASE WHEN CAST(region_id as NUMBER) < 10 THEN '0' || region_Id ELSE region_id END, region_name from voting_locations_2019;
insert into districts (id, district_code, district_name) values(29, 'Чужбина', 'Чужбина');
insert into districts (id, district_code, district_name) values(30, 'Цялата страна', 'Цялата страна');

insert into municipalities (id, district_id, municipality_code, municipality_name) select distinct municipality_id, region_id, CASE WHEN CAST(municipality_id as NUMBER) < 10 THEN '0' || municipality_id ELSE municipality_id END, municipality_name from voting_locations_2019;


insert into municipality_regions (id, municipality_id, region_code, region_name) select distinct municipality_id + municipality_region_code, municipality_region_code, CASE WHEN CAST(municipality_region_code as NUMBER) < 10 THEN '0' || municipality_region_code ELSE municipality_region_code END, municipality_region_name from voting_locations_2019 where municipality_region_code != '';

insert into location_types values 
(1, 'Областен град'),
(2, 'Община'),
(3, 'Град'),
(4, 'Село'),
(5, 'Чужбина'),
(6, 'Цялата страна');


insert into locations (id, district_id, municipality_id, location_type, location_name) select distinct location_id, region_id, (select id from municipalities where district_id=region_id and cast(municipalities.municipality_code as integer)=voting_locations_2019.municipality_id),
CASE 
	WHEN replace(location_name, 'ГР.', '') == region_name THEN 1
	ELSE 
		CASE WHEN replace(location_name, 'ГР.','') == municipality_name THEN 2
		ELSE
		 CASE WHEN substr(location_name, 0, 3) == 'ГР' THEN 3 ELSE 4
		END
	END
END, replace(replace(location_name, 'ГР.', ''), 'С.', '') from voting_locations_2019;
insert into locations(id, location_type, location_name) select ekatte, 5, location_name from _2011_president_1_sections where municipality_name='Чужбина';
insert into locations(id, location_type, location_name) select 999, 6, 'Цялата страна';

insert into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2019 where neighborhood != '';






insert into temp (region_code, location_id, full_code, location_name) select distinct locations.district_id || CASE WHEN cast(municipality_id as number) < 10 THEN '0' || municipality_id ELSE municipality_id END , locations.id, CASE WHEN cast(locations.district_id as number) < 10 THEN '0' || locations.district_id ELSE locations.district_id END || CASE WHEN cast(municipalities.municipality_code as number) < 10 THEN '0' || municipalities.municipality_code ELSE municipalities.municipality_code END || '. ', location_name from locations join municipalities on municipalities.id=locations.municipality_id;


insert into candidates (election_id, party_id, candidate_name) select 22, party_id, candidate_name || ' и ' || vice_candidate_name  from _2011_president_1_candidates;
drop table _2011_president_1_candidates;
insert into candidates (election_id, party_id, candidate_name) select 23, party_id, candidate_name || ' и ' || vice_candidate_name  from _2011_president_2_candidates;
drop table _2011_president_2_candidates;


INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 3, ekatte, section_id from _2011_president_1_sections;
drop table _2011_president_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 3, ekatte, section_id from _2011_president_2_sections;
drop table _2011_president_2_sections;