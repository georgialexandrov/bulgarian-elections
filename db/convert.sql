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
  FOREIGN KEY(location_neighborhood_id) REFERENCES location_neighborhoods(id),
  UNIQUE(location_id,address)
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
  "id" integer,
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
  "municipality_region_id" integer,
  "location_type" integer,
  "location_name" text,
  FOREIGN KEY(district_id) REFERENCES districts(id),
  FOREIGN KEY(municipality_id) REFERENCES municipalities(id),
  FOREIGN KEY(municipality_region_id) REFERENCES municipality_regions(id)
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
drop table _2019_mayor_municipality_1_votes;

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
drop table _2019_mayor_1_votes;

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
drop table _2019_mayor_region_1_votes;

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
drop table _2019_council_region_1_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 5, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_municipality_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 5, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_municipality_2_votes where party2_id is not null;
drop table _2019_mayor_municipality_2_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 6, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 6, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_2_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 6, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2019_mayor_2_votes where party3_id is not null;
drop table _2019_mayor_2_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 7, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2019_mayor_region_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 7, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2019_mayor_region_2_votes where party2_id is not null;
drop table _2019_mayor_region_2_votes;


insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_municipality_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_municipality_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2015_mayor_municipality_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2015_mayor_municipality_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2015_mayor_municipality_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2015_mayor_municipality_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2015_mayor_municipality_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2015_mayor_municipality_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2015_mayor_municipality_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2015_mayor_municipality_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2015_mayor_municipality_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2015_mayor_municipality_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2015_mayor_municipality_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2015_mayor_municipality_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2015_mayor_municipality_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2015_mayor_municipality_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2015_mayor_municipality_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2015_mayor_municipality_1_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party19_id, party19_valid_ballots, party19_invalid_ballots from _2015_mayor_municipality_1_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 8, section_id, party20_id, party20_valid_ballots, party20_invalid_ballots from _2015_mayor_municipality_1_votes where party20_id is not null;
drop table _2015_mayor_municipality_1_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 9, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 9, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 9, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2015_mayor_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 9, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2015_mayor_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 9, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2015_mayor_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 9, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2015_mayor_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 9, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2015_mayor_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 9, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2015_mayor_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 9, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2015_mayor_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 9, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2015_mayor_1_votes where party10_id is not null;
drop table _2015_mayor_1_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_region_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_region_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2015_mayor_region_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2015_mayor_region_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2015_mayor_region_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2015_mayor_region_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2015_mayor_region_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2015_mayor_region_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2015_mayor_region_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2015_mayor_region_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2015_mayor_region_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2015_mayor_region_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2015_mayor_region_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2015_mayor_region_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2015_mayor_region_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2015_mayor_region_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2015_mayor_region_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2015_mayor_region_1_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party19_id, party19_valid_ballots, party19_invalid_ballots from _2015_mayor_region_1_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party20_id, party20_valid_ballots, party20_invalid_ballots from _2015_mayor_region_1_votes where party20_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party21_id, party21_valid_ballots, party21_invalid_ballots from _2015_mayor_region_1_votes where party21_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party22_id, party22_valid_ballots, party22_invalid_ballots from _2015_mayor_region_1_votes where party22_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party23_id, party23_valid_ballots, party23_invalid_ballots from _2015_mayor_region_1_votes where party23_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party24_id, party24_valid_ballots, party24_invalid_ballots from _2015_mayor_region_1_votes where party24_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party25_id, party25_valid_ballots, party25_invalid_ballots from _2015_mayor_region_1_votes where party25_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 10, section_id, party26_id, party26_valid_ballots, party26_invalid_ballots from _2015_mayor_region_1_votes where party26_id is not null;
drop table _2015_mayor_region_1_votes;




insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_council_region_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_council_region_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party3_id, party3_valid_ballots, party3_invalid_ballots from _2015_council_region_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party4_id, party4_valid_ballots, party4_invalid_ballots from _2015_council_region_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party5_id, party5_valid_ballots, party5_invalid_ballots from _2015_council_region_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party6_id, party6_valid_ballots, party6_invalid_ballots from _2015_council_region_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party7_id, party7_valid_ballots, party7_invalid_ballots from _2015_council_region_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party8_id, party8_valid_ballots, party8_invalid_ballots from _2015_council_region_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party9_id, party9_valid_ballots, party9_invalid_ballots from _2015_council_region_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party10_id, party10_valid_ballots, party10_invalid_ballots from _2015_council_region_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party11_id, party11_valid_ballots, party11_invalid_ballots from _2015_council_region_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party12_id, party12_valid_ballots, party12_invalid_ballots from _2015_council_region_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party13_id, party13_valid_ballots, party13_invalid_ballots from _2015_council_region_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party14_id, party14_valid_ballots, party14_invalid_ballots from _2015_council_region_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party15_id, party15_valid_ballots, party15_invalid_ballots from _2015_council_region_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party16_id, party16_valid_ballots, party16_invalid_ballots from _2015_council_region_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party17_id, party17_valid_ballots, party17_invalid_ballots from _2015_council_region_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party18_id, party18_valid_ballots, party18_invalid_ballots from _2015_council_region_1_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party19_id, party19_valid_ballots, party19_invalid_ballots from _2015_council_region_1_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party20_id, party20_valid_ballots, party20_invalid_ballots from _2015_council_region_1_votes where party20_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party21_id, party21_valid_ballots, party21_invalid_ballots from _2015_council_region_1_votes where party21_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party22_id, party22_valid_ballots, party22_invalid_ballots from _2015_council_region_1_votes where party22_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party23_id, party23_valid_ballots, party23_invalid_ballots from _2015_council_region_1_votes where party23_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party24_id, party24_valid_ballots, party24_invalid_ballots from _2015_council_region_1_votes where party24_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party25_id, party25_valid_ballots, party25_invalid_ballots from _2015_council_region_1_votes where party25_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party26_id, party26_valid_ballots, party26_invalid_ballots from _2015_council_region_1_votes where party26_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party27_id, party27_valid_ballots, party27_invalid_ballots from _2015_council_region_1_votes where party27_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party28_id, party28_valid_ballots, party28_invalid_ballots from _2015_council_region_1_votes where party28_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party29_id, party29_valid_ballots, party29_invalid_ballots from _2015_council_region_1_votes where party29_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party30_id, party30_valid_ballots, party30_invalid_ballots from _2015_council_region_1_votes where party30_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party31_id, party31_valid_ballots, party31_invalid_ballots from _2015_council_region_1_votes where party31_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 11, section_id, party32_id, party32_valid_ballots, party32_invalid_ballots from _2015_council_region_1_votes where party32_id is not null;
drop table _2015_council_region_1_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 12, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_municipality_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 12, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_municipality_2_votes where party2_id is not null;
drop table _2015_mayor_municipality_2_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 13, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 13, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_2_votes where party2_id is not null;
drop table _2015_mayor_2_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 14, section_id, party1_id, party1_valid_ballots, party1_invalid_ballots from _2015_mayor_region_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 14, section_id, party2_id, party2_valid_ballots, party2_invalid_ballots from _2015_mayor_region_2_votes where party2_id is not null;
drop table _2015_mayor_region_2_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party1_id, party1_valid_ballots from _2011_mayor_municipality_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party2_id, party2_valid_ballots from _2011_mayor_municipality_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party3_id, party3_valid_ballots from _2011_mayor_municipality_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party4_id, party4_valid_ballots from _2011_mayor_municipality_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party5_id, party5_valid_ballots from _2011_mayor_municipality_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party6_id, party6_valid_ballots from _2011_mayor_municipality_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party7_id, party7_valid_ballots from _2011_mayor_municipality_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party8_id, party8_valid_ballots from _2011_mayor_municipality_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party9_id, party9_valid_ballots from _2011_mayor_municipality_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party10_id, party10_valid_ballots from _2011_mayor_municipality_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party11_id, party11_valid_ballots from _2011_mayor_municipality_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party12_id, party12_valid_ballots from _2011_mayor_municipality_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party13_id, party13_valid_ballots from _2011_mayor_municipality_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party14_id, party14_valid_ballots from _2011_mayor_municipality_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party15_id, party15_valid_ballots from _2011_mayor_municipality_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party16_id, party16_valid_ballots from _2011_mayor_municipality_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party17_id, party17_valid_ballots from _2011_mayor_municipality_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party18_id, party18_valid_ballots from _2011_mayor_municipality_1_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party19_id, party19_valid_ballots from _2011_mayor_municipality_1_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 15, section_id, party20_id, party20_valid_ballots from _2011_mayor_municipality_1_votes where party20_id is not null;
drop table _2011_mayor_municipality_1_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party1_id, party1_valid_ballots from _2011_mayor_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party2_id, party2_valid_ballots from _2011_mayor_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party3_id, party3_valid_ballots from _2011_mayor_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party4_id, party4_valid_ballots from _2011_mayor_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party5_id, party5_valid_ballots from _2011_mayor_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party6_id, party6_valid_ballots from _2011_mayor_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party7_id, party7_valid_ballots from _2011_mayor_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party8_id, party8_valid_ballots from _2011_mayor_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party9_id, party9_valid_ballots from _2011_mayor_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party10_id, party10_valid_ballots from _2011_mayor_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 16, section_id, party11_id, party11_valid_ballots from _2011_mayor_1_votes where party11_id is not null;
drop table _2011_mayor_1_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party1_id, party1_valid_ballots from _2011_council_region_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party2_id, party2_valid_ballots from _2011_council_region_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party3_id, party3_valid_ballots from _2011_council_region_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party4_id, party4_valid_ballots from _2011_council_region_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party5_id, party5_valid_ballots from _2011_council_region_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party6_id, party6_valid_ballots from _2011_council_region_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party7_id, party7_valid_ballots from _2011_council_region_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party8_id, party8_valid_ballots from _2011_council_region_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party9_id, party9_valid_ballots from _2011_council_region_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party10_id, party10_valid_ballots from _2011_council_region_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party11_id, party11_valid_ballots from _2011_council_region_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party12_id, party12_valid_ballots from _2011_council_region_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party13_id, party13_valid_ballots from _2011_council_region_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party14_id, party14_valid_ballots from _2011_council_region_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party15_id, party15_valid_ballots from _2011_council_region_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party16_id, party16_valid_ballots from _2011_council_region_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party17_id, party17_valid_ballots from _2011_council_region_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party18_id, party18_valid_ballots from _2011_council_region_1_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party19_id, party19_valid_ballots from _2011_council_region_1_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party20_id, party20_valid_ballots from _2011_council_region_1_votes where party20_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party21_id, party21_valid_ballots from _2011_council_region_1_votes where party21_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party22_id, party22_valid_ballots from _2011_council_region_1_votes where party22_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party23_id, party23_valid_ballots from _2011_council_region_1_votes where party23_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party24_id, party24_valid_ballots from _2011_council_region_1_votes where party24_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party25_id, party25_valid_ballots from _2011_council_region_1_votes where party25_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party26_id, party26_valid_ballots from _2011_council_region_1_votes where party26_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party27_id, party27_valid_ballots from _2011_council_region_1_votes where party27_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party28_id, party28_valid_ballots from _2011_council_region_1_votes where party28_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party29_id, party29_valid_ballots from _2011_council_region_1_votes where party29_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party30_id, party30_valid_ballots from _2011_council_region_1_votes where party30_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party31_id, party31_valid_ballots from _2011_council_region_1_votes where party31_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party32_id, party32_valid_ballots from _2011_council_region_1_votes where party32_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party33_id, party33_valid_ballots from _2011_council_region_1_votes where party33_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party34_id, party34_valid_ballots from _2011_council_region_1_votes where party34_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party35_id, party35_valid_ballots from _2011_council_region_1_votes where party35_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party36_id, party36_valid_ballots from _2011_council_region_1_votes where party36_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party37_id, party37_valid_ballots from _2011_council_region_1_votes where party37_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party38_id, party38_valid_ballots from _2011_council_region_1_votes where party38_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party39_id, party39_valid_ballots from _2011_council_region_1_votes where party39_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party40_id, party40_valid_ballots from _2011_council_region_1_votes where party40_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party41_id, party41_valid_ballots from _2011_council_region_1_votes where party41_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party42_id, party42_valid_ballots from _2011_council_region_1_votes where party42_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party43_id, party43_valid_ballots from _2011_council_region_1_votes where party43_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party44_id, party44_valid_ballots from _2011_council_region_1_votes where party44_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party45_id, party45_valid_ballots from _2011_council_region_1_votes where party45_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party46_id, party46_valid_ballots from _2011_council_region_1_votes where party46_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 17, section_id, party47_id, party47_valid_ballots from _2011_council_region_1_votes where party47_id is not null;
drop table _2011_council_region_1_votes;


