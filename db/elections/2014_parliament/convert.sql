
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 1, party1_valid, party1_invalid from _2014_parliament_votes where party1_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 2, party2_valid, party2_invalid from _2014_parliament_votes where party2_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 3, party3_valid, party3_invalid from _2014_parliament_votes where party3_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 4, party4_valid, party4_invalid from _2014_parliament_votes where party4_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 5, party5_valid, party5_invalid from _2014_parliament_votes where party5_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 6, party6_valid, party6_invalid from _2014_parliament_votes where party6_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 7, party7_valid, party7_invalid from _2014_parliament_votes where party7_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 8, party8_valid, party8_invalid from _2014_parliament_votes where party8_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 9, party9_valid, party9_invalid from _2014_parliament_votes where party9_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 10, party10_valid, party10_invalid from _2014_parliament_votes where party10_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 11, party11_valid, party11_invalid from _2014_parliament_votes where party11_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 12, party12_valid, party12_invalid from _2014_parliament_votes where party12_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 13, party13_valid, party13_invalid from _2014_parliament_votes where party13_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 14, party14_valid, party14_invalid from _2014_parliament_votes where party14_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 15, party15_valid, party15_invalid from _2014_parliament_votes where party15_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 16, party16_valid, party16_invalid from _2014_parliament_votes where party16_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 17, party17_valid, party17_invalid from _2014_parliament_votes where party17_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 18, party18_valid, party18_invalid from _2014_parliament_votes where party18_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 19, party19_valid, party19_invalid from _2014_parliament_votes where party19_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 20, party20_valid, party20_invalid from _2014_parliament_votes where party20_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 21, party21_valid, party21_invalid from _2014_parliament_votes where party21_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 22, party22_valid, party22_invalid from _2014_parliament_votes where party22_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 23, party23_valid, party23_invalid from _2014_parliament_votes where party23_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 24, party24_valid, party24_invalid from _2014_parliament_votes where party24_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 25, party25_valid, party25_invalid from _2014_parliament_votes where party25_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 26, party26_valid, party26_invalid from _2014_parliament_votes where party26_valid is not null;
drop table _2014_parliament_votes;

insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_public, ballots_in_box) select 25, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_public, ballots_in_box from _2014_parliament_protocols;
drop table _2014_parliament_protocols;


INSERT OR IGNORE INTO parties (election_id, ballot_number, name) select 25, party_id, party_name from _2014_parliament_parties;
drop table _2014_parliament_parties;


insert into districts (id, district_code, district_name) select distinct region_id, CASE WHEN CAST(region_id as NUMBER) < 10 THEN '0' || region_Id ELSE region_id END, region_name from voting_locations_2019;
insert into districts (id, district_code, district_name) values(29, 'Чужбина', 'Чужбина');
insert into districts (id, district_code, district_name) values(30, 'Цялата страна', 'Цялата страна');

insert into municipalities (id, district_id, municipality_code, municipality_name) select distinct municipality_id, region_id, CASE WHEN CAST(municipality_id as NUMBER) < 10 THEN '0' || municipality_id ELSE municipality_id END, municipality_name from voting_locations_2019;


insert into municipality_regions (id, municipality_id, region_code, region_name) select distinct municipality_id + municipality_region_code, municipality_region_code, CASE WHEN CAST(municipality_region_code as NUMBER) < 10 THEN '0' || municipality_region_code ELSE municipality_region_code END, municipality_region_name from voting_locations_2019 where municipality_region_code != '';


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

insert into candidates (election_id, district_id, party_id, candidate_name) select 25, region_id, party_id, candidate_name from _2014_parliament_ind;
drop table _2014_parliament_ind;

insert into candidates (election_id, district_id, party_id, location_id, candidate_id, candidate_name) select 25, region_id, party_id, 999, candidate_id, candidate_name from _2014_parliament_candidates;
drop table _2014_parliament_candidates;

INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 6, ekatte, section_id, mobile_section, ship_section, machine_voting from _2014_parliament_sections;
drop table _2014_parliament_sections;


insert into preferences (election_id, section_id, party_id, valid_votes) select 23, section_id, party_id, votes from _2014_parliament_preferences;
drop table _2014_parliament_preferences;
