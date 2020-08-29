.read './db/structure.sql'
.read './db/elections/2013_parliament/voting_locations_2016.sql'

insert or ignore into election_periods(id, name) values (7, 'Парламентарни избори 2013');
insert or ignore into elections (id, name, round1_date, election_period_id) values
(26, 'Парламентарни избори 2013', '2013-05-12', 7);

insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party1_id, party1_votes from _2013_parliament_votes where party1_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party2_id, party2_votes from _2013_parliament_votes where party2_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party3_id, party3_votes from _2013_parliament_votes where party3_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party4_id, party4_votes from _2013_parliament_votes where party4_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party5_id, party5_votes from _2013_parliament_votes where party5_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party6_id, party6_votes from _2013_parliament_votes where party6_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party7_id, party7_votes from _2013_parliament_votes where party7_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party8_id, party8_votes from _2013_parliament_votes where party8_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party9_id, party9_votes from _2013_parliament_votes where party9_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party10_id, party10_votes from _2013_parliament_votes where party10_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party11_id, party11_votes from _2013_parliament_votes where party11_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party12_id, party12_votes from _2013_parliament_votes where party12_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party13_id, party13_votes from _2013_parliament_votes where party13_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party14_id, party14_votes from _2013_parliament_votes where party14_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party15_id, party15_votes from _2013_parliament_votes where party15_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party16_id, party16_votes from _2013_parliament_votes where party16_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party17_id, party17_votes from _2013_parliament_votes where party17_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party18_id, party18_votes from _2013_parliament_votes where party18_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party19_id, party19_votes from _2013_parliament_votes where party19_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party20_id, party20_votes from _2013_parliament_votes where party20_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party21_id, party21_votes from _2013_parliament_votes where party21_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party22_id, party22_votes from _2013_parliament_votes where party22_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party23_id, party23_votes from _2013_parliament_votes where party23_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party24_id, party24_votes from _2013_parliament_votes where party24_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party25_id, party25_votes from _2013_parliament_votes where party25_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party26_id, party26_votes from _2013_parliament_votes where party26_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party27_id, party27_votes from _2013_parliament_votes where party27_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party28_id, party28_votes from _2013_parliament_votes where party28_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party29_id, party29_votes from _2013_parliament_votes where party29_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party30_id, party30_votes from _2013_parliament_votes where party30_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party31_id, party31_votes from _2013_parliament_votes where party31_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party32_id, party32_votes from _2013_parliament_votes where party32_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party33_id, party33_votes from _2013_parliament_votes where party33_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party34_id, party34_votes from _2013_parliament_votes where party34_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party35_id, party35_votes from _2013_parliament_votes where party35_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party36_id, party36_votes from _2013_parliament_votes where party36_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party37_id, party37_votes from _2013_parliament_votes where party37_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party38_id, party38_votes from _2013_parliament_votes where party38_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party39_id, party39_votes from _2013_parliament_votes where party39_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party40_id, party40_votes from _2013_parliament_votes where party40_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party41_id, party41_votes from _2013_parliament_votes where party41_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party42_id, party42_votes from _2013_parliament_votes where party42_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party43_id, party43_votes from _2013_parliament_votes where party43_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party44_id, party44_votes from _2013_parliament_votes where party44_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party45_id, party45_votes from _2013_parliament_votes where party45_id is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 26, section_id, party46_id, party46_votes from _2013_parliament_votes where party46_id is not null;
drop table _2013_parliament_votes;


insert into temp_protocols (election_id, section_code, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 26, section_id, total_voters, voters_by_signature, ballots_in_box, invalid_ballots, ballots_in_box-invalid_ballots from _2013_parliament_protocols;
drop table _2013_parliament_protocols;

insert or ignore into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2016 where neighborhood != '';
insert or ignore into voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2016.location_id and neighborhood=replace(voting_locations_2016.neighborhood, '"', '')) from voting_locations_2016;

insert or ignore into temp_parties (election_id, district_id, ballot_number, name) select 25, 999, party_id, party_name from _2013_parliament_parties;
drop table _2013_parliament_parties;


insert into candidates (election_id, district_id, party_id, location_id, candidate_id, candidate_name) select 26, region_id, party_id, 999, candidate_id, candidate_name from _2013_parliament_candidates;
drop table _2013_parliament_candidates;

insert or ignore into sections (election_period_id, location_id, section_code) select 7, (select id from locations where locations.ekatte=_2013_parliament_sections.ekatte), section_id from _2013_parliament_sections;
drop table _2013_parliament_sections;

insert or ignore into parties (name) select distinct name from temp_parties;
update sections set address_id=(select id from voting_locations join voting_locations_2016 on voting_locations_2016.address=voting_locations.cik_address and sections.section_code=voting_locations_2016.section_id) where election_period_id=7 and address_id is null;
update candidates set party_id=(select parties.id from temp_parties join parties on parties.name=temp_parties.name where candidates.election_id=26 and temp_parties.ballot_number=candidates.party_ballot and (temp_parties.district_id=candidates.district_id or temp_parties.district_id=999)) where election_id=26 and party_id is null;
drop table temp_parties;
drop table voting_locations_2016;
insert into votes (election_id, round, section_id, ballot_number, valid_votes, invalid_votes)  select election_id, round, sections.id, ballot_number, valid_votes, invalid_votes from temp_votes join sections on sections.section_code=temp_votes.section_code;
drop table temp_votes;
insert into protocols (election_id, round, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select election_id, round, sections.id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one from temp_protocols join sections on sections.section_code=temp_protocols.section_code;
drop table temp_protocols;
vacuum;