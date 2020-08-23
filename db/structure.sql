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

