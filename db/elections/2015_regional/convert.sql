.read './db/structure.sql'
.read './db/elections/2015_regional/voting_locations_2015.sql'

insert or ignore into election_periods(id, name) values (2, 'Местни избори 2015');
insert or ignore into elections (id, name, round1_date, round2_date, election_period_id) values
(8, 'Избори за кмет на община 2015', '2015-10-25', '2015-11-01', 2),
(9, 'Избори за кмет на кметство 2015', '2015-10-25', '2015-11-01', 2),
(10, 'Избори за кмет на район 2015', '2015-10-25', '2015-11-01', 2),
(11, 'Избори за общински съветници 2015', '2015-10-25', '', 2);


insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_municipality_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_municipality_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2015_mayor_municipality_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2015_mayor_municipality_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2015_mayor_municipality_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2015_mayor_municipality_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2015_mayor_municipality_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2015_mayor_municipality_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2015_mayor_municipality_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2015_mayor_municipality_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2015_mayor_municipality_1_votes where party11_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2015_mayor_municipality_1_votes where party12_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2015_mayor_municipality_1_votes where party13_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2015_mayor_municipality_1_votes where party14_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2015_mayor_municipality_1_votes where party15_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2015_mayor_municipality_1_votes where party16_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2015_mayor_municipality_1_votes where party17_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2015_mayor_municipality_1_votes where party18_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party19_id, party19_valid_ballots, party19_invalid_ballots from _2015_mayor_municipality_1_votes where party19_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 1, section_id, party20_id, party20_valid_ballots, party20_invalid_ballots from _2015_mayor_municipality_1_votes where party20_id is not null;
drop table _2015_mayor_municipality_1_votes;

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 1, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 1, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 1, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2015_mayor_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 1, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2015_mayor_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 1, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2015_mayor_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 1, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2015_mayor_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 1, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2015_mayor_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 1, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2015_mayor_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 1, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2015_mayor_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 1, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2015_mayor_1_votes where party10_id is not null;
drop table _2015_mayor_1_votes;

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_region_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_region_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2015_mayor_region_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2015_mayor_region_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2015_mayor_region_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2015_mayor_region_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2015_mayor_region_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2015_mayor_region_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2015_mayor_region_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2015_mayor_region_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2015_mayor_region_1_votes where party11_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2015_mayor_region_1_votes where party12_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2015_mayor_region_1_votes where party13_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2015_mayor_region_1_votes where party14_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2015_mayor_region_1_votes where party15_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2015_mayor_region_1_votes where party16_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2015_mayor_region_1_votes where party17_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2015_mayor_region_1_votes where party18_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party19_id, party19_valid_ballots, party19_invalid_ballots from _2015_mayor_region_1_votes where party19_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party20_id, party20_valid_ballots, party20_invalid_ballots from _2015_mayor_region_1_votes where party20_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party21_id, party21_valid_ballots, party21_invalid_ballots from _2015_mayor_region_1_votes where party21_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party22_id, party22_valid_ballots, party22_invalid_ballots from _2015_mayor_region_1_votes where party22_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party23_id, party23_valid_ballots, party23_invalid_ballots from _2015_mayor_region_1_votes where party23_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party24_id, party24_valid_ballots, party24_invalid_ballots from _2015_mayor_region_1_votes where party24_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party25_id, party25_valid_ballots, party25_invalid_ballots from _2015_mayor_region_1_votes where party25_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 1, section_id, party26_id, party26_valid_ballots, party26_invalid_ballots from _2015_mayor_region_1_votes where party26_id is not null;
drop table _2015_mayor_region_1_votes;




insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_council_region_1_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_council_region_1_votes where party2_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2015_council_region_1_votes where party3_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2015_council_region_1_votes where party4_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2015_council_region_1_votes where party5_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2015_council_region_1_votes where party6_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2015_council_region_1_votes where party7_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2015_council_region_1_votes where party8_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2015_council_region_1_votes where party9_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2015_council_region_1_votes where party10_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2015_council_region_1_votes where party11_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2015_council_region_1_votes where party12_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2015_council_region_1_votes where party13_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2015_council_region_1_votes where party14_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2015_council_region_1_votes where party15_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2015_council_region_1_votes where party16_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2015_council_region_1_votes where party17_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2015_council_region_1_votes where party18_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party19_id, party19_valid_ballots, party19_invalid_ballots from _2015_council_region_1_votes where party19_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party20_id, party20_valid_ballots, party20_invalid_ballots from _2015_council_region_1_votes where party20_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party21_id, party21_valid_ballots, party21_invalid_ballots from _2015_council_region_1_votes where party21_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party22_id, party22_valid_ballots, party22_invalid_ballots from _2015_council_region_1_votes where party22_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party23_id, party23_valid_ballots, party23_invalid_ballots from _2015_council_region_1_votes where party23_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party24_id, party24_valid_ballots, party24_invalid_ballots from _2015_council_region_1_votes where party24_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party25_id, party25_valid_ballots, party25_invalid_ballots from _2015_council_region_1_votes where party25_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party26_id, party26_valid_ballots, party26_invalid_ballots from _2015_council_region_1_votes where party26_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party27_id, party27_valid_ballots, party27_invalid_ballots from _2015_council_region_1_votes where party27_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party28_id, party28_valid_ballots, party28_invalid_ballots from _2015_council_region_1_votes where party28_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party29_id, party29_valid_ballots, party29_invalid_ballots from _2015_council_region_1_votes where party29_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party30_id, party30_valid_ballots, party30_invalid_ballots from _2015_council_region_1_votes where party30_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party31_id, party31_valid_ballots, party31_invalid_ballots from _2015_council_region_1_votes where party31_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 11, 1, section_id, party32_id, party32_valid_ballots, party32_invalid_ballots from _2015_council_region_1_votes where party32_id is not null;
drop table _2015_council_region_1_votes;

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 2, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_municipality_2_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 8, 2, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_municipality_2_votes where party2_id is not null;
drop table _2015_mayor_municipality_2_votes;

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 2, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_2_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 9, 2, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_2_votes where party2_id is not null;
drop table _2015_mayor_2_votes;

insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 2, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_region_2_votes where party1_id is not null;
insert into temp_votes (election_id, round, section_code, ballot_number, valid_votes, invalid_votes)  select 10, 2, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_region_2_votes where party2_id is not null;
drop table _2015_mayor_region_2_votes;


insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 8, 1, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box from _2015_mayor_municipality_1_cik_protocols;
drop table _2015_mayor_municipality_1_cik_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 9, 1, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box from _2015_mayor_1_cik_protocols;
drop table _2015_mayor_1_cik_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 10, 1, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box from _2015_mayor_region_1_cik_protocols;
drop table _2015_mayor_region_1_cik_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 11, 1, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box from _2015_council_region_1_cik_protocols;
drop table _2015_council_region_1_cik_protocols;

insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 8, 2, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box from _2015_mayor_municipality_2_cik_protocols;
drop table _2015_mayor_municipality_2_cik_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 9, 2, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box from _2015_mayor_2_cik_protocols;
drop table _2015_mayor_2_cik_protocols;
insert into temp_protocols (election_id, round, section_code, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 10, 2, section_id, form_number, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box from _2015_mayor_region_2_cik_protocols;
drop table _2015_mayor_region_2_cik_protocols;

insert or ignore into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2015 where neighborhood != '';
insert or ignore into voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2015.location_id and neighborhood=replace(voting_locations_2015.neighborhood, '"', '')) from voting_locations_2015;

insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 8, party_id, 999, party_name from _2015_mayor_municipality_1_cik_parties;
drop table _2015_mayor_municipality_1_cik_parties;
drop table _2015_mayor_municipality_2_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 9, party_id, 999, party_name from _2015_mayor_1_cik_parties;
drop table _2015_mayor_1_cik_parties;
drop table _2015_mayor_2_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 10, party_id, 999, party_name from _2015_mayor_region_1_cik_parties;
drop table _2015_mayor_region_1_cik_parties;
drop table _2015_mayor_region_2_cik_parties;
insert or ignore into temp_parties (election_id, ballot_number, location_id, name) select 11, party_id, 999, party_name from _2015_council_region_1_cik_parties;
drop table _2015_council_region_1_cik_parties;


insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 8, (select location_id from temp where temp.full_code=substr(_2015_mayor_municipality_1_local_parties.region, 0, 7)), party_id, party_name from _2015_mayor_municipality_1_local_parties;
drop table _2015_mayor_municipality_1_local_parties;
drop table _2015_mayor_municipality_2_local_parties;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 9, (select location_id from temp where temp.full_code=id), party_id, party_name from _2015_mayor_1_local_parties;
drop table _2015_mayor_1_local_parties;
drop table _2015_mayor_2_local_parties;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 10, (select location_id from temp where temp.full_code=id), party_id, party_name from _2015_mayor_region_1_local_parties;
drop table _2015_mayor_region_1_local_parties;
drop table _2015_mayor_region_2_local_parties;
insert or ignore into temp_parties (election_id, location_id, ballot_number, name) select 11, (select location_id from temp where temp.full_code=substr(_2015_council_region_1_local_parties.region, 0, 7)), party_id, party_name from _2015_council_region_1_local_parties;
drop table _2015_council_region_1_local_parties;

insert or replace into candidates (election_id, location_id, party_id, party_ballot, candidate_id, candidate_name) select 8, (select location_id from temp where temp.region_code=_2015_mayor_municipality_1_local_candidates.region_id), party_id, party_id, candidate_id, candidate_name from _2015_mayor_municipality_1_local_candidates;
drop table _2015_mayor_municipality_1_local_candidates;
drop table _2015_mayor_municipality_2_local_candidates;
insert or replace into candidates (election_id, location_id, party_id, party_ballot, candidate_id, candidate_name) select 9, (select location_id from temp where temp.region_code=_2015_mayor_1_local_candidates.region_id), party_id, party_id, candidate_id, candidate_name from _2015_mayor_1_local_candidates;
drop table _2015_mayor_1_local_candidates;
drop table _2015_mayor_2_local_candidates;
insert or replace into candidates (election_id, location_id, party_id, party_ballot, candidate_id, candidate_name) select 10, (select region_id from temp where temp.region_code=_2015_mayor_region_1_local_candidates.region_id), party_id, party_id, candidate_id, candidate_name from _2015_mayor_region_1_local_candidates;
drop table _2015_mayor_region_1_local_candidates;
drop table _2015_mayor_region_2_local_candidates;
insert or replace into candidates (election_id, location_id, party_id, party_ballot, candidate_id, candidate_name) select 11, (select location_id from temp where temp.region_code=_2015_council_region_1_local_candidates.region_id), party_id, party_id, candidate_id, candidate_name from _2015_council_region_1_local_candidates;
drop table _2015_council_region_1_local_candidates;

insert or ignore into sections (election_period_id, location_id, section_code, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_municipality_1_sections;
drop table _2015_mayor_municipality_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_1_sections;
drop table _2015_mayor_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_region_1_sections;
drop table _2015_mayor_region_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_council_region_1_sections;
drop table _2015_council_region_1_sections;
insert or ignore into sections (election_period_id, location_id, section_code, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_municipality_2_sections;
drop table _2015_mayor_municipality_2_sections;
insert or ignore into sections (election_period_id, location_id, section_code, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_2_sections;
drop table _2015_mayor_2_sections;
insert or ignore into sections (election_period_id, location_id, section_code, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_region_2_sections;
drop table _2015_mayor_region_2_sections;

insert or ignore into parties (name) select distinct name from temp_parties;
update sections set address_id=(select id from voting_locations join voting_locations_2015 on voting_locations_2015.address=voting_locations.cik_address and sections.section_code=voting_locations_2015.section_id) where election_period_id=2 and address_id is null;
update candidates set party_id=(select parties.id from temp_parties join parties on parties.name=temp_parties.name where candidates.election_id in (8,9,10,11) and temp_parties.ballot_number=candidates.party_ballot and (temp_parties.district_id=candidates.district_id or temp_parties.district_id=999)) where election_id in (8,9,10,11) and party_id is null;
drop table temp_parties;
drop table voting_locations_2016;
insert into votes (election_id, round, section_id, ballot_number, valid_votes, invalid_votes)  select election_id, round, sections.id, ballot_number, valid_votes, invalid_votes from temp_votes join sections on sections.section_code=temp_votes.section_code;
drop table temp_votes;
insert into protocols (election_id, round, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select election_id, round, sections.id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one from temp_protocols join sections on sections.section_code=temp_protocols.section_code;
drop table temp_protocols;
drop table voting_locations_2015;
vacuum;