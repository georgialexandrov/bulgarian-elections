.read './db/structure.sql'
.read './db/elections/2011_regional/voting_locations_2016.sql'

insert or ignore into election_periods(id, name) values (3, 'Местни и президентски избори 2011');
insert or ignore into elections (id, name, round1_date, round2_date, election_period_id) values
(15, 'Избори за кмет на община 2011', '2011-10-23', '2015-11-01', 3),
(16, 'Избори за кмет на кметство 2011', '2015-11-01', '2015-11-01', 3),
(17, 'Избори за общински съветници 2011', '2011-10-23', null, 3);

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party1_id, party1_valid_ballots from _2011_mayor_municipality_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party2_id, party2_valid_ballots from _2011_mayor_municipality_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party3_id, party3_valid_ballots from _2011_mayor_municipality_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party4_id, party4_valid_ballots from _2011_mayor_municipality_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party5_id, party5_valid_ballots from _2011_mayor_municipality_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party6_id, party6_valid_ballots from _2011_mayor_municipality_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party7_id, party7_valid_ballots from _2011_mayor_municipality_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party8_id, party8_valid_ballots from _2011_mayor_municipality_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party9_id, party9_valid_ballots from _2011_mayor_municipality_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party10_id, party10_valid_ballots from _2011_mayor_municipality_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party11_id, party11_valid_ballots from _2011_mayor_municipality_1_votes where party11_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party12_id, party12_valid_ballots from _2011_mayor_municipality_1_votes where party12_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party13_id, party13_valid_ballots from _2011_mayor_municipality_1_votes where party13_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party14_id, party14_valid_ballots from _2011_mayor_municipality_1_votes where party14_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party15_id, party15_valid_ballots from _2011_mayor_municipality_1_votes where party15_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party16_id, party16_valid_ballots from _2011_mayor_municipality_1_votes where party16_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party17_id, party17_valid_ballots from _2011_mayor_municipality_1_votes where party17_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party18_id, party18_valid_ballots from _2011_mayor_municipality_1_votes where party18_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party19_id, party19_valid_ballots from _2011_mayor_municipality_1_votes where party19_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 1, section_id, party20_id, party20_valid_ballots from _2011_mayor_municipality_1_votes where party20_id is not null;
drop table _2011_mayor_municipality_1_votes;

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party1_id, party1_valid_ballots from _2011_mayor_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party2_id, party2_valid_ballots from _2011_mayor_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party3_id, party3_valid_ballots from _2011_mayor_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party4_id, party4_valid_ballots from _2011_mayor_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party5_id, party5_valid_ballots from _2011_mayor_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party6_id, party6_valid_ballots from _2011_mayor_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party7_id, party7_valid_ballots from _2011_mayor_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party8_id, party8_valid_ballots from _2011_mayor_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party9_id, party9_valid_ballots from _2011_mayor_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party10_id, party10_valid_ballots from _2011_mayor_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 1, section_id, party11_id, party11_valid_ballots from _2011_mayor_1_votes where party11_id is not null;
drop table _2011_mayor_1_votes;

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party1_id, party1_valid_ballots from _2011_council_region_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party2_id, party2_valid_ballots from _2011_council_region_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party3_id, party3_valid_ballots from _2011_council_region_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party4_id, party4_valid_ballots from _2011_council_region_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party5_id, party5_valid_ballots from _2011_council_region_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party6_id, party6_valid_ballots from _2011_council_region_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party7_id, party7_valid_ballots from _2011_council_region_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party8_id, party8_valid_ballots from _2011_council_region_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party9_id, party9_valid_ballots from _2011_council_region_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party10_id, party10_valid_ballots from _2011_council_region_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party11_id, party11_valid_ballots from _2011_council_region_1_votes where party11_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party12_id, party12_valid_ballots from _2011_council_region_1_votes where party12_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party13_id, party13_valid_ballots from _2011_council_region_1_votes where party13_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party14_id, party14_valid_ballots from _2011_council_region_1_votes where party14_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party15_id, party15_valid_ballots from _2011_council_region_1_votes where party15_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party16_id, party16_valid_ballots from _2011_council_region_1_votes where party16_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party17_id, party17_valid_ballots from _2011_council_region_1_votes where party17_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party18_id, party18_valid_ballots from _2011_council_region_1_votes where party18_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party19_id, party19_valid_ballots from _2011_council_region_1_votes where party19_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party20_id, party20_valid_ballots from _2011_council_region_1_votes where party20_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party21_id, party21_valid_ballots from _2011_council_region_1_votes where party21_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party22_id, party22_valid_ballots from _2011_council_region_1_votes where party22_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party23_id, party23_valid_ballots from _2011_council_region_1_votes where party23_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party24_id, party24_valid_ballots from _2011_council_region_1_votes where party24_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party25_id, party25_valid_ballots from _2011_council_region_1_votes where party25_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party26_id, party26_valid_ballots from _2011_council_region_1_votes where party26_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party27_id, party27_valid_ballots from _2011_council_region_1_votes where party27_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party28_id, party28_valid_ballots from _2011_council_region_1_votes where party28_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party29_id, party29_valid_ballots from _2011_council_region_1_votes where party29_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party30_id, party30_valid_ballots from _2011_council_region_1_votes where party30_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party31_id, party31_valid_ballots from _2011_council_region_1_votes where party31_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party32_id, party32_valid_ballots from _2011_council_region_1_votes where party32_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party33_id, party33_valid_ballots from _2011_council_region_1_votes where party33_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party34_id, party34_valid_ballots from _2011_council_region_1_votes where party34_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party35_id, party35_valid_ballots from _2011_council_region_1_votes where party35_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party36_id, party36_valid_ballots from _2011_council_region_1_votes where party36_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party37_id, party37_valid_ballots from _2011_council_region_1_votes where party37_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party38_id, party38_valid_ballots from _2011_council_region_1_votes where party38_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party39_id, party39_valid_ballots from _2011_council_region_1_votes where party39_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party40_id, party40_valid_ballots from _2011_council_region_1_votes where party40_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party41_id, party41_valid_ballots from _2011_council_region_1_votes where party41_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party42_id, party42_valid_ballots from _2011_council_region_1_votes where party42_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party43_id, party43_valid_ballots from _2011_council_region_1_votes where party43_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party44_id, party44_valid_ballots from _2011_council_region_1_votes where party44_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party45_id, party45_valid_ballots from _2011_council_region_1_votes where party45_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party46_id, party46_valid_ballots from _2011_council_region_1_votes where party46_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 17, 1, section_id, party47_id, party47_valid_ballots from _2011_council_region_1_votes where party47_id is not null;
drop table _2011_council_region_1_votes;


insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 2, section_id, party1_id, party1_valid_ballots from _2011_mayor_municipality_2_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 15, 2, section_id, party2_id, party2_valid_ballots from _2011_mayor_municipality_2_votes where party2_id is not null;
drop table _2011_mayor_municipality_2_votes;

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 2, section_id, party1_id, party1_valid_ballots from _2011_mayor_2_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 2, section_id, party2_id, party2_valid_ballots from _2011_mayor_2_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes)  select 16, 2, section_id, party3_id, party3_valid_ballots from _2011_mayor_2_votes where party3_id is not null;
drop table _2011_mayor_2_votes;

insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 15, 1, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, total_invalid_ballots, total_valid_ballots from _2011_mayor_municipality_1_protocols;
drop table _2011_mayor_municipality_1_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 16, 1, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, total_invalid_ballots, total_valid_ballots from _2011_mayor_1_protocols;
drop table _2011_mayor_1_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 17, 1, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, total_invalid_ballots, total_valid_ballots from _2011_council_region_1_protocols;
drop table _2011_council_region_1_protocols;

insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 15, 2, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, total_invalid_ballots, total_valid_ballots from _2011_mayor_municipality_2_protocols;
drop table _2011_mayor_municipality_2_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 16, 2, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, total_invalid_ballots, total_valid_ballots from _2011_mayor_2_protocols;
drop table _2011_mayor_2_protocols;


insert or ignore into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2016 where neighborhood != '';
insert or ignore into voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2016.location_id and neighborhood=replace(voting_locations_2016.neighborhood, '"', '')) from voting_locations_2016;


insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 15, party_id, 999, party_name from _2011_mayor_municipality_1_cik_parties;
drop table _2011_mayor_municipality_1_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 16, party_id, 999, party_name from _2011_mayor_1_cik_parties;
drop table _2011_mayor_1_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 17, party_id, 999, party_name from _2011_council_region_1_cik_parties;
drop table _2011_council_region_1_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 15, party_id, 999, party_name from _2011_mayor_municipality_2_cik_parties;
drop table _2011_mayor_municipality_2_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 16, party_id, 999, party_name from _2011_mayor_2_cik_parties;
drop table _2011_mayor_2_cik_parties;


