.read './db/structure.sql'
.read './db/elections/2016_president/voting_locations_2016.sql'

insert or ignore into election_periods(id, name) values (4, 'Президентски избори 2016');
insert or ignore into elections (id, name, round1_date, round2_date, election_period_id) values
(20, 'Избори за президент 2016', '2016-11-06', '2016-11-13', 4);

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party1_id, party1_valid_ballots from _2016_president_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party2_id, party2_valid_ballots from _2016_president_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party3_id, party3_valid_ballots from _2016_president_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party4_id, party4_valid_ballots from _2016_president_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party5_id, party5_valid_ballots from _2016_president_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party6_id, party6_valid_ballots from _2016_president_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party7_id, party7_valid_ballots from _2016_president_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party8_id, party8_valid_ballots from _2016_president_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party9_id, party9_valid_ballots from _2016_president_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party10_id, party10_valid_ballots from _2016_president_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party11_id, party11_valid_ballots from _2016_president_1_votes where party11_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party12_id, party12_valid_ballots from _2016_president_1_votes where party12_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party13_id, party13_valid_ballots from _2016_president_1_votes where party13_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party14_id, party14_valid_ballots from _2016_president_1_votes where party14_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party15_id, party15_valid_ballots from _2016_president_1_votes where party15_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party16_id, party16_valid_ballots from _2016_president_1_votes where party16_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party17_id, party17_valid_ballots from _2016_president_1_votes where party17_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 1, section_id, party18_id, party18_valid_ballots from _2016_president_1_votes where party18_id is not null;
drop table _2016_president_1_votes;

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 2, section_id, party1_id, party1_valid_ballots from _2016_president_2_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 20, 2, section_id, party2_id, party2_valid_ballots from _2016_president_2_votes where party2_id is not null;
drop table _2016_president_2_votes;

insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 20, 1, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, total_invalid_ballots, valid_ballots, total_no_one_ballots from _2016_president_1_protocols where voters_with_machine is null;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one, machine_voting) select 20, 1, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, total_invalid_ballots, valid_ballots, total_no_one_machine, 1 from _2016_president_1_protocols where voters_with_machine is not null;
drop table _2016_president_1_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 20, 2, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, total_invalid_ballots, valid_ballots, total_no_one_ballots from _2016_president_2_protocols where voters_with_machine is null;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one, machine_voting) select 20, 2, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, total_invalid_ballots, valid_ballots, total_no_one_machine, 1 from _2016_president_2_protocols where voters_with_machine is not null;
drop table _2016_president_2_protocols;

insert or ignore into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2016 where neighborhood != '';
insert or ignore into voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2016.location_id and neighborhood=replace(voting_locations_2016.neighborhood, '"', '')) from voting_locations_2016;


insert into candidates (election_id, party_id, candidate_name) select 20, party_id, candidate_name from _2016_president_1_candidates;
insert into candidates (election_id, party_id, candidate_name) select 20, party_id, candidate_name from _2016_president_2_candidates;

insert or ignore into temp_parties (election_id, ballot_number, name) select 4, party_id, party_name from _2016_president_1_candidates;
insert or ignore into temp_parties (election_id, ballot_number, name) select 4, party_id, party_name from _2016_president_2_candidates;
insert or ignore into parties (name) select party_name from _2016_president_1_candidates;
drop table _2016_president_1_candidates;
drop table _2016_president_2_candidates;

update candidates set party_id=(select parties.id from temp_parties join parties on parties.name=temp_parties.name where candidates.election_id=20 and temp_parties.ballot_number=candidates.party_id) where election_id=20 and party_id is null;

insert or ignore into sections (election_period_id, location_id, section_code) select 4, ekatte, section_id from _2016_president_1_sections;
drop table _2016_president_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code) select 4, ekatte, section_id from _2016_president_2_sections;
drop table _2016_president_2_sections;

update sections set address_id=(select id from voting_locations join voting_locations_2016 on voting_locations_2016.address=voting_locations.cik_address and sections.section_code=voting_locations_2016.section_id) where election_period_id=4 and address_id is null;
insert into votes (election_id, round, section_id, ballot_number, valid_votes, invalid_votes)  select election_id, round, sections.id, ballot_number, valid_votes, invalid_votes from temp_votes join sections on sections.section_code=temp_votes.section_code;
drop table temp_votes;
insert into protocols (election_id, round, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select election_id, round, sections.id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one from temp_protocols join sections on sections.section_code=temp_protocols.section_code;
drop table temp_protocols;
vacuum;