
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party1_id, party1_valid, party1_invalid from _2017_parliament_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party2_id, party2_valid, party2_invalid from _2017_parliament_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party3_id, party3_valid, party3_invalid from _2017_parliament_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party4_id, party4_valid, party4_invalid from _2017_parliament_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party5_id, party5_valid, party5_invalid from _2017_parliament_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party6_id, party6_valid, party6_invalid from _2017_parliament_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party7_id, party7_valid, party7_invalid from _2017_parliament_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party8_id, party8_valid, party8_invalid from _2017_parliament_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party9_id, party9_valid, party9_invalid from _2017_parliament_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party10_id, party10_valid, party10_invalid from _2017_parliament_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party11_id, party11_valid, party11_invalid from _2017_parliament_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party12_id, party12_valid, party12_invalid from _2017_parliament_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party13_id, party13_valid, party13_invalid from _2017_parliament_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party14_id, party14_valid, party14_invalid from _2017_parliament_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party15_id, party15_valid, party15_invalid from _2017_parliament_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party16_id, party16_valid, party16_invalid from _2017_parliament_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party17_id, party17_valid, party17_invalid from _2017_parliament_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party18_id, party18_valid, party18_invalid from _2017_parliament_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party19_id, party19_valid, party19_invalid from _2017_parliament_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party20_id, party20_valid, party20_invalid from _2017_parliament_votes where party20_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party21_id, party21_valid, party21_invalid from _2017_parliament_votes where party21_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party22_id, party22_valid, party22_invalid from _2017_parliament_votes where party22_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party23_id, party23_valid, party23_invalid from _2017_parliament_votes where party23_id is not null;
drop table _2017_parliament_votes;



insert into districts (id, district_code, district_name) select distinct region_id, CASE WHEN CAST(region_id as NUMBER) < 10 THEN '0' || region_Id ELSE region_id END, region_name from voting_locations_2017;
insert into districts (id, district_code, district_name) values(29, 'Чужбина', 'Чужбина');
insert into districts (id, district_code, district_name) values(30, 'Цялата страна', 'Цялата страна');

insert into municipalities (id, district_id, municipality_code, municipality_name) select distinct municipality_id, region_id, CASE WHEN CAST(municipality_id as NUMBER) < 10 THEN '0' || municipality_id ELSE municipality_id END, municipality_name from voting_locations_2017;


insert into municipality_regions (id, municipality_id, region_code, region_name) select distinct municipality_id + municipality_region_code, municipality_region_code, CASE WHEN CAST(municipality_region_code as NUMBER) < 10 THEN '0' || municipality_region_code ELSE municipality_region_code END, municipality_region_name from voting_locations_2017 where municipality_region_code != '';


insert into locations (id, district_id, municipality_id, location_type, location_name) select distinct location_id, region_id, (select id from municipalities where district_id=region_id and cast(municipalities.municipality_code as integer)=voting_locations_2017.municipality_id),
CASE 
	WHEN replace(location_name, 'ГР.', '') == region_name THEN 1
	ELSE 
		CASE WHEN replace(location_name, 'ГР.','') == municipality_name THEN 2
		ELSE
		 CASE WHEN substr(location_name, 0, 3) == 'ГР' THEN 3 ELSE 4
		END
	END
END, replace(replace(location_name, 'ГР.', ''), 'С.', '') from voting_locations_2017;
insert into locations(id, location_type, location_name) select ekatte, 5, location_name from _2011_president_1_sections where municipality_name='Чужбина';
insert into locations(id, location_type, location_name) select 999, 6, 'Цялата страна';

insert into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2017 where neighborhood != '';


INSERT OR IGNORE INTO voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2017.location_id and neighborhood=replace(voting_locations_2017.neighborhood, '"', '')) from voting_locations_2017;



INSERT OR IGNORE INTO parties (election_id, ballot_number, name) select 24,party_id, party_name from _2017_parliament_cik_parties;
drop table _2017_parliament_cik_parties;
INSERT OR IGNORE INTO parties (election_id, district_id, ballot_number, name) select 24, id, party_id, party_name from _2017_parliament_local_parties;
drop table _2017_parliament_local_parties;


insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 24, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2017_parliament_protocols;
drop table _2017_parliament_protocols;

insert into candidates (election_id, district_id, party_id, location_id, candidate_id, candidate_name) select 24, region_id, party_id, 999, candidate_id, candidate_name from _2017_parliament_local_candidates;
drop table _2017_parliament_local_candidates;

INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section) select 5, ekatte, section_id, mobile_section, ship_section from _2017_parliament_sections;
drop table _2017_parliament_sections;

insert into preferences (election_id, section_id, party_id, valid_votes, invalid_votes) select 24, section_id, party_id, valid_ballots, invalid_ballots from _2017_parliament_preferences;
drop table _2017_parliament_preferences;

update sections set address_id=(select id from voting_locations join voting_locations_2017 on voting_locations_2017.address=voting_locations.cik_address and sections.section_id=voting_locations_2017.
