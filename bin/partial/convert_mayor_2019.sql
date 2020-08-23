drop table if exists election_periods;
CREATE TABLE election_periods(
  "id" integer,
  "name" text
);

drop table if exists elections;
CREATE TABLE elections(
  "id" integer,
  "name" text,
  "date" date,
  "election_period_id" integer
);

drop table if exists votes;
CREATE TABLE votes(
  "election_id" integer,
  "section_id" text,
  "ballot_number" integer,
  "valid_votes" integer,
  "invalid_votes" text,
  "machine_voting" boolean,
  FOREIGN KEY(election_id) REFERENCES elections(id)
);

drop table if exists voting_locations;
CREATE TABLE voting_locations(
  "id" integer primary key autoincrement,
  "location_id" integer,
  "cik_address" text,
  "address" text,
  "lat" number,
  "lng" number,
  "location_neighborhood_id" integer,
  "postcode" text,
  FOREIGN KEY(location_id) REFERENCES locations(id),
  FOREIGN KEY(location_neighborhood_id) REFERENCES location_neighborhoods(id)
);

drop table if exists protocols;
CREATE TABLE protocols(
  "election_id" integer,
  "section_id" text,
  "section_type" integer,
  "protocol_serial_numbers" text,
  "ballots_available" integer,
  "total_voters" integer,
  "added_voters" integer,
  "voters_by_signature" integer,
  "unused_ballots" integer,
  "destroyed_ballots" integer,
  "invalid_ballots_invalid_sn" integer,
  "invalid_ballots_photo" integer,
  "invalid_ballots_public" integer,
  "invalid_ballots_mistake" integer,
  "ballots_in_box" integer,
  "invalid_ballots_in_box" integer,
  "valid_ballots_in_box" integer,
  "valid_no_one_all" integer,
  "invalid_empty_or_onclear" integer,
  FOREIGN KEY(election_id) REFERENCES elections(id),
  FOREIGN KEY(section_id) REFERENCES voting_locations_2019(section_id)
);

drop table if exists districts;
CREATE TABLE districts(
  "id" integer primary key,
  "district_code" text,
  "district_name" text
);

drop table if exists municipalities;
CREATE TABLE municipalities(
  "id" integer primary key autoincrement,
  "district_id" integer,
  "municipality_code" text,
  "municipality_name" text,
  FOREIGN KEY(district_id) REFERENCES districts(id)
);

drop table if exists municipality_regions;
CREATE TABLE municipality_regions(
  "id" integer,
  "municipality_id" integer,
  "region_code" text,
  "region_name" text,
  FOREIGN KEY(municipality_id) REFERENCES municipalities(id)
);

drop table if exists location_neighborhoods;
CREATE TABLE location_neighborhoods(
  "id" integer primary key autoincrement,
  "location_id" integer,
  "neighborhood" text,
  FOREIGN KEY(location_id) REFERENCES locations(id)
);

drop table if exists locations;
CREATE TABLE locations(
  "id" integer,
  "district_id" integer,
  "municipality_id" integer,
  "location_type" integer,
  "location_name" text,
  FOREIGN KEY(district_id) REFERENCES districts(id),
  FOREIGN KEY(municipality_id) REFERENCES municipalities(id)
);

drop table if exists location_types;
CREATE TABLE location_types(
  "id" integer,
  "name" text
);

drop table if exists parties;
CREATE TABLE parties(
  "id" integer primary key autoincrement,
  "election_id" integer,
  "district_id" integer default 999,
  "location_id" integer default 999,
  "ballot_number" integer,
  "name" text,
  UNIQUE(election_id,district_id,location_id,ballot_number),
  FOREIGN KEY(election_id) REFERENCES elections(id),
  FOREIGN KEY(district_id) REFERENCES districts(id),
  FOREIGN KEY(location_id) REFERENCES locations(id)
);

drop table if exists temp;
CREATE TABLE temp(
  "region_code" integer,
  "location_id" integer,
  "full_code" text,
  "location_name" text
);

drop table if exists candidates;
CREATE TABLE candidates(
  "id" integer primary key autoincrement,
  "election_id" integer,
  "district_id" integer,
  "location_id" integer,
  "party_id" integer,
  "candidate_id" integer,
  "candidate_name" text,
  FOREIGN KEY(election_id) REFERENCES elections(id),
  FOREIGN KEY(location_id) REFERENCES locations(id),
  FOREIGN KEY(party_id) REFERENCES parties(id)
);

