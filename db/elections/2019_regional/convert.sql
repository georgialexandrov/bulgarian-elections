.read './db/structure.sql'
.read './db/elections/2019_regional/voting_locations_2019.sql'

insert or ignore into election_periods(id, name) values (1, 'Местни избори 2019');
insert or ignore into elections (id, name, round1_date, round2_date, election_period_id, show, type) values
(1, 'Избори за кмет на община 2019', '2019-10-27', '2019-11-03', 1, 1, 'mm'),
(2, 'Избори за кмет на кметство 2019', '2019-10-27', '2019-11-03', 1, 1, 'm'),
(3, 'Избори за кмет на район 2019', '2019-10-27', '2019-11-03', 1, 1, 'mr'),
(4, 'Избори за общински съветници 2019', '2019-10-27', '', 1, 1, 'mc');

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_municipality_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_municipality_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_mayor_municipality_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2019_mayor_municipality_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2019_mayor_municipality_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2019_mayor_municipality_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2019_mayor_municipality_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2019_mayor_municipality_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2019_mayor_municipality_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2019_mayor_municipality_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2019_mayor_municipality_1_votes where party11_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2019_mayor_municipality_1_votes where party12_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2019_mayor_municipality_1_votes where party13_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2019_mayor_municipality_1_votes where party14_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2019_mayor_municipality_1_votes where party15_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2019_mayor_municipality_1_votes where party16_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2019_mayor_municipality_1_votes where party17_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2019_mayor_municipality_1_votes where party18_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party19_id, party19_valid_ballots, party19_invalid_ballots from _2019_mayor_municipality_1_votes where party19_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 1, section_id, party20_id, party20_valid_ballots, party20_invalid_ballots from _2019_mayor_municipality_1_votes where party20_id is not null;
-- drop table _2019_mayor_municipality_1_votes;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 1, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 1, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 1, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_mayor_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 1, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2019_mayor_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 1, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2019_mayor_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 1, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2019_mayor_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 1, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2019_mayor_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 1, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2019_mayor_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 1, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2019_mayor_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 1, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2019_mayor_1_votes where party10_id is not null;
-- drop table _2019_mayor_1_votes;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_region_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_region_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_mayor_region_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2019_mayor_region_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2019_mayor_region_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2019_mayor_region_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2019_mayor_region_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2019_mayor_region_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2019_mayor_region_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2019_mayor_region_1_votes where party11_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2019_mayor_region_1_votes where party12_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2019_mayor_region_1_votes where party13_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2019_mayor_region_1_votes where party14_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2019_mayor_region_1_votes where party15_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2019_mayor_region_1_votes where party16_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2019_mayor_region_1_votes where party17_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 1, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2019_mayor_region_1_votes where party18_id is not null;
-- drop table _2019_mayor_region_1_votes;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_council_region_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_council_region_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_council_region_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2019_council_region_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2019_council_region_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2019_council_region_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2019_council_region_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2019_council_region_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2019_council_region_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2019_council_region_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2019_council_region_1_votes where party11_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2019_council_region_1_votes where party12_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2019_council_region_1_votes where party13_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2019_council_region_1_votes where party14_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2019_council_region_1_votes where party15_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2019_council_region_1_votes where party16_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2019_council_region_1_votes where party17_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2019_council_region_1_votes where party18_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party19_id, party19_valid_ballots, party19_invalid_ballots from _2019_council_region_1_votes where party19_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party20_id, party20_valid_ballots, party20_invalid_ballots from _2019_council_region_1_votes where party20_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party21_id, party21_valid_ballots, party21_invalid_ballots from _2019_council_region_1_votes where party21_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party22_id, party22_valid_ballots, party22_invalid_ballots from _2019_council_region_1_votes where party22_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party23_id, party23_valid_ballots, party23_invalid_ballots from _2019_council_region_1_votes where party23_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party24_id, party24_valid_ballots, party24_invalid_ballots from _2019_council_region_1_votes where party24_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party25_id, party25_valid_ballots, party25_invalid_ballots from _2019_council_region_1_votes where party25_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party26_id, party26_valid_ballots, party26_invalid_ballots from _2019_council_region_1_votes where party26_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party27_id, party27_valid_ballots, party27_invalid_ballots from _2019_council_region_1_votes where party27_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party28_id, party28_valid_ballots, party28_invalid_ballots from _2019_council_region_1_votes where party28_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party29_id, party29_valid_ballots, party29_invalid_ballots from _2019_council_region_1_votes where party29_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 4, 1, section_id, party30_id, party30_valid_ballots, party30_invalid_ballots from _2019_council_region_1_votes where party30_id is not null;
-- drop table _2019_council_region_1_votes;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 2, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_municipality_2_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 1, 2, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_municipality_2_votes where party2_id is not null;
-- drop table _2019_mayor_municipality_2_votes;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 2, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_2_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 2, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_2_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 2, 2, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_mayor_2_votes where party3_id is not null;
-- drop table _2019_mayor_2_votes;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 2, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_region_2_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 3, 2, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_region_2_votes where party2_id is not null;
-- drop table _2019_mayor_region_2_votes;

insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 1, 1, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all from _2019_mayor_municipality_1_protocols;
-- drop table _2019_mayor_municipality_1_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 2, 1, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all from _2019_mayor_1_protocols;
-- drop table _2019_mayor_1_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 3, 1, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all from _2019_mayor_region_1_protocols;
-- drop table _2019_mayor_region_1_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 4, 1, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all from _2019_council_region_1_protocols;
-- drop table _2019_council_region_1_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 1, 2, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all from _2019_mayor_municipality_2_protocols;
-- drop table _2019_mayor_municipality_2_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 2, 2, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all from _2019_mayor_2_protocols;
-- drop table _2019_mayor_2_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select 3, 2, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all from _2019_mayor_region_2_protocols;
-- drop table _2019_mayor_region_2_protocols;

insert or ignore into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2019 where neighborhood != '';
insert or ignore into voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2019.location_id and neighborhood=replace(voting_locations_2019.neighborhood, '"', '')) from voting_locations_2019;

insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 1, party_id, 999, party_name from _2019_mayor_municipality_1_cik_parties;
-- drop table _2019_mayor_municipality_1_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 2, party_id, 999, party_name from _2019_mayor_1_cik_parties;
-- drop table _2019_mayor_1_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 3, party_id, 999, party_name from _2019_mayor_region_1_cik_parties;
-- drop table _2019_mayor_region_1_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 4, party_id, 999, party_name from _2019_council_region_1_cik_parties;
-- drop table _2019_council_region_1_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 1, party_id, 999, party_name from _2019_mayor_municipality_2_cik_parties;
-- drop table _2019_mayor_municipality_2_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 2, party_id, 999, party_name from _2019_mayor_2_cik_parties;
-- drop table _2019_mayor_2_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 3, party_id, 999, party_name from _2019_mayor_region_2_cik_parties;
-- drop table _2019_mayor_region_2_cik_parties;

insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 2, (select location_id from temp where temp.full_code=id and temp.location_name=_2019_mayor_1_local_parties.region), party_id, party_name from _2019_mayor_1_local_parties;
-- drop table _2019_mayor_1_local_parties;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 1, (select location_id from temp where temp.full_code=substr(_2019_mayor_municipality_1_local_parties.region, 0, 7)), party_id, party_name from _2019_mayor_municipality_1_local_parties;
-- drop table _2019_mayor_municipality_1_local_parties;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 3, (select location_id from temp where temp.full_code=id), party_id, party_name from _2019_mayor_region_1_local_parties;
-- drop table _2019_mayor_region_1_local_parties;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 4, (select location_id from temp where temp.full_code=substr(_2019_council_region_1_local_parties.region, 0, 7)), party_id, party_name from _2019_council_region_1_local_parties;
-- drop table _2019_council_region_1_local_parties;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 1, (select location_id from temp where temp.full_code=substr(_2019_mayor_municipality_2_local_parties.region, 0, 7)), party_id, party_name from _2019_mayor_municipality_2_local_parties;
-- drop table _2019_mayor_municipality_2_local_parties;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 2, (select location_id from temp where temp.full_code=id and temp.location_name=_2019_mayor_2_local_parties.region), party_id, party_name from _2019_mayor_2_local_parties;
-- drop table _2019_mayor_2_local_parties;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 3, (select location_id from temp where temp.full_code=id), party_id, party_name from _2019_mayor_region_2_local_parties;
-- drop table _2019_mayor_region_2_local_parties;

insert or ignore into candidates (election_id, location_id, party_ballot, candidate_id, candidate_name) select 1, (select location_id from temp where temp.region_code=cast(_2019_mayor_municipality_1_local_candidates.region_id as integer)), party_id, candidate_id, candidate_name from _2019_mayor_municipality_1_local_candidates;
-- drop table _2019_mayor_municipality_1_local_candidates;
insert or ignore into candidates (election_id, location_id, party_ballot, candidate_id, candidate_name) select 2, (select location_id from temp where temp.region_code=cast(_2019_mayor_1_local_candidates.region_id as integer) and region_name=location_name), party_id, candidate_id, candidate_name from _2019_mayor_1_local_candidates;
-- drop table _2019_mayor_1_local_candidates;
insert or ignore into candidates (election_id, location_id, municipality_region_id, party_ballot, candidate_id, candidate_name) select 3, (select location_id from temp where temp.region_code=cast(_2019_mayor_region_1_local_candidates.region_id as integer)),
(select municipality_regions.id from municipality_regions join municipalities on municipality_regions.municipality_id=municipalities.id where municipalities.district_id || municipalities.municipality_code || municipality_regions.region_code=_2019_mayor_region_1_local_candidates.region_id || substr(_2019_mayor_region_1_local_candidates.region_name, 1,2)),
 party_id, candidate_id, candidate_name from _2019_mayor_region_1_local_candidates;