insert into votes (election_id, section_id, ballot_number, valid_votes)  select 18, section_id, party1_id, party1_valid_ballots from _2011_mayor_municipality_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 18, section_id, party2_id, party2_valid_ballots from _2011_mayor_municipality_2_votes where party2_id is not null;
drop table _2011_mayor_municipality_2_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 19, section_id, party1_id, party1_valid_ballots from _2011_mayor_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 19, section_id, party2_id, party2_valid_ballots from _2011_mayor_2_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 19, section_id, party3_id, party3_valid_ballots from _2011_mayor_2_votes where party3_id is not null;
drop table _2011_mayor_2_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party1_id, party1_valid_ballots from _2016_president_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party2_id, party2_valid_ballots from _2016_president_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party3_id, party3_valid_ballots from _2016_president_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party4_id, party4_valid_ballots from _2016_president_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party5_id, party5_valid_ballots from _2016_president_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party6_id, party6_valid_ballots from _2016_president_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party7_id, party7_valid_ballots from _2016_president_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party8_id, party8_valid_ballots from _2016_president_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party9_id, party9_valid_ballots from _2016_president_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party10_id, party10_valid_ballots from _2016_president_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party11_id, party11_valid_ballots from _2016_president_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party12_id, party12_valid_ballots from _2016_president_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party13_id, party13_valid_ballots from _2016_president_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party14_id, party14_valid_ballots from _2016_president_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party15_id, party15_valid_ballots from _2016_president_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party16_id, party16_valid_ballots from _2016_president_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party17_id, party17_valid_ballots from _2016_president_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 20, section_id, party18_id, party18_valid_ballots from _2016_president_1_votes where party18_id is not null;
drop table _2016_president_1_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 21, section_id, party1_id, party1_valid_ballots from _2016_president_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 21, section_id, party2_id, party2_valid_ballots from _2016_president_2_votes where party2_id is not null;
drop table _2016_president_2_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party1_id, party1_valid_ballots from _2011_president_1_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party2_id, party2_valid_ballots from _2011_president_1_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party3_id, party3_valid_ballots from _2011_president_1_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party4_id, party4_valid_ballots from _2011_president_1_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party5_id, party5_valid_ballots from _2011_president_1_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party6_id, party6_valid_ballots from _2011_president_1_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party7_id, party7_valid_ballots from _2011_president_1_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party8_id, party8_valid_ballots from _2011_president_1_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party9_id, party9_valid_ballots from _2011_president_1_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party10_id, party10_valid_ballots from _2011_president_1_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party11_id, party11_valid_ballots from _2011_president_1_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party12_id, party12_valid_ballots from _2011_president_1_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party13_id, party13_valid_ballots from _2011_president_1_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party14_id, party14_valid_ballots from _2011_president_1_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party15_id, party15_valid_ballots from _2011_president_1_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party16_id, party16_valid_ballots from _2011_president_1_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party17_id, party17_valid_ballots from _2011_president_1_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 22, section_id, party18_id, party18_valid_ballots from _2011_president_1_votes where party18_id is not null;
drop table _2011_president_1_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 23, section_id, party1_id, party1_valid_ballots from _2011_president_2_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 23, section_id, party2_id, party2_valid_ballots from _2011_president_2_votes where party2_id is not null;
drop table _2011_president_2_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party1_id, party1_valid, party1_invalid from _2017_parliament_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party2_id, party2_valid, party2_invalid from _2017_parliament_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party3_id, party3_valid, party3_invalid from _2017_parliament_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party4_id, party4_valid, party4_invalid from _2017_parliament_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party5_id, party5_valid, party5_invalid from _2017_parliament_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party6_id, party6_valid, party6_invalid from _2017_parliament_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party7_id, party7_valid, party7_invalid from _2017_parliament_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party8_id, party8_valid, party8_invalid from _2017_parliament_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party9_id, party9_valid, party9_invalid from _2017_parliament_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party10_id, party10_valid, party10_invalid from _2017_parliament_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party11_id, party11_valid, party11_invalid from _2017_parliament_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party12_id, party12_valid, party12_invalid from _2017_parliament_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party13_id, party13_valid, party13_invalid from _2017_parliament_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party14_id, party14_valid, party14_invalid from _2017_parliament_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party15_id, party15_valid, party15_invalid from _2017_parliament_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party16_id, party16_valid, party16_invalid from _2017_parliament_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party17_id, party17_valid, party17_invalid from _2017_parliament_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party18_id, party18_valid, party18_invalid from _2017_parliament_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party19_id, party19_valid, party19_invalid from _2017_parliament_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party20_id, party20_valid, party20_invalid from _2017_parliament_votes where party20_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party21_id, party21_valid, party21_invalid from _2017_parliament_votes where party21_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party22_id, party22_valid, party22_invalid from _2017_parliament_votes where party22_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 24, section_id, party23_id, party23_valid, party23_invalid from _2017_parliament_votes where party23_id is not null;
drop table _2017_parliament_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 1, party1_valid, party1_invalid from _2014_parliament_votes where party1_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 2, party2_valid, party2_invalid from _2014_parliament_votes where party2_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 3, party3_valid, party3_invalid from _2014_parliament_votes where party3_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 4, party4_valid, party4_invalid from _2014_parliament_votes where party4_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 5, party5_valid, party5_invalid from _2014_parliament_votes where party5_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 6, party6_valid, party6_invalid from _2014_parliament_votes where party6_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 7, party7_valid, party7_invalid from _2014_parliament_votes where party7_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 8, party8_valid, party8_invalid from _2014_parliament_votes where party8_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 9, party9_valid, party9_invalid from _2014_parliament_votes where party9_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 10, party10_valid, party10_invalid from _2014_parliament_votes where party10_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 11, party11_valid, party11_invalid from _2014_parliament_votes where party11_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 12, party12_valid, party12_invalid from _2014_parliament_votes where party12_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 13, party13_valid, party13_invalid from _2014_parliament_votes where party13_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 14, party14_valid, party14_invalid from _2014_parliament_votes where party14_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 15, party15_valid, party15_invalid from _2014_parliament_votes where party15_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 16, party16_valid, party16_invalid from _2014_parliament_votes where party16_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 17, party17_valid, party17_invalid from _2014_parliament_votes where party17_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 18, party18_valid, party18_invalid from _2014_parliament_votes where party18_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 19, party19_valid, party19_invalid from _2014_parliament_votes where party19_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 20, party20_valid, party20_invalid from _2014_parliament_votes where party20_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 21, party21_valid, party21_invalid from _2014_parliament_votes where party21_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 22, party22_valid, party22_invalid from _2014_parliament_votes where party22_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 23, party23_valid, party23_invalid from _2014_parliament_votes where party23_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 24, party24_valid, party24_invalid from _2014_parliament_votes where party24_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 25, party25_valid, party25_invalid from _2014_parliament_votes where party25_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 25, section_id, 26, party26_valid, party26_invalid from _2014_parliament_votes where party26_valid is not null;
drop table _2014_parliament_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party1_id, party1_votes from _2013_parliament_votes where party1_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party2_id, party2_votes from _2013_parliament_votes where party2_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party3_id, party3_votes from _2013_parliament_votes where party3_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party4_id, party4_votes from _2013_parliament_votes where party4_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party5_id, party5_votes from _2013_parliament_votes where party5_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party6_id, party6_votes from _2013_parliament_votes where party6_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party7_id, party7_votes from _2013_parliament_votes where party7_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party8_id, party8_votes from _2013_parliament_votes where party8_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party9_id, party9_votes from _2013_parliament_votes where party9_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party10_id, party10_votes from _2013_parliament_votes where party10_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party11_id, party11_votes from _2013_parliament_votes where party11_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party12_id, party12_votes from _2013_parliament_votes where party12_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party13_id, party13_votes from _2013_parliament_votes where party13_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party14_id, party14_votes from _2013_parliament_votes where party14_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party15_id, party15_votes from _2013_parliament_votes where party15_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party16_id, party16_votes from _2013_parliament_votes where party16_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party17_id, party17_votes from _2013_parliament_votes where party17_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party18_id, party18_votes from _2013_parliament_votes where party18_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party19_id, party19_votes from _2013_parliament_votes where party19_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party20_id, party20_votes from _2013_parliament_votes where party20_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party21_id, party21_votes from _2013_parliament_votes where party21_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party22_id, party22_votes from _2013_parliament_votes where party22_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party23_id, party23_votes from _2013_parliament_votes where party23_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party24_id, party24_votes from _2013_parliament_votes where party24_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party25_id, party25_votes from _2013_parliament_votes where party25_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party26_id, party26_votes from _2013_parliament_votes where party26_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party27_id, party27_votes from _2013_parliament_votes where party27_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party28_id, party28_votes from _2013_parliament_votes where party28_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party29_id, party29_votes from _2013_parliament_votes where party29_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party30_id, party30_votes from _2013_parliament_votes where party30_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party31_id, party31_votes from _2013_parliament_votes where party31_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party32_id, party32_votes from _2013_parliament_votes where party32_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party33_id, party33_votes from _2013_parliament_votes where party33_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party34_id, party34_votes from _2013_parliament_votes where party34_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party35_id, party35_votes from _2013_parliament_votes where party35_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party36_id, party36_votes from _2013_parliament_votes where party36_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party37_id, party37_votes from _2013_parliament_votes where party37_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party38_id, party38_votes from _2013_parliament_votes where party38_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party39_id, party39_votes from _2013_parliament_votes where party39_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party40_id, party40_votes from _2013_parliament_votes where party40_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party41_id, party41_votes from _2013_parliament_votes where party41_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party42_id, party42_votes from _2013_parliament_votes where party42_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party43_id, party43_votes from _2013_parliament_votes where party43_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party44_id, party44_votes from _2013_parliament_votes where party44_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party45_id, party45_votes from _2013_parliament_votes where party45_id is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 26, section_id, party46_id, party46_votes from _2013_parliament_votes where party46_id is not null;
drop table _2013_parliament_votes;

insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 1, party1_valid from _2009_parliament_partyvotes where party1_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 2, party2_valid from _2009_parliament_partyvotes where party2_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 3, party3_valid from _2009_parliament_partyvotes where party3_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 4, party4_valid from _2009_parliament_partyvotes where party4_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 5, party5_valid from _2009_parliament_partyvotes where party5_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 6, party6_valid from _2009_parliament_partyvotes where party6_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 7, party7_valid from _2009_parliament_partyvotes where party7_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 8, party8_valid from _2009_parliament_partyvotes where party8_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 9, party9_valid from _2009_parliament_partyvotes where party9_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 10, party10_valid from _2009_parliament_partyvotes where party10_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 11, party11_valid from _2009_parliament_partyvotes where party11_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 12, party12_valid from _2009_parliament_partyvotes where party12_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 13, party13_valid from _2009_parliament_partyvotes where party13_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 14, party14_valid from _2009_parliament_partyvotes where party14_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 15, party15_valid from _2009_parliament_partyvotes where party15_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 16, party16_valid from _2009_parliament_partyvotes where party16_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 17, party17_valid from _2009_parliament_partyvotes where party17_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 18, party18_valid from _2009_parliament_partyvotes where party18_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes)  select 27, section_id, 19, party19_valid from _2009_parliament_partyvotes where party19_valid is not null;
drop table _2009_parliament_partyvotes;


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


insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 1, party1_valid, party1_invalid from _2014_european_votes where party1_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 2, party2_valid, party2_invalid from _2014_european_votes where party2_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 3, party3_valid, party3_invalid from _2014_european_votes where party3_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 4, party4_valid, party4_invalid from _2014_european_votes where party4_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 5, party5_valid, party5_invalid from _2014_european_votes where party5_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 6, party6_valid, party6_invalid from _2014_european_votes where party6_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 7, party7_valid, party7_invalid from _2014_european_votes where party7_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 8, party8_valid, party8_invalid from _2014_european_votes where party8_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 9, party9_valid, party9_invalid from _2014_european_votes where party9_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 10, party10_valid, party10_invalid from _2014_european_votes where party10_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 11, party11_valid, party11_invalid from _2014_european_votes where party11_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 12, party12_valid, party12_invalid from _2014_european_votes where party12_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 13, party13_valid, party13_invalid from _2014_european_votes where party13_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 14, party14_valid, party14_invalid from _2014_european_votes where party14_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 15, party15_valid, party15_invalid from _2014_european_votes where party15_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 16, party16_valid, party16_invalid from _2014_european_votes where party16_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 17, party17_valid, party17_invalid from _2014_european_votes where party17_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 18, party18_valid, party18_invalid from _2014_european_votes where party18_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 19, party19_valid, party19_invalid from _2014_european_votes where party19_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 20, party20_valid, party20_invalid from _2014_european_votes where party20_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 21, party21_valid, party21_invalid from _2014_european_votes where party21_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 22, party22_valid, party22_invalid from _2014_european_votes where party22_valid is not null;
insert into votes (election_id, section_id, ballot_number, valid_votes, invalid_votes)  select 29, section_id, 23, party23_valid, party23_invalid from _2014_european_votes where party23_valid is not null;
drop table _2014_european_votes;


insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 1, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_municipality_1_protocols;
drop table _2019_mayor_municipality_1_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 2, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_1_protocols;
drop table _2019_mayor_1_protocols;


insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 3, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_region_1_protocols;
drop table _2019_mayor_region_1_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 4, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_council_region_1_protocols;
drop table _2019_council_region_1_protocols;

insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 5, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_municipality_2_protocols;
drop table _2019_mayor_municipality_2_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 6, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_2_protocols;
drop table _2019_mayor_2_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear) select 7, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, valid_no_one_all, invalid_empty_or_onclear from _2019_mayor_region_2_protocols;
drop table _2019_mayor_region_2_protocols;


insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear) select 8, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear from _2015_mayor_municipality_1_cik_protocols;
drop table _2015_mayor_municipality_1_cik_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear) select 9, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear from _2015_mayor_1_cik_protocols;
drop table _2015_mayor_1_cik_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear) select 10, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear from _2015_mayor_region_1_cik_protocols;
drop table _2015_mayor_region_1_cik_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear) select 11, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear from _2015_council_region_1_cik_protocols;
drop table _2015_council_region_1_cik_protocols;

insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear) select 12, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear from _2015_mayor_municipality_2_cik_protocols;
drop table _2015_mayor_municipality_2_cik_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear) select 13, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear from _2015_mayor_2_cik_protocols;
drop table _2015_mayor_2_cik_protocols;
insert into protocols (election_id, section_id, section_type, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear) select 14, section_id, form_number, protocol_serial_numbers, ballots_available, total_voters, added_voters, voters_by_signature, unused_ballots, destroyed_ballots, invalid_ballots_invalid_sn, invalid_ballots_photo, invalid_ballots_public, invalid_ballots_mistake, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, invalid_empty_or_onclear from _2015_mayor_region_2_cik_protocols;
drop table _2015_mayor_region_2_cik_protocols;


