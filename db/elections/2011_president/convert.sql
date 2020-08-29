.read './db/structure.sql'
.read './db/elections/2011_president/voting_locations_2016.sql'

insert or ignore into election_periods(id, name) values (3, 'Местни и президентски избори 2011');
insert or ignore into elections (id, name, round1_date, round2_date, election_period_id) values
(22, 'Избори за президент 2011', '2011-11-23', '2011-11-30', 3);

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party1_id, party1_valid_ballots from _2011_president_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party2_id, party2_valid_ballots from _2011_president_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party3_id, party3_valid_ballots from _2011_president_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party4_id, party4_valid_ballots from _2011_president_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party5_id, party5_valid_ballots from _2011_president_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party6_id, party6_valid_ballots from _2011_president_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party7_id, party7_valid_ballots from _2011_president_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party8_id, party8_valid_ballots from _2011_president_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party9_id, party9_valid_ballots from _2011_president_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party10_id, party10_valid_ballots from _2011_president_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party11_id, party11_valid_ballots from _2011_president_1_votes where party11_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party12_id, party12_valid_ballots from _2011_president_1_votes where party12_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party13_id, party13_valid_ballots from _2011_president_1_votes where party13_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party14_id, party14_valid_ballots from _2011_president_1_votes where party14_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party15_id, party15_valid_ballots from _2011_president_1_votes where party15_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party16_id, party16_valid_ballots from _2011_president_1_votes where party16_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party17_id, party17_valid_ballots from _2011_president_1_votes where party17_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 1, section_id, party18_id, party18_valid_ballots from _2011_president_1_votes where party18_id is not null;
drop table _2011_president_1_votes;

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 2, section_id, party1_id, party1_valid_ballots from _2011_president_2_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 22, 2, section_id, party2_id, party2_valid_ballots from _2011_president_2_votes where party2_id is not null;
drop table _2011_president_2_votes;

insert into temp_protocols (election_id, round, section_code, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 22, 1, section_id, total_voters, voters_by_signature, ballots_in_box, invalid_ballots, ballots_in_box-invalid_ballots from _2011_president_1_protocols;
drop table _2011_president_1_protocols;
insert into temp_protocols (election_id, round, section_code, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 22, 2, section_id, total_voters, voters_by_signature, ballots_in_box, invalid_ballots, ballots_in_box-invalid_ballots from _2011_president_2_protocols;
drop table _2011_president_2_protocols;

insert or ignore into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2016 where neighborhood != '';
insert or ignore into voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2016.location_id and neighborhood=replace(voting_locations_2016.neighborhood, '"', '')) from voting_locations_2016;

insert into candidates (election_id, party_id, candidate_name) select 22, party_id, candidate_name || ' и ' || vice_candidate_name  from _2011_president_1_candidates;
insert into candidates (election_id, party_id, candidate_name) select 22, party_id, candidate_name || ' и ' || vice_candidate_name  from _2011_president_2_candidates;
drop table _2011_president_2_candidates;


insert or ignore into sections (election_period_id, location_id, section_code) select 3, ekatte, section_id from _2011_president_1_sections;
drop table _2011_president_1_sections;
drop table _2011_president_2_sections;

insert or ignore into temp_parties (election_id, district_id, ballot_number, name) select 25, 999, party_id, party_name from _2011_president_1_candidates;
drop table _2011_president_1_candidates;

insert or ignore into parties (name) select distinct name from temp_parties;
update sections set address_id=(select id from voting_locations join voting_locations_2016 on voting_locations_2016.address=voting_locations.cik_address and sections.section_code=voting_locations_2016.section_id) where election_period_id=3 and address_id is null;
update candidates set party_id=(select parties.id from temp_parties join parties on parties.name=temp_parties.name where candidates.election_id=22 and temp_parties.ballot_number=candidates.party_ballot and (temp_parties.district_id=candidates.district_id or temp_parties.district_id=999))  where election_id=22 and party_id is null;
drop table temp_parties;
drop table voting_locations_2016;
insert into votes (election_id, round, section_id, ballot_number, valid_votes, invalid_votes)  select election_id, round, sections.id, ballot_number, valid_votes, invalid_votes from temp_votes join sections on sections.section_code=temp_votes.section_code;
drop table temp_votes;
insert into protocols (election_id, round, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select election_id, round, sections.id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one from temp_protocols join sections on sections.section_code=temp_protocols.section_code;
drop table temp_protocols;
vacuum;