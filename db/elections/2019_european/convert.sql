insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party1_id, party1_valid, party1_invalid from _2019_european_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party2_id, party2_valid, party2_invalid from _2019_european_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party3_id, party3_valid, party3_invalid from _2019_european_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party4_id, party4_valid, party4_invalid from _2019_european_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party5_id, party5_valid, party5_invalid from _2019_european_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party6_id, party6_valid, party6_invalid from _2019_european_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party7_id, party7_valid, party7_invalid from _2019_european_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party8_id, party8_valid, party8_invalid from _2019_european_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party9_id, party9_valid, party9_invalid from _2019_european_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party10_id, party10_valid, party10_invalid from _2019_european_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party11_id, party11_valid, party11_invalid from _2019_european_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party12_id, party12_valid, party12_invalid from _2019_european_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party13_id, party13_valid, party13_invalid from _2019_european_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party14_id, party14_valid, party14_invalid from _2019_european_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party15_id, party15_valid, party15_invalid from _2019_european_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party16_id, party16_valid, party16_invalid from _2019_european_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party17_id, party17_valid, party17_invalid from _2019_european_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party18_id, party18_valid, party18_invalid from _2019_european_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party19_id, party19_valid, party19_invalid from _2019_european_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party20_id, party20_valid, party20_invalid from _2019_european_votes where party20_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party21_id, party21_valid, party21_invalid from _2019_european_votes where party21_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party22_id, party22_valid, party22_invalid from _2019_european_votes where party22_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party23_id, party23_valid, party23_invalid from _2019_european_votes where party23_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party24_id, party24_valid, party24_invalid from _2019_european_votes where party24_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party25_id, party25_valid, party25_invalid from _2019_european_votes where party25_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party26_id, party26_valid, party26_invalid from _2019_european_votes where party26_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 28, section_id, party27_id, party27_valid, party27_invalid from _2019_european_votes where party27_id is not null;
drop table _2019_european_votes;


insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party1_id, party1_valid, party1_invalid, true from _2019_european_votes_mv where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party2_id, party2_valid, party2_invalid, true from _2019_european_votes_mv where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party3_id, party3_valid, party3_invalid, true from _2019_european_votes_mv where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party4_id, party4_valid, party4_invalid, true from _2019_european_votes_mv where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party5_id, party5_valid, party5_invalid, true from _2019_european_votes_mv where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party6_id, party6_valid, party6_invalid, true from _2019_european_votes_mv where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party7_id, party7_valid, party7_invalid, true from _2019_european_votes_mv where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party8_id, party8_valid, party8_invalid, true from _2019_european_votes_mv where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party9_id, party9_valid, party9_invalid, true from _2019_european_votes_mv where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party10_id, party10_valid, party10_invalid, true from _2019_european_votes_mv where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party11_id, party11_valid, party11_invalid, true from _2019_european_votes_mv where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party12_id, party12_valid, party12_invalid, true from _2019_european_votes_mv where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party13_id, party13_valid, party13_invalid, true from _2019_european_votes_mv where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party14_id, party14_valid, party14_invalid, true from _2019_european_votes_mv where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party15_id, party15_valid, party15_invalid, true from _2019_european_votes_mv where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party16_id, party16_valid, party16_invalid, true from _2019_european_votes_mv where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party17_id, party17_valid, party17_invalid, true from _2019_european_votes_mv where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party18_id, party18_valid, party18_invalid, true from _2019_european_votes_mv where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party19_id, party19_valid, party19_invalid, true from _2019_european_votes_mv where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party20_id, party20_valid, party20_invalid, true from _2019_european_votes_mv where party20_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party21_id, party21_valid, party21_invalid, true from _2019_european_votes_mv where party21_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party22_id, party22_valid, party22_invalid, true from _2019_european_votes_mv where party22_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party23_id, party23_valid, party23_invalid, true from _2019_european_votes_mv where party23_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party24_id, party24_valid, party24_invalid, true from _2019_european_votes_mv where party24_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party25_id, party25_valid, party25_invalid, true from _2019_european_votes_mv where party25_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party26_id, party26_valid, party26_invalid, true from _2019_european_votes_mv where party26_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes, machine_voting)  select 28, section_id, party27_id, party27_valid, party27_invalid, true from _2019_european_votes_mv where party27_id is not null;
drop table _2019_european_votes_mv;


insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_public, ballots_in_box) select 28, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_public, ballots_in_box from _2019_european_protocols;
drop table _2019_european_protocols;

insert into districts (id, district_code, district_name) select distinct region_id, CASE WHEN CAST(region_id as NUMBER) < 10 THEN '0' || region_Id ELSE region_id END, region_name from voting_locations_2019_spring;
insert into districts (id, district_code, district_name) values(29, 'Чужбина', 'Чужбина');
insert into districts (id, district_code, district_name) values(30, 'Цялата страна', 'Цялата страна');

insert into municipalities (id, district_id, municipality_code, municipality_name) select distinct municipality_id, region_id, CASE WHEN CAST(municipality_id as NUMBER) < 10 THEN '0' || municipality_id ELSE municipality_id END, municipality_name from voting_locations_2019_spring;


insert into municipality_regions (id, municipality_id, region_code, region_name) select distinct municipality_id + municipality_region_code, municipality_region_code, CASE WHEN CAST(municipality_region_code as NUMBER) < 10 THEN '0' || municipality_region_code ELSE municipality_region_code END, municipality_region_name from voting_locations_2019_spring where municipality_region_code != '';

insert into location_types values 
(1, 'Областен град'),
(2, 'Община'),
(3, 'Град'),
(4, 'Село'),
(5, 'Чужбина'),
(6, 'Цялата страна');


insert into locations (id, district_id, municipality_id, location_type, location_name) select distinct location_id, region_id, (select id from municipalities where district_id=region_id and cast(municipalities.municipality_code as integer)=voting_locations_2019_spring.municipality_id),
CASE 
	WHEN replace(location_name, 'ГР.', '') == region_name THEN 1
	ELSE 
		CASE WHEN replace(location_name, 'ГР.','') == municipality_name THEN 2
		ELSE
		 CASE WHEN substr(location_name, 0, 3) == 'ГР' THEN 3 ELSE 4
		END
	END
END, replace(replace(location_name, 'ГР.', ''), 'С.', '') from voting_locations_2019_spring;

insert into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2019_spring where neighborhood != '';

INSERT OR IGNORE INTO voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2019_spring.location_id and neighborhood=replace(voting_locations_2019_spring.neighborhood, '"', '')) from voting_locations_2019_spring;

insert into temp (region_code, location_id, full_code, location_name) select distinct locations.district_id || CASE WHEN cast(municipality_id as number) < 10 THEN '0' || municipality_id ELSE municipality_id END , locations.id, CASE WHEN cast(locations.district_id as number) < 10 THEN '0' || locations.district_id ELSE locations.district_id END || CASE WHEN cast(municipalities.municipality_code as number) < 10 THEN '0' || municipalities.municipality_code ELSE municipalities.municipality_code END || '. ', location_name from locations join municipalities on municipalities.id=locations.municipality_id;

INSERT OR IGNORE INTO parties (election_id, ballot_number, name) select 28, party_id, party_name from _2019_european_parties;
drop table _2019_european_parties;

insert into candidates (election_id, party_id, location_id, candidate_id, candidate_name) select 28, party_id, 999, candidate_id, candidate_name from _2019_european_candidates;
drop table _2019_european_candidates;

INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 9, ekatte, section_id, mobile_section, ship_section, machine_voting from _2019_european_sections;
drop table _2019_european_sections;

insert into preferences (election_id, section_id, party_id, valid_votes) select 28, section_id, candidate_id, preferences from _2019_european_preferences;
drop table _2019_european_preferences;

insert into preferences (election_id, section_id, party_id, valid_votes, machine_voting) select 28, section_id, candidate_id, preferences, true from _2019_european_preferences_mv;
drop table _2019_european_preferences_mv;


update sections set address_id=(select id from voting_locations join voting_locations_2019_spring on voting_locations_2019_spring.address=voting_locations.cik_address and sections.section_id=voting_locations_2019_spring.section_id) where election_period_id=9 and address_id is null;