drop table if exists sections;
CREATE TABLE sections(
  "id" integer primary key autoincrement,
  "election_period_id" integer,
  "location_id" integer,
  "section_id" text,
  "address_id" text,
  "mobile_section" boolean,
  "ship_section" boolean,
  "machine_voting" boolean,
  UNIQUE(election_period_id,section_id),
  FOREIGN KEY(election_period_id) REFERENCES election_periods(id),
  FOREIGN KEY(location_id) REFERENCES locations(id),
  FOREIGN KEY(section_id) REFERENCES parties(id)
);

drop table if exists preferences;
create table preferences(
  "id" integer primary key autoincrement,
  "election_id" integer,
  "section_id" text,
  "party_id" integer,
  "candidate_id" integer,
  "valid_votes" integer,
  "invalid_votes" integer,
  "machine_voting" boolean,
  FOREIGN KEY(election_id) REFERENCES elections(id),
  FOREIGN KEY(section_id) REFERENCES sections(id)
);

insert into election_periods(id, name) values 
(1, 'Местни избори 2019'),
(2, 'Местни избори 2015'),
(3, 'Местни и президентски избори 2011'),
(4, 'Президентски избори 2016'),
(5, 'Парламентарни избори 2017'),
(6, 'Парламентарни избори 2014'),
(7, 'Парламентарни избори 2013'),
(8, 'Парламентарни избори 2009'),
(9, 'Избори за членове на европейския парламент 2019'),
(10, 'Избори за членове на европейския парламент 2014'),
(11, 'Избори за членове на европейския парламент 2009');

insert into elections (id, name, date, election_period_id) values
(1, 'Избори за кмет на община 2019 I ТУР', '2019-10-27', 1),
(2, 'Избори за кмет на кметство 2019 I ТУР', '2019-10-27', 1),
(3, 'Избори за кмет на район 2019 I ТУР', '2019-10-27', 1),
(4, 'Избори за общински съветници 2019 I ТУР', '2019-10-27', 1),
(5, 'Избори за кмет на община 2019 II ТУР', '2019-11-03', 1),
(6, 'Избори за кмет на кметство 2019 II ТУР', '2019-11-03', 1),
(7, 'Избори за кмет на район 2019 II ТУР', '2019-11-03', 1),
(8, 'Избори за кмет на община 2015 I ТУР', '2015-10-25', 2),
(9, 'Избори за кмет на кметство 2015 I ТУР', '2015-10-25', 2),
(10, 'Избори за кмет на район 2015 I ТУР', '2015-10-25', 2),
(11, 'Избори за общински съветници 2015 I ТУР', '2015-10-25', 2),
(12, 'Избори за кмет на община 2015 II ТУР', '2015-11-01', 2),
(13, 'Избори за кмет на кметство 2015 II ТУР', '2015-11-01', 2),
(14, 'Избори за кмет на район 2015 II ТУР', '2015-11-01', 2),
(15, 'Избори за кмет на община 2011 I ТУР', '2011-10-23', 3),
(16, 'Избори за кмет на кметство 2011 I ТУР', '2011-10-23', 3),
(17, 'Избори за общински съветници 2011 I ТУР', '2011-10-23', 3),
(18, 'Избори за кмет на община 2011 II ТУР', '2011-11-30', 3),
(19, 'Избори за кмет на кметство 2011 II ТУР', '2011-11-30', 3),
(20, 'Избори за президент 2016 I тур', '2016-11-06', 4),
(21, 'Избори за президент 2016 II тур', '2016-11-13', 4),
(22, 'Избори за президент 2011 I тур', '2011-11-23', 3),
(23, 'Избори за президент 2011 II тур', '2011-11-30', 3),
(24, 'Парламентарни избори 2017', '2017-03-26', 5),
(25, 'Парламентарни избори 2014', '2014-10-05', 6),
(26, 'Парламентарни избори 2013', '2013-05-12', 7),
(27, 'Парламентарни избори 2009', '2009-07-05', 8),
(28, 'Избори за членове на европейския парламент 2019', '2019-05-26', 9),
(29, 'Избори за членове на европейския парламент 2014', '2014-05-25', 10),
(30, 'Избори за членове на европейския парламент 2009', '2009-06-07', 11);




insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_municipality_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_municipality_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_mayor_municipality_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2019_mayor_municipality_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2019_mayor_municipality_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2019_mayor_municipality_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2019_mayor_municipality_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2019_mayor_municipality_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2019_mayor_municipality_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2019_mayor_municipality_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2019_mayor_municipality_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2019_mayor_municipality_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2019_mayor_municipality_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2019_mayor_municipality_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2019_mayor_municipality_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2019_mayor_municipality_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2019_mayor_municipality_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2019_mayor_municipality_1_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party19_id, party19_valid_ballots, party19_invalid_ballots from _2019_mayor_municipality_1_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 1, section_id, party20_id, party20_valid_ballots, party20_invalid_ballots from _2019_mayor_municipality_1_votes where party20_id is not null;
-- drop table _2019_mayor_municipality_1_votes;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 2, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 2, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 2, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_mayor_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 2, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2019_mayor_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 2, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2019_mayor_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 2, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2019_mayor_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 2, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2019_mayor_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 2, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2019_mayor_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 2, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2019_mayor_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 2, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2019_mayor_1_votes where party10_id is not null;
-- drop table _2019_mayor_1_votes;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_region_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_region_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_mayor_region_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2019_mayor_region_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2019_mayor_region_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2019_mayor_region_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2019_mayor_region_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2019_mayor_region_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2019_mayor_region_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2019_mayor_region_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2019_mayor_region_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2019_mayor_region_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2019_mayor_region_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2019_mayor_region_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2019_mayor_region_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2019_mayor_region_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 3, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2019_mayor_region_1_votes where party18_id is not null;
-- drop table _2019_mayor_region_1_votes;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_council_region_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_council_region_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_council_region_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2019_council_region_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2019_council_region_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2019_council_region_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2019_council_region_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2019_council_region_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2019_council_region_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2019_council_region_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2019_council_region_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2019_council_region_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2019_council_region_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2019_council_region_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2019_council_region_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2019_council_region_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2019_council_region_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2019_council_region_1_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party19_id, party19_valid_ballots, party19_invalid_ballots from _2019_council_region_1_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party20_id, party20_valid_ballots, party20_invalid_ballots from _2019_council_region_1_votes where party20_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party21_id, party21_valid_ballots, party21_invalid_ballots from _2019_council_region_1_votes where party21_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party22_id, party22_valid_ballots, party22_invalid_ballots from _2019_council_region_1_votes where party22_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party23_id, party23_valid_ballots, party23_invalid_ballots from _2019_council_region_1_votes where party23_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party24_id, party24_valid_ballots, party24_invalid_ballots from _2019_council_region_1_votes where party24_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party25_id, party25_valid_ballots, party25_invalid_ballots from _2019_council_region_1_votes where party25_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party26_id, party26_valid_ballots, party26_invalid_ballots from _2019_council_region_1_votes where party26_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party27_id, party27_valid_ballots, party27_invalid_ballots from _2019_council_region_1_votes where party27_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party28_id, party28_valid_ballots, party28_invalid_ballots from _2019_council_region_1_votes where party28_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party29_id, party29_valid_ballots, party29_invalid_ballots from _2019_council_region_1_votes where party29_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 4, section_id, party30_id, party30_valid_ballots, party30_invalid_ballots from _2019_council_region_1_votes where party30_id is not null;
-- drop table _2019_council_region_1_votes;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 5, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_municipality_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 5, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_municipality_2_votes where party2_id is not null;
-- drop table _2019_mayor_municipality_2_votes;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 6, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 6, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_2_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 6, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_mayor_2_votes where party3_id is not null;
-- drop table _2019_mayor_2_votes;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 7, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_region_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 7, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_region_2_votes where party2_id is not null;
-- drop table _2019_mayor_region_2_votes;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 1, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_municipality_1_protocols;
-- drop table _2019_mayor_municipality_1_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 2, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_1_protocols;
-- drop table _2019_mayor_1_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 3, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_region_1_protocols;
-- drop table _2019_mayor_region_1_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 4, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_council_region_1_protocols;
-- drop table _2019_council_region_1_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 5, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_municipality_2_protocols;
-- drop table _2019_mayor_municipality_2_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 6, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_2_protocols;
-- drop table _2019_mayor_2_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 7, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_region_2_protocols;
-- drop table _2019_mayor_region_2_protocols;
insert into districts (id, district_code, district_name) select distinct region_id, CASE WHEN CAST(region_id as NUMBER) < 10 THEN '0' || region_Id ELSE region_id END, region_name from voting_locations_2019;
insert into districts (id, district_code, district_name) values(29, 'Чужбина', 'Чужбина');
insert into districts (id, district_code, district_name) values(30, 'Цялата страна', 'Цялата страна');

insert into municipalities (district_id, municipality_code, municipality_name) select distinct region_id, CASE WHEN CAST(municipality_id as NUMBER) < 10 THEN '0' || municipality_id ELSE municipality_id END, municipality_name from voting_locations_2019;
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
insert into locations(id, location_type, location_name) select 999, 6, 'Цялата страна';

insert into temp (region_code, location_id, full_code, location_name) select distinct locations.district_id || CASE WHEN cast(municipality_id as number) < 10 THEN '0' || municipality_id ELSE municipality_id END , locations.id, CASE WHEN cast(locations.district_id as number) < 10 THEN '0' || locations.district_id ELSE locations.district_id END || CASE WHEN cast(municipalities.municipality_code as number) < 10 THEN '0' || municipalities.municipality_code ELSE municipalities.municipality_code END || '. ', location_name from locations join municipalities on municipalities.id=locations.municipality_id;

