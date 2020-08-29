.read './db/structure.sql'
.read './db/elections/2019_european/voting_locations_2019_spring.sql'

insert or ignore into election_periods(id, name) values (9, 'Избори за членове на европейския парламент 2019');
insert or ignore into elections (id, name, round1_date, election_period_id) values
(28, 'Избори за членове на европейския парламент 2019', '2019-05-26', 9);

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


insert into temp_protocols (election_id, section_code, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 28, section_id, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all from _2019_european_protocols;
drop table _2019_european_protocols;

insert or ignore INTO voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2019_spring.location_id and neighborhood=replace(voting_locations_2019_spring.neighborhood, '"', '')) from voting_locations_2019_spring;

insert or ignore into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2019_spring where neighborhood != '';

insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 1, party_id, 999, party_name from _2019_european_parties;
drop table _2019_european_parties;

insert into candidates (election_id, location_id, party_ballot, candidate_id, candidate_name) select 28, 999, party_id, candidate_id, candidate_name from _2019_european_candidates;
drop table _2019_european_candidates;

insert or ignore into sections (election_period_id, location_id, section_code, mobile_section) select 9, (select id from locations where locations.ekatte=_2019_european_sections.ekatte), section_id, mobile_section from _2019_european_sections;
drop table _2019_european_sections;

insert into temp_preferences (election_id, section_code, party_id, candidate_id, valid_votes) select 28, section_id, party_id, candidate_id, preferences from _2019_european_preferences;
drop table _2019_european_preferences;

insert into temp_preferences (election_id, section_code, party_id, candidate_id, valid_votes, machine_voting) select 28, section_id, party_id, candidate_id, preferences, 1 from _2019_european_preferences_mv;
drop table _2019_european_preferences_mv;

insert or ignore into parties (name) select distinct name from temp_parties;
update sections set address_id=(select id from voting_locations join voting_locations_2019_spring on voting_locations_2019_spring.address=voting_locations.cik_address and sections.section_code=voting_locations_2019_spring.section_id) where election_period_id=9 and address_id is null;
update candidates set party_id=(select parties.id from temp_parties join parties on parties.name=temp_parties.name where candidates.election_id=28 and temp_parties.ballot_number=candidates.party_ballot and temp_parties.location_id=candidates.location_id) where election_id=28 and party_id is null;
drop table temp_parties;

insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes, machine_voting)  select election_id, sections.id, party_id, candidate_id, valid_votes, temp_preferences.machine_voting from temp_preferences join sections on sections.section_code=temp_preferences.section_code;
drop table temp_preferences;
insert into votes (election_id, round, section_id, ballot_number, valid_votes, invalid_votes)  select election_id, round, sections.id, ballot_number, valid_votes, invalid_votes from temp_votes join sections on sections.section_code=temp_votes.section_code;
drop table temp_votes;
insert into protocols (election_id, round, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select election_id, round, sections.id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one from temp_protocols join sections on sections.section_code=temp_protocols.section_code;
drop table temp_protocols;

update sections set address_id=(select id from voting_locations join voting_locations_2019_spring on voting_locations_2019_spring.address=voting_locations.cik_address and sections.section_code=voting_locations_2019_spring.section_id) where election_period_id=9 and address_id is null;
drop table voting_locations_2019_spring;
vacuum;