insert into protocols (election_id, section_id, section_type, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 15, section_id, section_type, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2011_mayor_municipality_1_protocols;
drop table _2011_mayor_municipality_1_protocols;
insert into protocols (election_id, section_id, section_type, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 16, section_id, section_type, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2011_mayor_1_protocols;
drop table _2011_mayor_1_protocols;
insert into protocols (election_id, section_id, section_type, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 17, section_id, section_type, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2011_council_region_1_protocols;
drop table _2011_council_region_1_protocols;

insert into protocols (election_id, section_id, section_type, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 18, section_id, section_type, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2011_mayor_municipality_2_protocols;
drop table _2011_mayor_municipality_2_protocols;
insert into protocols (election_id, section_id, section_type, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 19, section_id, section_type, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2011_mayor_2_protocols;
drop table _2011_mayor_2_protocols;

insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 20, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2016_president_1_protocols;
drop table _2016_president_1_protocols;
insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 21, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2016_president_2_protocols;
drop table _2016_president_2_protocols;

insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 22, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2011_president_1_protocols;
drop table _2011_president_1_protocols;
insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 23, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2011_president_2_protocols;
drop table _2011_president_2_protocols;

insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box) select 24, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_photo, invalid_ballots_public, ballots_in_box from _2017_parliament_protocols;
drop table _2017_parliament_protocols;
insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_public, ballots_in_box) select 25, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_public, ballots_in_box from _2014_parliament_protocols;
drop table _2014_parliament_protocols;
insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, ballots_in_box) select 26, section_id, total_voters, added_voters, voters_by_signature, ballots_in_box from _2013_parliament_protocols;
drop table _2013_parliament_protocols;
insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, ballots_in_box) select 27, section_id, total_voters, added_voters, voters_by_signature, ballots_in_box from _2009_parliament_protocols;
drop table _2009_parliament_protocols;

insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_public, ballots_in_box) select 28, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_public, ballots_in_box from _2019_european_protocols;
drop table _2019_european_protocols;
insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_public, ballots_in_box) select 29, section_id, total_voters, added_voters, voters_by_signature, invalid_ballots_public, ballots_in_box from _2014_european_protocols;
drop table _2014_european_protocols;
insert into protocols (election_id, section_id, total_voters, added_voters, voters_by_signature, ballots_in_box) select 30, section_id, total_voters, added_voters, voters_by_signature, ballots_in_box from _2009_european_protocols;
drop table _2009_european_protocols;

insert into districts (id, district_code, district_name) select distinct region_id, CASE WHEN CAST(region_id as NUMBER) < 10 THEN '0' || region_Id ELSE region_id END, region_name from voting_locations_2019;
insert into districts (id, district_code, district_name) values(29, 'Чужбина', 'Чужбина');
insert into districts (id, district_code, district_name) values(30, 'Цялата страна', 'Цялата страна');

insert into municipalities (id, district_id, municipality_code, municipality_name) select distinct municipality_id, region_id, CASE WHEN CAST(municipality_id as NUMBER) < 10 THEN '0' || municipality_id ELSE municipality_id END, municipality_name from voting_locations_2019;


insert into municipality_regions (id, municipality_id, region_code, region_name) select distinct municipality_id + municipality_region_code, municipality_region_code, CASE WHEN CAST(municipality_region_code as NUMBER) < 10 THEN '0' || municipality_region_code ELSE municipality_region_code END, municipality_region_name from voting_locations_2019 where municipality_region_code != '';

insert into location_types values 
(1, 'Областен град'),
(2, 'Община'),
(3, 'Град'),
(4, 'Село'),
(5, 'Чужбина'),
(6, 'Цялата страна');


insert into locations (id, district_id, municipality_id, municipality_region_id, location_type, location_name) select distinct location_id, region_id, (select id from municipalities where district_id=region_id and cast(municipalities.municipality_code as integer)=voting_locations_2019.municipality_id), municipality_region_code
CASE 
	WHEN replace(location_name, 'ГР.', '') == region_name THEN 1
	ELSE 
		CASE WHEN replace(location_name, 'ГР.','') == municipality_name THEN 2
		ELSE
		 CASE WHEN substr(location_name, 0, 3) == 'ГР' THEN 3 ELSE 4
		END
	END
END, replace(replace(location_name, 'ГР.', ''), 'С.', '') from voting_locations_2019;
insert into locations(id, location_type, location_name) select ekatte, 5, location_name from _2011_president_1_sections where municipality_name='Чужбина';
insert into locations(id, location_type, location_name) select 999, 6, 'Цялата страна';

insert into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2019 where neighborhood != '';

INSERT OR IGNORE INTO voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2019.location_id and neighborhood=replace(voting_locations_2019.neighborhood, '"', '')) from voting_locations_2019;
INSERT OR IGNORE INTO voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2019_spring.location_id and neighborhood=replace(voting_locations_2019_spring.neighborhood, '"', '')) from voting_locations_2019_spring;
INSERT OR IGNORE INTO voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2017.location_id and neighborhood=replace(voting_locations_2017.neighborhood, '"', '')) from voting_locations_2017;
INSERT OR IGNORE INTO voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2016.location_id and neighborhood=replace(voting_locations_2016.neighborhood, '"', '')) from voting_locations_2016;
INSERT OR IGNORE INTO voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2015.location_id and neighborhood=replace(voting_locations_2015.neighborhood, '"', '')) from voting_locations_2015;

insert into temp (region_code, location_id, full_code, location_name) select distinct district_id || CASE WHEN cast(municipality_id as number) < 10 THEN '0' || municipality_id ELSE municipality_id END , id, CASE WHEN cast(district_id as number) < 10 THEN '0' || district_id ELSE district_id END || CASE WHEN cast(municipality_id as number) < 10 THEN '0' || municipality_id ELSE municipality_id END || '. ', location_name from locations;

INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 1, party_id, 999, party_name from _2019_mayor_municipality_1_cik_parties;
drop table _2019_mayor_municipality_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 2, party_id, 999, party_name from _2019_mayor_1_cik_parties;
drop table _2019_mayor_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 3, party_id, 999, party_name from _2019_mayor_region_1_cik_parties;
drop table _2019_mayor_region_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 4, party_id, 999, party_name from _2019_council_region_1_cik_parties;
drop table _2019_council_region_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 5, party_id, 999, party_name from _2019_mayor_municipality_2_cik_parties;
drop table _2019_mayor_municipality_2_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 6, party_id, 999, party_name from _2019_mayor_2_cik_parties;
drop table _2019_mayor_2_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 7, party_id, 999, party_name from _2019_mayor_region_2_cik_parties;
drop table _2019_mayor_region_2_cik_parties;



INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 8, party_id, 999, party_name from _2015_mayor_municipality_1_cik_parties;
drop table _2015_mayor_municipality_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 9, party_id, 999, party_name from _2015_mayor_1_cik_parties;
drop table _2015_mayor_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 10, party_id, 999, party_name from _2015_mayor_region_1_cik_parties;
drop table _2015_mayor_region_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 11, party_id, 999, party_name from _2015_council_region_1_cik_parties;
drop table _2015_council_region_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 12, party_id, 999, party_name from _2015_mayor_municipality_2_cik_parties;
drop table _2015_mayor_municipality_2_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 13, party_id, 999, party_name from _2015_mayor_2_cik_parties;
drop table _2015_mayor_2_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 14, party_id, 999, party_name from _2015_mayor_region_2_cik_parties;
drop table _2015_mayor_region_2_cik_parties;



INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 15, party_id, 999, party_name from _2011_mayor_municipality_1_cik_parties;
drop table _2011_mayor_municipality_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 16, party_id, 999, party_name from _2011_mayor_1_cik_parties;
drop table _2011_mayor_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 17, party_id, 999, party_name from _2011_council_region_1_cik_parties;
drop table _2011_council_region_1_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 18, party_id, 999, party_name from _2011_mayor_municipality_2_cik_parties;
drop table _2011_mayor_municipality_2_cik_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, location_id, name) select 19, party_id, 999, party_name from _2011_mayor_2_cik_parties;
drop table _2011_mayor_2_cik_parties;


INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 1, (select location_id from temp where temp.full_code=substr(_2019_mayor_municipality_1_local_parties.region, 0, 7)), party_id, party_name from _2019_mayor_municipality_1_local_parties;
drop table _2019_mayor_municipality_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 2, (select location_id from temp where temp.full_code=id), party_id, party_name from _2019_mayor_1_local_parties;
drop table _2019_mayor_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 3, (select location_id from temp where temp.full_code=id), party_id, party_name from _2019_mayor_region_1_local_parties;
drop table _2019_mayor_region_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 4, (select location_id from temp where temp.full_code=substr(_2019_council_region_1_local_parties.region, 0, 7)), party_id, party_name from _2019_council_region_1_local_parties;
drop table _2019_council_region_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 5, (select location_id from temp where temp.full_code=substr(_2019_mayor_municipality_2_local_parties.region, 0, 7)), party_id, party_name from _2019_mayor_municipality_2_local_parties;
drop table _2019_mayor_municipality_2_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 6, (select location_id from temp where temp.full_code=id), party_id, party_name from _2019_mayor_2_local_parties;
drop table _2019_mayor_2_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 7, (select location_id from temp where temp.full_code=id), party_id, party_name from _2019_mayor_region_2_local_parties;
drop table _2019_mayor_region_2_local_parties;


INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 8, (select location_id from temp where temp.full_code=substr(_2015_mayor_municipality_1_local_parties.region, 0, 7)), party_id, party_name from _2015_mayor_municipality_1_local_parties;
drop table _2015_mayor_municipality_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 9, (select location_id from temp where temp.full_code=id), party_id, party_name from _2015_mayor_1_local_parties;
drop table _2015_mayor_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 10, (select location_id from temp where temp.full_code=id), party_id, party_name from _2015_mayor_region_1_local_parties;
drop table _2015_mayor_region_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 11, (select location_id from temp where temp.full_code=substr(_2015_council_region_1_local_parties.region, 0, 7)), party_id, party_name from _2015_council_region_1_local_parties;
drop table _2015_council_region_1_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 12, (select location_id from temp where temp.full_code=substr(_2015_mayor_municipality_2_local_parties.region, 0, 7)), party_id, party_name from _2015_mayor_municipality_2_local_parties;
drop table _2015_mayor_municipality_2_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 13, (select location_id from temp where temp.full_code=id), party_id, party_name from _2015_mayor_2_local_parties;
drop table _2015_mayor_2_local_parties;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 14, (select location_id from temp where temp.full_code=id), party_id, party_name from _2015_mayor_region_2_local_parties;
drop table _2015_mayor_region_2_local_parties;



INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 15, (select location_id from temp where temp.region_code=district_id), candidate_id, candidate_name from _2011_mayor_municipality_1_coalitions;
drop table _2011_mayor_municipality_1_coalitions;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 16, (select location_id from temp where temp.region_code=district_id), candidate_id, candidate_name from _2011_mayor_1_coalitions;
drop table _2011_mayor_1_coalitions;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 17, (select location_id from temp where temp.region_code=district_id), candidate_id, candidate_name from _2011_council_region_1_coalitions;
drop table _2011_council_region_1_coalitions;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 18, (select location_id from temp where temp.region_code=district_id), candidate_id, candidate_name from _2011_mayor_municipality_2_coalitions;
drop table _2011_mayor_municipality_2_coalitions;
INSERT OR IGNORE INTO parties (election_id, location_id, ballot_number, name) select 19, (select location_id from temp where temp.region_code=district_id), candidate_id, candidate_name from _2011_mayor_2_coalitions;
drop table _2011_mayor_2_coalitions;

INSERT OR IGNORE INTO parties (election_id, ballot_number, name) select 24,party_id, party_name from _2017_parliament_cik_parties;
drop table _2017_parliament_cik_parties;
INSERT OR IGNORE INTO parties (election_id, district_id, ballot_number, name) select 24, id, party_id, party_name from _2017_parliament_local_parties;
drop table _2017_parliament_local_parties;

INSERT OR IGNORE INTO parties (election_id, ballot_number, name) select 25, party_id, party_name from _2014_parliament_parties;
drop table _2014_parliament_parties;
INSERT OR IGNORE INTO parties (election_id, district_id, ballot_number, name) select 26, region_id, party_id, party_name from _2013_parliament_parties;
drop table _2013_parliament_parties;

INSERT OR IGNORE INTO parties (election_id, ballot_number, name) select 28, party_id, party_name from _2019_european_parties;
drop table _2019_european_parties;
INSERT OR IGNORE INTO parties (election_id, ballot_number, name) select 29, party_id, party_name from _2014_european_parties;
drop table _2014_european_parties;


insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 1, (select location_id from temp where temp.full_code=substr(_2019_mayor_municipality_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_municipality_1_local_candidates;
drop table _2019_mayor_municipality_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 2, (select location_id from temp where temp.full_code=substr(_2019_mayor_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_1_local_candidates;
drop table _2019_mayor_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 3, (select location_id from temp where temp.full_code=substr(_2019_mayor_region_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_region_1_local_candidates;
drop table _2019_mayor_region_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 4, (select location_id from temp where temp.full_code=substr(_2019_council_region_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_council_region_1_local_candidates;
drop table _2019_council_region_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 5, (select location_id from temp where temp.full_code=substr(_2019_mayor_municipality_2_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_municipality_2_local_candidates;
drop table _2019_mayor_municipality_2_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 6, (select location_id from temp where temp.full_code=substr(_2019_mayor_2_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_2_local_candidates;
drop table _2019_mayor_2_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 7, (select location_id from temp where temp.full_code=substr(_2019_mayor_region_2_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2019_mayor_region_2_local_candidates;
drop table _2019_mayor_region_2_local_candidates;



insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 8, (select location_id from temp where temp.full_code=substr(_2015_mayor_municipality_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2015_mayor_municipality_1_local_candidates;
drop table _2015_mayor_municipality_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 9, (select location_id from temp where temp.full_code=substr(_2015_mayor_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2015_mayor_1_local_candidates;
drop table _2015_mayor_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 10, (select location_id from temp where temp.full_code=substr(_2015_mayor_region_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2015_mayor_region_1_local_candidates;
drop table _2015_mayor_region_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 11, (select location_id from temp where temp.full_code=substr(_2015_council_region_1_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2015_council_region_1_local_candidates;
drop table _2015_council_region_1_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 12, (select location_id from temp where temp.full_code=substr(_2015_mayor_municipality_2_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2015_mayor_municipality_2_local_candidates;
drop table _2015_mayor_municipality_2_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 13, (select location_id from temp where temp.full_code=substr(_2015_mayor_2_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2015_mayor_2_local_candidates;
drop table _2015_mayor_2_local_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 14, (select location_id from temp where temp.full_code=substr(_2015_mayor_region_2_local_candidates.region_name, 0, 7)), party_id, candidate_id, candidate_name from _2015_mayor_region_2_local_candidates;
drop table _2015_mayor_region_2_local_candidates;

insert into candidates (election_id, district_id, party_id, candidate_name) select 25, region_id, party_id, candidate_name from _2014_parliament_ind;
drop table _2014_parliament_ind;


insert into candidates (election_id, location_id, party_id, candidate_name) select 15, (select id from locations where locations.district_id || locations.municipality_id=_2011_mayor_municipality_1_candidates.district_id), party_id, candidate_name from _2011_mayor_municipality_1_candidates;
drop table _2011_mayor_municipality_1_candidates;
insert into candidates (election_id, location_id, candidate_id, candidate_name) select 17, ekatte, candidate_id, candidate_name from _2011_mayor_1_candidates;
drop table _2011_mayor_1_candidates;
insert into candidates (election_id, location_id, party_id, candidate_id, candidate_name) select 17, (select id from locations where locations.district_id || locations.municipality_id=substr(_2011_council_region_1_candidates.district_id, 0, 7)), party_id, candidate_id, candidate_name from _2011_council_region_1_candidates;
drop table _2011_council_region_1_candidates;
insert into candidates (election_id, location_id, candidate_id, candidate_name) select 18, (select id from locations where locations.district_id || locations.municipality_id=_2011_mayor_municipality_2_candidates.district_id), candidate_id, candidate_name from _2011_mayor_municipality_2_candidates;
drop table _2011_mayor_municipality_2_candidates;
insert into candidates (election_id, location_id, party_id, candidate_name) select 19, ekatte, party_id, candidate_name from _2011_mayor_2_candidates;
drop table _2011_mayor_2_candidates;


insert into candidates (election_id, party_id, candidate_name) select 20, party_id, candidate_name from _2016_president_1_candidates;
drop table _2016_president_1_candidates;
insert into candidates (election_id, party_id, candidate_name) select 20, party_id, candidate_name from _2016_president_2_candidates;
drop table _2016_president_2_candidates;
insert into candidates (election_id, party_id, candidate_name) select 22, party_id, candidate_name || ' и ' || vice_candidate_name  from _2011_president_1_candidates;
drop table _2011_president_1_candidates;
insert into candidates (election_id, party_id, candidate_name) select 23, party_id, candidate_name || ' и ' || vice_candidate_name  from _2011_president_2_candidates;
drop table _2011_president_2_candidates;


insert into candidates (election_id, party_id, location_id, candidate_id, candidate_name) select 28, party_id, 999, candidate_id, candidate_name from _2019_european_candidates;
drop table _2019_european_candidates;
insert into candidates (election_id, party_id, location_id, candidate_id, candidate_name) select 29, party_id, 999, candidate_id, candidate_name from _2014_european_candidates;
drop table _2014_european_candidates;


insert into candidates (election_id, district_id, party_id, location_id, candidate_id, candidate_name) select 24, region_id, party_id, 999, candidate_id, candidate_name from _2017_parliament_local_candidates;
drop table _2017_parliament_local_candidates;
insert into candidates (election_id, district_id, party_id, location_id, candidate_id, candidate_name) select 25, region_id, party_id, 999, candidate_id, candidate_name from _2014_parliament_candidates;
drop table _2014_parliament_candidates;
insert into candidates (election_id, district_id, party_id, location_id, candidate_id, candidate_name) select 26, region_id, party_id, 999, candidate_id, candidate_name from _2013_parliament_candidates;
drop table _2013_parliament_candidates;

INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_municipality_1_sections;
drop table _2019_mayor_municipality_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_1_sections;
drop table _2019_mayor_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_region_1_sections;
drop table _2019_mayor_region_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_council_region_1_sections;
drop table _2019_council_region_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_municipality_2_sections;
drop table _2019_mayor_municipality_2_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_2_sections;
drop table _2019_mayor_2_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section) select 1, ekatte, section_id, mobile_section from _2019_mayor_region_2_sections;
drop table _2019_mayor_region_2_sections;


INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_municipality_1_sections;
drop table _2015_mayor_municipality_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_1_sections;
drop table _2015_mayor_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_region_1_sections;
drop table _2015_mayor_region_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_council_region_1_sections;
drop table _2015_council_region_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_municipality_2_sections;
drop table _2015_mayor_municipality_2_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_2_sections;
drop table _2015_mayor_2_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 2, ekatte, section_id, mobile_section, ship_section, machine_voting from _2015_mayor_region_2_sections;
drop table _2015_mayor_region_2_sections;

INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 3, ekatte, section_id from _2011_mayor_municipality_1_sections;
drop table _2011_mayor_municipality_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 3, ekatte, section_id from _2011_mayor_1_sections;
drop table _2011_mayor_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 3, ekatte, section_id from _2011_council_region_1_sections;
drop table _2011_council_region_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 3, ekatte, section_id from _2011_mayor_municipality_2_sections;
drop table _2011_mayor_municipality_2_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 3, ekatte, section_id from _2011_mayor_2_sections;
drop table _2011_mayor_2_sections;

INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 4, ekatte, section_id from _2016_president_1_sections;
drop table _2016_president_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 4, ekatte, section_id from _2016_president_2_sections;
drop table _2016_president_2_sections;

INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 3, ekatte, section_id from _2011_president_1_sections;
drop table _2011_president_1_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 3, ekatte, section_id from _2011_president_2_sections;
drop table _2011_president_2_sections;

INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section) select 5, ekatte, section_id, mobile_section, ship_section from _2017_parliament_sections;
drop table _2017_parliament_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 6, ekatte, section_id, mobile_section, ship_section, machine_voting from _2014_parliament_sections;
drop table _2014_parliament_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 7, ekatte, section_id from _2013_parliament_sections;
drop table _2013_parliament_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 8, ekatte, section_id from _2009_parliament_sections;
drop table _2009_parliament_sections;

INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 9, ekatte, section_id, mobile_section, ship_section, machine_voting from _2019_european_sections;
drop table _2019_european_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id, mobile_section, ship_section, machine_voting) select 9, ekatte, section_id, mobile_section, ship_section, machine_voting from _2014_european_sections;
drop table _2014_european_sections;
INSERT OR IGNORE INTO sections (election_period_id, location_id, section_id) select 10, ekatte, section_id from _2009_european_sections;
drop table _2009_european_sections;


insert into preferences (election_id, section_id, party_id, valid_votes) select 4, section_id, party_id, total_votes from _2019_council_region_1_preferences;
drop table _2019_council_region_1_preferences;

insert into preferences (election_id, section_id, party_id, valid_votes, invalid_votes) select 24, section_id, party_id, valid_ballots, invalid_ballots from _2017_parliament_preferences;
drop table _2017_parliament_preferences;
insert into preferences (election_id, section_id, party_id, valid_votes) select 23, section_id, party_id, votes from _2014_parliament_preferences;
drop table _2014_parliament_preferences;

insert into preferences (election_id, section_id, party_id, valid_votes) select 28, section_id, candidate_id, preferences from _2019_european_preferences;
drop table _2019_european_preferences;
insert into preferences (election_id, section_id, party_id, valid_votes, machine_voting) select 28, section_id, candidate_id, preferences, true from _2019_european_preferences_mv;
drop table _2019_european_preferences_mv;
insert into preferences (election_id, section_id, party_id, valid_votes) select 29, section_id, candidate_id, preferences from _2014_european_preferences;
drop table _2014_european_preferences;

insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 1, party_1_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 2, party_1_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 3, party_1_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 4, party_1_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 5, party_1_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 6, party_1_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 7, party_1_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 8, party_1_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 9, party_1_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 10, party_1_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 11, party_1_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 12, party_1_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 13, party_1_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 14, party_1_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 15, party_1_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 16, party_1_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 1, 17, party_1_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 1, party_2_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 2, party_2_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 3, party_2_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 4, party_2_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 5, party_2_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 6, party_2_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 7, party_2_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 8, party_2_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 9, party_2_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 10, party_2_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 11, party_2_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 12, party_2_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 13, party_2_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 14, party_2_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 15, party_2_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 16, party_2_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 2, 17, party_2_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 1, party_3_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 2, party_3_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 3, party_3_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 4, party_3_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 5, party_3_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 6, party_3_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 7, party_3_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 8, party_3_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 9, party_3_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 10, party_3_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 11, party_3_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 12, party_3_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 13, party_3_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 14, party_3_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 15, party_3_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 16, party_3_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 3, 17, party_3_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 1, party_4_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 2, party_4_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 3, party_4_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 4, party_4_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 5, party_4_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 6, party_4_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 7, party_4_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 8, party_4_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 9, party_4_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 10, party_4_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 11, party_4_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 12, party_4_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 13, party_4_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 14, party_4_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 15, party_4_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 16, party_4_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 4, 17, party_4_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 1, party_5_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 2, party_5_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 3, party_5_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 4, party_5_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 5, party_5_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 6, party_5_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 7, party_5_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 8, party_5_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 9, party_5_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 10, party_5_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 11, party_5_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 12, party_5_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 13, party_5_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 14, party_5_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 15, party_5_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 16, party_5_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 5, 17, party_5_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 1, party_6_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 2, party_6_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 3, party_6_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 4, party_6_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 5, party_6_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 6, party_6_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 7, party_6_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 8, party_6_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 9, party_6_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 10, party_6_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 11, party_6_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 12, party_6_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 13, party_6_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 14, party_6_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 15, party_6_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 16, party_6_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 6, 17, party_6_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 1, party_7_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 2, party_7_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 3, party_7_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 4, party_7_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 5, party_7_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 6, party_7_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 7, party_7_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 8, party_7_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 9, party_7_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 10, party_7_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 11, party_7_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 12, party_7_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 13, party_7_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 14, party_7_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 15, party_7_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 16, party_7_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 7, 17, party_7_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 1, party_8_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 2, party_8_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 3, party_8_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 4, party_8_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 5, party_8_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 6, party_8_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 7, party_8_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 8, party_8_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 9, party_8_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 10, party_8_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 11, party_8_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 12, party_8_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 13, party_8_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 14, party_8_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 15, party_8_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 16, party_8_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 8, 17, party_8_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 1, party_9_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 2, party_9_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 3, party_9_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 4, party_9_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 5, party_9_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 6, party_9_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 7, party_9_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 8, party_9_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 9, party_9_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 10, party_9_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 11, party_9_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 12, party_9_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 13, party_9_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 14, party_9_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 15, party_9_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 16, party_9_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 9, 17, party_9_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 1, party_10_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 2, party_10_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 3, party_10_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 4, party_10_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 5, party_10_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 6, party_10_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 7, party_10_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 8, party_10_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 9, party_10_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 10, party_10_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 11, party_10_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 12, party_10_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 13, party_10_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 14, party_10_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 15, party_10_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 16, party_10_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 10, 17, party_10_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 1, party_11_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 2, party_11_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 3, party_11_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 4, party_11_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 5, party_11_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 6, party_11_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 7, party_11_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 8, party_11_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 9, party_11_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 10, party_11_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 11, party_11_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 12, party_11_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 13, party_11_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 14, party_11_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 15, party_11_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 16, party_11_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 11, 17, party_11_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 1, party_12_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 2, party_12_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 3, party_12_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 4, party_12_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 5, party_12_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 6, party_12_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 7, party_12_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 8, party_12_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 9, party_12_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 10, party_12_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 11, party_12_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 12, party_12_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 13, party_12_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 14, party_12_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 15, party_12_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 16, party_12_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 12, 17, party_12_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 1, party_13_candidate_1 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 2, party_13_candidate_2 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 3, party_13_candidate_3 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 4, party_13_candidate_4 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 5, party_13_candidate_5 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 6, party_13_candidate_6 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 7, party_13_candidate_7 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 8, party_13_candidate_8 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 9, party_13_candidate_9 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 10, party_13_candidate_10 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 11, party_13_candidate_11 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 12, party_13_candidate_12 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 13, party_13_candidate_13 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 14, party_13_candidate_14 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 15, party_13_candidate_15 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 16, party_13_candidate_16 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 17, party_13_candidate_17 from _2009_european_preferences;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes) select 30, section_id, 13, 1, party_13_candidate_17 from _2009_european_preferences;
drop table _2009_european_preferences;


insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 1, major1_valid from _2009_parliament_majorvotes where major1_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 2, major2_valid from _2009_parliament_majorvotes where major2_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 3, major3_valid from _2009_parliament_majorvotes where major3_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 4, major4_valid from _2009_parliament_majorvotes where major4_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 5, major5_valid from _2009_parliament_majorvotes where major5_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 6, major6_valid from _2009_parliament_majorvotes where major6_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 7, major7_valid from _2009_parliament_majorvotes where major7_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 8, major8_valid from _2009_parliament_majorvotes where major8_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 9, major9_valid from _2009_parliament_majorvotes where major9_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 10, major10_valid from _2009_parliament_majorvotes where major10_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 11, major11_valid from _2009_parliament_majorvotes where major11_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 12, major12_valid from _2009_parliament_majorvotes where major12_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 13, major13_valid from _2009_parliament_majorvotes where major13_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 14, major14_valid from _2009_parliament_majorvotes where major14_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 15, major15_valid from _2009_parliament_majorvotes where major15_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 16, major16_valid from _2009_parliament_majorvotes where major16_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 17, major17_valid from _2009_parliament_majorvotes where major17_valid is not null;
insert into preferences (election_id, section_id, candidate_id, valid_votes) select 27, section_id, 18, major18_valid from _2009_parliament_majorvotes where major18_valid is not null;
drop table _2009_parliament_majorvotes;

update sections set address_id=(select id from voting_locations join voting_locations_2019 on voting_locations_2019.address=voting_locations.cik_address and sections.section_id=voting_locations_2019.section_id) where election_period_id=1 and address_id is null;
update sections set address_id=(select id from voting_locations join voting_locations_2015 on voting_locations_2015.address=voting_locations.cik_address and sections.section_id=voting_locations_2015.section_id) where election_period_id=2 and address_id is null;
update sections set address_id=(select id from voting_locations join voting_locations_2016 on voting_locations_2016.address=voting_locations.cik_address and sections.section_id=voting_locations_2016.section_id) where election_period_id=4 and address_id is null;
update sections set address_id=(select id from voting_locations join voting_locations_2017 on voting_locations_2017.address=voting_locations.cik_address and sections.section_id=voting_locations_2017.section_id) where election_period_id=5 and address_id is null;
update sections set address_id=(select id from voting_locations join voting_locations_2019_spring on voting_locations_2019_spring.address=voting_locations.cik_address and sections.section_id=voting_locations_2019_spring.section_id) where election_period_id=9 and address_id is null;

