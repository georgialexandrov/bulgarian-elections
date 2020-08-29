.read './db/structure.sql'
.read './db/elections/2017_parliament/voting_locations_2017.sql'

insert or ignore into election_periods(id, name) values (5, 'Парламентарни избори 2017');
insert or ignore into elections (id, name, round1_date, election_period_id) values
(24, 'Парламентарни избори 2017', '2017-03-26', 5);

insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party1_id, party1_valid, party1_invalid from _2017_parliament_votes where party1_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party2_id, party2_valid, party2_invalid from _2017_parliament_votes where party2_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party3_id, party3_valid, party3_invalid from _2017_parliament_votes where party3_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party4_id, party4_valid, party4_invalid from _2017_parliament_votes where party4_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party5_id, party5_valid, party5_invalid from _2017_parliament_votes where party5_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party6_id, party6_valid, party6_invalid from _2017_parliament_votes where party6_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party7_id, party7_valid, party7_invalid from _2017_parliament_votes where party7_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party8_id, party8_valid, party8_invalid from _2017_parliament_votes where party8_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party9_id, party9_valid, party9_invalid from _2017_parliament_votes where party9_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party10_id, party10_valid, party10_invalid from _2017_parliament_votes where party10_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party11_id, party11_valid, party11_invalid from _2017_parliament_votes where party11_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party12_id, party12_valid, party12_invalid from _2017_parliament_votes where party12_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party13_id, party13_valid, party13_invalid from _2017_parliament_votes where party13_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party14_id, party14_valid, party14_invalid from _2017_parliament_votes where party14_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party15_id, party15_valid, party15_invalid from _2017_parliament_votes where party15_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party16_id, party16_valid, party16_invalid from _2017_parliament_votes where party16_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party17_id, party17_valid, party17_invalid from _2017_parliament_votes where party17_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party18_id, party18_valid, party18_invalid from _2017_parliament_votes where party18_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party19_id, party19_valid, party19_invalid from _2017_parliament_votes where party19_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party20_id, party20_valid, party20_invalid from _2017_parliament_votes where party20_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party21_id, party21_valid, party21_invalid from _2017_parliament_votes where party21_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party22_id, party22_valid, party22_invalid from _2017_parliament_votes where party22_id is not null;
insert into temp_votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party23_id, party23_valid, party23_invalid from _2017_parliament_votes where party23_id is not null;
drop table _2017_parliament_votes;

insert into temp_protocols (election_id, section_code, section_type,total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 24, section_id, form_number,total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all from _2017_parliament_protocols;
drop table _2017_parliament_protocols;

insert or ignore into temp_parties (election_id, ballot_number, district_id, name) select 24, party_id, 999, party_name from _2017_parliament_cik_parties;
drop table _2017_parliament_cik_parties;
insert or ignore into temp_parties (election_id, district_id, ballot_number, name) select 24, id, party_id, party_name from _2017_parliament_local_parties;
drop table _2017_parliament_local_parties;

insert or ignore into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2017 where neighborhood != '';
insert or ignore INTO voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2017.location_id and neighborhood=replace(voting_locations_2017.neighborhood, '"', '')) from voting_locations_2017;

insert or ignore into candidates (election_id, district_id, party_ballot, candidate_id, candidate_name) select 24, region_id, party_id, candidate_id, candidate_name from _2017_parliament_local_candidates;
drop table _2017_parliament_local_candidates;

insert or ignore into sections (election_period_id, location_id, section_code, mobile_section, ship_section) select 5, (select id from locations where locations.ekatte=_2017_parliament_sections.ekatte), section_id, mobile_section, ship_section from _2017_parliament_sections;
drop table _2017_parliament_sections;

insert into temp_preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 24, section_id, party_id, candidate_id, valid_ballots from _2017_parliament_preferences;
drop table _2017_parliament_preferences;

insert or ignore into parties (name) select distinct name from temp_parties;
update sections set address_id=(select id from voting_locations join voting_locations_2017 on voting_locations_2017.address=voting_locations.cik_address and sections.section_code=voting_locations_2017.section_id) where election_period_id=5 and address_id is null;
update candidates set party_id=(select parties.id from temp_parties join parties on parties.name=temp_parties.name where candidates.election_id=24 and temp_parties.ballot_number=candidates.party_ballot and temp_parties.location_id=candidates.location_id) where election_id=24 and party_id is null;
drop table temp_parties;
drop table voting_locations_2017;
insert into votes (election_id, round, section_id, ballot_number, valid_votes, invalid_votes)  select election_id, round, sections.id, ballot_number, valid_votes, invalid_votes from temp_votes join sections on sections.section_code=temp_votes.section_id;
drop table temp_votes;
insert into protocols (election_id, round, section_id, section_type,total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select election_id, round, sections.id, section_type,total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one from temp_protocols join sections on sections.section_code=temp_protocols.section_code;
drop table temp_protocols;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes, machine_voting)  select election_id, sections.id, party_id, candidate_id, valid_votes, temp_preferences.machine_voting from temp_preferences join sections on sections.section_code=temp_preferences.section_id;
drop table temp_preferences;
vacuum;