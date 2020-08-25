insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 1, party1_valid from _2009_parliament_partyvotes where party1_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 2, party2_valid from _2009_parliament_partyvotes where party2_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 3, party3_valid from _2009_parliament_partyvotes where party3_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 4, party4_valid from _2009_parliament_partyvotes where party4_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 5, party5_valid from _2009_parliament_partyvotes where party5_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 6, party6_valid from _2009_parliament_partyvotes where party6_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 7, party7_valid from _2009_parliament_partyvotes where party7_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 8, party8_valid from _2009_parliament_partyvotes where party8_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 9, party9_valid from _2009_parliament_partyvotes where party9_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 10, party10_valid from _2009_parliament_partyvotes where party10_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 11, party11_valid from _2009_parliament_partyvotes where party11_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 12, party12_valid from _2009_parliament_partyvotes where party12_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 13, party13_valid from _2009_parliament_partyvotes where party13_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 14, party14_valid from _2009_parliament_partyvotes where party14_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 15, party15_valid from _2009_parliament_partyvotes where party15_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 16, party16_valid from _2009_parliament_partyvotes where party16_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 17, party17_valid from _2009_parliament_partyvotes where party17_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 18, party18_valid from _2009_parliament_partyvotes where party18_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 19, party19_valid from _2009_parliament_partyvotes where party19_valid is not null;
drop table _2009_parliament_partyvotes;


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

INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 8, ekatte, section_id from _2009_parliament_sections;
drop table _2009_parliament_sections;

insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 1, major1_valid from _2009_parliament_majorvotes where major1_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 2, major2_valid from _2009_parliament_majorvotes where major2_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 3, major3_valid from _2009_parliament_majorvotes where major3_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 4, major4_valid from _2009_parliament_majorvotes where major4_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 5, major5_valid from _2009_parliament_majorvotes where major5_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 6, major6_valid from _2009_parliament_majorvotes where major6_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 7, major7_valid from _2009_parliament_majorvotes where major7_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 8, major8_valid from _2009_parliament_majorvotes where major8_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 9, major9_valid from _2009_parliament_majorvotes where major9_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 10, major10_valid from _2009_parliament_majorvotes where major10_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 11, major11_valid from _2009_parliament_majorvotes where major11_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 12, major12_valid from _2009_parliament_majorvotes where major12_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 13, major13_valid from _2009_parliament_majorvotes where major13_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 14, major14_valid from _2009_parliament_majorvotes where major14_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 15, major15_valid from _2009_parliament_majorvotes where major15_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 16, major16_valid from _2009_parliament_majorvotes where major16_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 17, major17_valid from _2009_parliament_majorvotes where major17_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 18, major18_valid from _2009_parliament_majorvotes where major18_valid is not null;
drop table _2009_parliament_majorvotes;
