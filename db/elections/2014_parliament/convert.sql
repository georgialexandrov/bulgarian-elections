.read './db/structure.sql'
.read './db/elections/2014_parliament/voting_locations_2016.sql'

insert or ignore into election_periods(id, name) values (6, 'Парламентарни избори 2014');
insert or ignore into elections (id, name, round1_date, election_period_id) values
(25, 'Парламентарни избори 2014', '2014-10-05', 6);

insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 1, party1_valid, party1_invalid from _2014_parliament_votes where party1_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 2, party2_valid, party2_invalid from _2014_parliament_votes where party2_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 3, party3_valid, party3_invalid from _2014_parliament_votes where party3_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 4, party4_valid, party4_invalid from _2014_parliament_votes where party4_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 5, party5_valid, party5_invalid from _2014_parliament_votes where party5_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 6, party6_valid, party6_invalid from _2014_parliament_votes where party6_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 7, party7_valid, party7_invalid from _2014_parliament_votes where party7_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 8, party8_valid, party8_invalid from _2014_parliament_votes where party8_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 9, party9_valid, party9_invalid from _2014_parliament_votes where party9_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 10, party10_valid, party10_invalid from _2014_parliament_votes where party10_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 11, party11_valid, party11_invalid from _2014_parliament_votes where party11_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 12, party12_valid, party12_invalid from _2014_parliament_votes where party12_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 13, party13_valid, party13_invalid from _2014_parliament_votes where party13_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 14, party14_valid, party14_invalid from _2014_parliament_votes where party14_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 15, party15_valid, party15_invalid from _2014_parliament_votes where party15_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 16, party16_valid, party16_invalid from _2014_parliament_votes where party16_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 17, party17_valid, party17_invalid from _2014_parliament_votes where party17_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 18, party18_valid, party18_invalid from _2014_parliament_votes where party18_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 19, party19_valid, party19_invalid from _2014_parliament_votes where party19_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 20, party20_valid, party20_invalid from _2014_parliament_votes where party20_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 21, party21_valid, party21_invalid from _2014_parliament_votes where party21_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 22, party22_valid, party22_invalid from _2014_parliament_votes where party22_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 23, party23_valid, party23_invalid from _2014_parliament_votes where party23_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 24, party24_valid, party24_invalid from _2014_parliament_votes where party24_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 25, party25_valid, party25_invalid from _2014_parliament_votes where party25_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 26, party26_valid, party26_invalid from _2014_parliament_votes where party26_valid is not null;
-- drop table _2014_parliament_votes;

insert into temp_protocols (election_id, section_code, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 25, section_id, total_voters, voters_by_signature, ballots_in_box, invalid_ballots, valid_ballots from _2014_parliament_protocols;
-- drop table _2014_parliament_protocols;

insert or ignore into temp_parties (election_id, district_id, ballot_number, name) select 25, 999, party_id, party_name from _2014_parliament_parties;
insert or ignore into temp_parties (election_id, district_id, ballot_number, name) select 25, region_id, party_id, candidate_name from _2014_parliament_ind;
-- drop table _2014_parliament_parties;

insert or ignore into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2016 where neighborhood != '';
insert or ignore into voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2016.location_id and neighborhood=replace(voting_locations_2016.neighborhood, '"', '')) from voting_locations_2016;

insert into candidates (election_id, district_id, party_ballot, candidate_name) select 25, region_id, party_id, candidate_name from _2014_parliament_ind;
-- drop table _2014_parliament_ind;

insert into candidates (election_id, district_id, party_ballot, candidate_id, candidate_name) select 25, region_id, party_id, candidate_id, candidate_name from _2014_parliament_candidates;
-- drop table _2014_parliament_candidates;

insert or ignore into sections (election_period_id, location_id, section_code, mobile_section, ship_section, machine_voting) select 6, (select id from locations where locations.ekatte=_2014_parliament_sections.ekatte), section_id, mobile_section, ship_section, machine_voting from _2014_parliament_sections;
-- drop table _2014_parliament_sections;

insert into temp_preferences (election_id, section_code, party_id, candidate_id, valid_votes) select 23, section_id, party_id, candidate_id, votes from _2014_parliament_preferences;
-- drop table _2014_parliament_preferences;


insert or ignore into parties (name) select distinct name from temp_parties;
update sections set address_id=(select id from voting_locations join voting_locations_2016 on voting_locations_2016.address=voting_locations.cik_address and sections.section_code=voting_locations_2016.section_id) where election_period_id=6 and address_id is null;
update candidates set party_id=(select parties.id from temp_parties join parties on parties.name=temp_parties.name where candidates.election_id=25 and temp_parties.ballot_number=candidates.party_ballot and (temp_parties.district_id=candidates.district_id or temp_parties.district_id=999)) where election_id=25 and party_id is null;
-- drop table temp_parties;
-- drop table voting_locations_2016;
insert into votes (election_id, round, section_id, ballot_number, valid_votes, invalid_votes)  select election_id, round, sections.id, ballot_number, valid_votes, invalid_votes from temp_votes join sections on sections.section_code=temp_votes.section_code;
-- drop table temp_votes;
insert into protocols (election_id, round, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select election_id, round, sections.id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one from temp_protocols join sections on sections.section_code=temp_protocols.section_code;
-- drop table temp_protocols;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes, machine_voting)  select election_id, sections.id, party_id, candidate_id, valid_votes, temp_preferences.machine_voting from temp_preferences join sections on sections.section_code=temp_preferences.section_code;
-- drop table temp_preferences;
vacuum;