insert or ignore into temp_parties (election_id, municipality_id, ballot_number, name) select 15, (select municipality_id from temp where temp.region_code=district_id), candidate_id, candidate_name from _2011_mayor_municipality_1_coalitions;
drop table _2011_mayor_municipality_1_coalitions;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 16, (select location_id from temp where temp.region_code=district_id), candidate_id, candidate_name from _2011_mayor_1_coalitions;
drop table _2011_mayor_1_coalitions;
insert or ignore into temp_parties (election_id, municipality_id, ballot_number, name) select 17, (select municipality_id from temp where temp.region_code=district_id), candidate_id, candidate_name from _2011_council_region_1_coalitions;
drop table _2011_council_region_1_coalitions;
insert or ignore into temp_parties (election_id, municipality_id, ballot_number, name) select 15, (select municipality_id from temp where temp.region_code=district_id), candidate_id, candidate_name from _2011_mayor_municipality_2_coalitions;
drop table _2011_mayor_municipality_2_coalitions;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 17, (select location_id from temp where temp.region_code=district_id), candidate_id, candidate_name from _2011_mayor_2_coalitions;
drop table _2011_mayor_2_coalitions;


insert into candidates (election_id, location_id, party_id, party_ballot, candidate_name) select 15, (select location_id from temp where temp.region_code=_2011_mayor_municipality_1_candidates.district_id), party_id, party_id, candidate_name from _2011_mayor_municipality_1_candidates;
drop table _2011_mayor_municipality_1_candidates;
insert into candidates (election_id, location_id, candidate_id, party_ballot, candidate_name) select 16, (select id from locations where locations.ekatte=_2011_mayor_1_candidates.ekatte), candidate_id, candidate_id, candidate_name from _2011_mayor_1_candidates;
drop table _2011_mayor_1_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, party_ballot, candidate_name) select 17, (select location_id from temp where temp.region_code=_2011_council_region_1_candidates.district_id), party_id, candidate_id, party_id, candidate_name from _2011_council_region_1_candidates;
drop table _2011_council_region_1_candidates;
insert into candidates (election_id, location_id, candidate_id, party_ballot, candidate_name) select 15, (select location_id from temp where temp.region_code=_2011_mayor_municipality_2_candidates.district_id), candidate_id, candidate_id, candidate_name from _2011_mayor_municipality_2_candidates;
drop table _2011_mayor_municipality_2_candidates;
insert into candidates (election_id, location_id, party_id, party_ballot, candidate_name) select 16, (select id from locations where locations.ekatte=_2011_mayor_2_candidates.ekatte), party_id, party_id, candidate_name from _2011_mayor_2_candidates;
drop table _2011_mayor_2_candidates;


insert or ignore into sections (election_period_id, location_id, section_code) select 3, (select id from locations where locations.ekatte=_2011_mayor_municipality_1_sections.ekatte), section_id from _2011_mayor_municipality_1_sections;
drop table _2011_mayor_municipality_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code) select 3, (select id from locations where locations.ekatte=_2011_mayor_1_sections.ekatte), section_id from _2011_mayor_1_sections;
drop table _2011_mayor_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code) select 3, (select id from locations where locations.ekatte=_2011_council_region_1_sections.ekatte), section_id from _2011_council_region_1_sections;
drop table _2011_council_region_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code) select 3, (select id from locations where locations.ekatte=_2011_mayor_municipality_2_sections.ekatte), section_id from _2011_mayor_municipality_2_sections;
drop table _2011_mayor_municipality_2_sections;
insert or ignore into sections (election_period_id, location_id, section_code) select 3, (select id from locations where locations.ekatte=_2011_mayor_2_sections.ekatte), section_id from _2011_mayor_2_sections;
drop table _2011_mayor_2_sections;

insert or ignore into parties (name) select distinct name from temp_parties;
update sections set address_id=(select id from voting_locations join voting_locations_2016 on voting_locations_2016.address=voting_locations.cik_address and sections.section_code=voting_locations_2016.section_id) where election_period_id=3 and address_id is null;
update candidates set party_id=(select parties.id from temp_parties join parties on parties.name=temp_parties.name where candidates.election_id in (15,16,17) and temp_parties.ballot_number=candidates.party_ballot and (temp_parties.district_id=candidates.district_id or temp_parties.district_id=999)) where election_id in (15,16,17) and party_id is null;
drop table temp_parties;
drop table voting_locations_2016;
insert into votes (election_id, round, section_id, ballot_number, valid_votes, invalid_votes)  select election_id, round, sections.id, ballot_number, valid_votes, invalid_votes from temp_votes join sections on sections.section_code=temp_votes.section_code;
drop table temp_votes;
insert into protocols (election_id, round, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select election_id, round, sections.id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one from temp_protocols join sections on sections.section_code=temp_protocols.section_code;
drop table temp_protocols;
vacuum;