-- drop table _2019_mayor_region_1_local_candidates;
insert or ignore into candidates (election_id, location_id, party_ballot, candidate_id, candidate_name) select 4, (select location_id from temp where temp.region_code=cast(_2019_council_region_1_local_candidates.region_id as integer)), party_id, candidate_id, candidate_name from _2019_council_region_1_local_candidates;
-- drop table _2019_council_region_1_local_candidates;
insert or ignore into candidates (election_id, location_id, party_ballot, candidate_id, candidate_name) select 1, (select location_id from temp where temp.region_code=cast(_2019_mayor_municipality_2_local_candidates.region_id as integer)), party_id, candidate_id, candidate_name from _2019_mayor_municipality_2_local_candidates;
-- drop table _2019_mayor_municipality_2_local_candidates;
insert or ignore into candidates (election_id, location_id, party_ballot, candidate_id, candidate_name) select 2, (select location_id from temp where temp.region_code=cast(_2019_mayor_2_local_candidates.region_id as integer) and region_name=location_name), party_id, candidate_id, candidate_name from _2019_mayor_2_local_candidates;
-- drop table _2019_mayor_2_local_candidates;
insert or ignore into candidates (election_id, location_id, municipality_region_id, party_ballot, candidate_id, candidate_name) select 3, (select location_id from temp where temp.region_code=cast(_2019_mayor_region_2_local_candidates.region_id as integer)), (select municipality_region_id from temp where temp.region_code=cast(_2019_mayor_region_2_local_candidates.region_id as integer) and temp.municipality_region_code=substr(_2019_mayor_region_2_local_candidates.region_name, 1, 2)), party_id, candidate_id, candidate_name from _2019_mayor_region_2_local_candidates;
-- drop table _2019_mayor_region_2_local_candidates;

insert or ignore into sections (election_period_id, location_id, municipality_region_id, section_code, mobile_section)
select 1, (select id from locations where locations.ekatte=_2019_mayor_region_1_sections.ekatte),
(select municipality_regions.id from municipality_regions join municipalities on municipality_regions.municipality_id=municipalities.id where municipalities.district_id || municipality_regions.region_code=_2019_mayor_region_1_sections.district_id),
section_id, mobile_section from _2019_mayor_region_1_sections;
-- drop table _2019_mayor_region_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code, mobile_section) select 1, (select id from locations where locations.ekatte=_2019_mayor_1_sections.district_id), section_id, mobile_section from _2019_mayor_1_sections;
-- drop table _2019_mayor_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code, mobile_section) select 1, (select id from locations where locations.ekatte=_2019_mayor_municipality_1_sections.ekatte), section_id, mobile_section from _2019_mayor_municipality_1_sections;
-- drop table _2019_mayor_municipality_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code, mobile_section) select 1, (select id from locations where locations.ekatte=_2019_council_region_1_sections.ekatte), section_id, mobile_section from _2019_council_region_1_sections;
-- drop table _2019_council_region_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code, mobile_section) select 1, (select id from locations where locations.ekatte=_2019_mayor_municipality_2_sections.ekatte), section_id, mobile_section from _2019_mayor_municipality_2_sections;
-- drop table _2019_mayor_municipality_2_sections;
-- drop table _2019_mayor_2_sections;


-- drop table _2019_mayor_region_2_sections;
insert into temp_preferences (election_id, section_code, party_id, candidate_id, valid_votes) select 4, section_id, party_id, candidate_id, total_votes from _2019_council_region_1_preferences;
-- drop table _2019_council_region_1_preferences;

insert or ignore into parties (name) select distinct name from temp_parties;
update sections set address_id=(select id from voting_locations join voting_locations_2019 on voting_locations_2019.address=voting_locations.cik_address and sections.section_code=voting_locations_2019.section_id) where election_period_id=1 and address_id is null;
update candidates set party_id=(select parties.id from temp_parties join parties on parties.name=temp_parties.name where candidates.election_id in (1,2,3,4) and temp_parties.ballot_number=candidates.party_ballot and temp_parties.location_id=candidates.location_id) where election_id in (1,2,3,4) and party_id is null;
-- drop table temp_parties;

-- drop table voting_locations_2019;
insert into votes (election_id, round, section_id, ballot_number, valid_votes, invalid_votes)  select election_id, round, sections.id, ballot_number, valid_votes, invalid_votes from temp_votes join sections on sections.section_code=temp_votes.section_code;
-- drop table temp_votes;
insert into protocols (election_id, round, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select election_id, round, sections.id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one from temp_protocols join sections on sections.section_code=temp_protocols.section_code;
-- drop table temp_protocols;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes, machine_voting)  select election_id, sections.id, party_id, candidate_id, valid_votes, temp_preferences.machine_voting from temp_preferences join sections on sections.section_code=temp_preferences.section_code;
-- drop table temp_preferences;
vacuum;