insert into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2019 where neighborhood != '';
INSERT OR IGNORE INTO voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2019.location_id and neighborhood=replace(voting_locations_2019.neighborhood, '"', '')) from voting_locations_2019;

INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 1, party_id, 999, party_name from _2019_mayor_municipality_1_cik_parties;
-- drop table _2019_mayor_municipality_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 2, party_id, 999, party_name from _2019_mayor_1_cik_parties;
-- drop table _2019_mayor_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 3, party_id, 999, party_name from _2019_mayor_region_1_cik_parties;
-- drop table _2019_mayor_region_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 4, party_id, 999, party_name from _2019_council_region_1_cik_parties;
-- drop table _2019_council_region_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 5, party_id, 999, party_name from _2019_mayor_municipality_2_cik_parties;
-- drop table _2019_mayor_municipality_2_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 6, party_id, 999, party_name from _2019_mayor_2_cik_parties;
-- drop table _2019_mayor_2_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 7, party_id, 999, party_name from _2019_mayor_region_2_cik_parties;
-- drop table _2019_mayor_region_2_cik_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 1, (select location_id from temp where temp.full_code=substr(_2019_mayor_municipality_1_local_parties.region, 0, 7)), party_id, party_name from _2019_mayor_municipality_1_local_parties;
-- drop table _2019_mayor_municipality_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 2, (select location_id from temp where temp.full_code=id), party_id, party_name from _2019_mayor_1_local_parties;
-- drop table _2019_mayor_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 3, (select location_id from temp where temp.full_code=id), party_id, party_name from _2019_mayor_region_1_local_parties;
-- drop table _2019_mayor_region_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 4, (select location_id from temp where temp.full_code=substr(_2019_council_region_1_local_parties.region, 0, 7)), party_id, party_name from _2019_council_region_1_local_parties;
-- drop table _2019_council_region_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 5, (select location_id from temp where temp.full_code=substr(_2019_mayor_municipality_2_local_parties.region, 0, 7)), party_id, party_name from _2019_mayor_municipality_2_local_parties;
-- drop table _2019_mayor_municipality_2_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 6, (select location_id from temp where temp.full_code=id), party_id, party_name from _2019_mayor_2_local_parties;
-- drop table _2019_mayor_2_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 7, (select location_id from temp where temp.full_code=id), party_id, party_name from _2019_mayor_region_2_local_parties;
-- drop table _2019_mayor_region_2_local_parties;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 1, (select location_id from temp where temp.region_code=cast(region_id as integer)), party_id, candidate_id, candidate_name from _2019_mayor_municipality_1_local_candidates;
-- drop table _2019_mayor_municipality_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 2, (select location_id from temp where temp.full_code=substr(_2019_mayor_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_1_local_candidates;
-- drop table _2019_mayor_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 3, (select location_id from temp where temp.full_code=substr(_2019_mayor_region_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_region_1_local_candidates;
-- drop table _2019_mayor_region_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 4, (select location_id from temp where temp.full_code=substr(_2019_council_region_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_council_region_1_local_candidates;
-- drop table _2019_council_region_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 5, (select location_id from temp where temp.full_code=substr(_2019_mayor_municipality_2_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_municipality_2_local_candidates;
-- drop table _2019_mayor_municipality_2_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 6, (select location_id from temp where temp.full_code=substr(_2019_mayor_2_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_2_local_candidates;
-- drop table _2019_mayor_2_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 7, (select location_id from temp where temp.full_code=substr(_2019_mayor_region_2_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_region_2_local_candidates;
-- drop table _2019_mayor_region_2_local_candidates;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_municipality_1_sections;
-- drop table _2019_mayor_municipality_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_1_sections;
-- drop table _2019_mayor_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_region_1_sections;
-- drop table _2019_mayor_region_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_council_region_1_sections;
-- drop table _2019_council_region_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_municipality_2_sections;
-- drop table _2019_mayor_municipality_2_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_2_sections;
-- drop table _2019_mayor_2_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_region_2_sections;
-- drop table _2019_mayor_region_2_sections;
insert into preferences (election_id, section_id, party_id, valid_votes) select 4, section_id, party_id, total_votes from _2019_council_region_1_preferences;
-- drop table _2019_council_region_1_preferences;

update sections set address_id=(select id from voting_locations join voting_locations_2019 on voting_locations_2019.address=voting_locations.cik_address and sections.section_id=voting_locations_2019.section_id) where election_period_id=1 and address_id is null;

-- drop table temp;