create table if not exists voting_locations_2019(
  "region_id" integer,             -- Област код
  "region_name" text,              -- Област текст
  "municipality_id" integer,       -- Община код
  "municipality_name" text,        -- Община
  "municipality_region_code" text, -- Район код
  "municipality_region_name" text, -- Район
  "section" text,                  -- Секция
  "location_id" integer,           -- Населено място код
  "location_name" text ,           -- Населено място
  "address" text,                   -- Адрес
  "section_id" text,
  "google_response" text,          -- Резултат от google maps api request
  "lat" num,
  "lng" num,
  "neighborhood" text,
  "formatted_address" text,
  "postcode" text
);

create table if not exists voting_locations_2019_spring(
  "region_id" integer,             -- Област код
  "region_name" text,              -- Област текст
  "municipality_id" integer,       -- Община код
  "municipality_name" text,        -- Община
  "municipality_region_code" text, -- Район код
  "municipality_region_name" text, -- Район
  "section" text,                  -- Секция
  "location_id" integer,           -- Населено място код
  "location_name" text ,           -- Населено място
  "address" text,                   -- Адрес
  "section_id" text,
  "google_response" text,          -- Резултат от google maps api request
  "lat" num,
  "lng" num,
  "neighborhood" text,
  "formatted_address" text,
  "postcode" text
);
create table if not exists voting_locations_2017(
  "region_id" integer,             -- Област код
  "region_name" text,              -- Област текст
  "municipality_id" integer,       -- Община код
  "municipality_name" text,        -- Община
  "municipality_region_code" text, -- Район код
  "municipality_region_name" text, -- Район
  "section" text,                  -- Секция
  "location_id" integer,           -- Населено място код
  "location_name" text ,           -- Населено място
  "address" text,                   -- Адрес
  "section_id" text,
  "google_response" text,          -- Резултат от google maps api request
  "lat" num,
  "lng" num,
  "neighborhood" text,
  "formatted_address" text,
  "postcode" text
);
create table if not exists voting_locations_2016(
  "region_id" integer,             -- Област код
  "region_name" text,              -- Област текст
  "municipality_id" integer,       -- Община код
  "municipality_name" text,        -- Община
  "municipality_region_code" text, -- Район код
  "municipality_region_name" text, -- Район
  "section" text,                  -- Секция
  "location_id" integer,           -- Населено място код
  "location_name" text ,           -- Населено място
  "address" text,                   -- Адрес
  "section_id" text,
  "google_response" text,          -- Резултат от google maps api request
  "lat" num,
  "lng" num,
  "neighborhood" text,
  "formatted_address" text,
  "postcode" text
);
create table if not exists voting_locations_2015(
  "region_id" integer,             -- Област код
  "region_name" text,              -- Област текст
  "municipality_id" integer,       -- Община код
  "municipality_name" text,        -- Община
  "municipality_region_code" text, -- Район код
  "municipality_region_name" text, -- Район
  "section" text,                  -- Секция
  "location_id" integer,           -- Населено място код
  "location_name" text ,           -- Населено място
  "address" text,                   -- Адрес
  "section_id" text,
  "google_response" text,          -- Резултат от google maps api request
  "lat" num,
  "lng" num,
  "neighborhood" text,
  "formatted_address" text,
  "postcode" text
);

.mode csv
.separator ';'
.import ./files/voting_sections_2019.csv voting_locations_2019
.import ./files/voting_sections_2019_spring.csv voting_locations_2019_spring
.import ./files/voting_sections_2017.csv voting_locations_2017
.import ./files/voting_sections_2016.csv voting_locations_2016
.import ./files/voting_sections_2015.csv voting_locations_2015

update voting_locations_2019 set section_id=CASE WHEN region_id < 10 THEN '0' || region_id ELSE region_id END ||
        CASE WHEN municipality_id < 10 THEN '0' || municipality_id ELSE municipality_id END ||
        CASE WHEN municipality_region_code = '' THEN '00' ELSE municipality_region_code END ||
        section;

update voting_locations_2019_spring set section_id=CASE WHEN region_id < 10 THEN '0' || region_id ELSE region_id END ||
        CASE WHEN municipality_id < 10 THEN '0' || municipality_id ELSE municipality_id END ||
        CASE WHEN municipality_region_code = '' THEN '00' ELSE municipality_region_code END ||
        section;

update voting_locations_2017 set section_id=CASE WHEN region_id < 10 THEN '0' || region_id ELSE region_id END ||
        CASE WHEN municipality_id < 10 THEN '0' || municipality_id ELSE municipality_id END ||
        CASE WHEN municipality_region_code = '' THEN '00' ELSE municipality_region_code END ||
        section;

update voting_locations_2016 set section_id=CASE WHEN cast(region_id as number) < 10 THEN '0' || region_id ELSE region_id END ||
        CASE WHEN municipality_id < 10 THEN '0' || municipality_id ELSE municipality_id END ||
        CASE WHEN municipality_region_code = '0' THEN '00' ELSE municipality_region_code END ||
        section;

update voting_locations_2015 set section_id=CASE WHEN region_id < 10 THEN '0' || region_id ELSE region_id END ||
        CASE WHEN municipality_id < 10 THEN '0' || municipality_id ELSE municipality_id END ||
        CASE WHEN municipality_region_code = '' THEN '00' ELSE municipality_region_code END ||
        section;

-- Run ./fill_in_sections_coordinates voting_locations_2019_spring

update voting_locations_2019_spring set formatted_address=(select formatted_address from voting_locations_2019_spring where voting_locations_2019.location_id=voting_locations_2019_spring.location_id and
 voting_locations_2019.address=voting_locations_2016.address) where formatted_address is null;
update voting_locations_2019_spring set lat=(select lat from voting_locations_2019_spring where voting_locations_2019.formatted_address=voting_locations_2019_spring.formatted_address) where lat is null;
update voting_locations_2019_spring set lng=(select lng from voting_locations_2019 where voting_locations_2019.formatted_address=voting_locations_2019_spring.formatted_address) where lng is null;
update voting_locations_2019_spring set neighborhood=(select neighborhood from voting_locations_2019 where voting_locations_2019.formatted_address=voting_locations_2019_spring.formatted_address) where neighborhood is null;
update voting_locations_2019_spring set postcode=(select postcode from voting_locations_2019 where voting_locations_2019.formatted_address=voting_locations_2019_spring.formatted_address) where postcode is null;

-- Run ./fill_in_sections_coordinates voting_locations_2019_spring

update voting_locations_2017 set formatted_address=(select formatted_address from voting_locations_2019_spring where voting_locations_2019_spring.location_id=voting_locations_2017.location_id and
 voting_locations_2019_spring.address=voting_locations_2016.address) where formatted_address is null;
update voting_locations_2017 set lat=(select lat from voting_locations_2017 where voting_locations_2019.formatted_address=voting_locations_2017.formatted_address) where lat is null;
update voting_locations_2017 set lng=(select lng from voting_locations_2019 where voting_locations_2019.formatted_address=voting_locations_2017.formatted_address) where lng is null;
update voting_locations_2017 set neighborhood=(select neighborhood from voting_locations_2019 where voting_locations_2019.formatted_address=voting_locations_2017.formatted_address) where neighborhood is null;
update voting_locations_2017 set postcode=(select postcode from voting_locations_2019 where voting_locations_2019.formatted_address=voting_locations_2017.formatted_address) where postcode is null;

-- Run ./fill_in_sections_coordinates voting_locations_2017

update voting_locations_2016 set formatted_address=(select formatted_address from voting_locations_2017 where voting_locations_2017.location_id=voting_locations_2016.location_id and
 voting_locations_2017.address=voting_locations_2016.address) where formatted_address is null;
update voting_locations_2016 set lat=(select lat from voting_locations_2019_spring where voting_locations_2019_spring.formatted_address=voting_locations_2016.formatted_address) where lat is null;
update voting_locations_2016 set lng=(select lng from voting_locations_2019_spring where voting_locations_2019_spring.formatted_address=voting_locations_2016.formatted_address) where lng is null;
update voting_locations_2016 set neighborhood=(select neighborhood from voting_locations_2019_spring where voting_locations_2019_spring.formatted_address=voting_locations_2016.formatted_address) where neighborhood is null;
update voting_locations_2016 set postcode=(select postcode from voting_locations_2019_spring where voting_locations_2019_spring.formatted_address=voting_locations_2016.formatted_address) where postcode is null;

-- Run ./fill_in_sections_coordinates voting_locations_2016

update voting_locations_2015 set formatted_address=(select formatted_address from voting_locations_2017 where voting_locations_2017.location_id=voting_locations_2015.location_id and
 voting_locations_2017.address=voting_locations_2015.address) where formatted_address is null;
update voting_locations_2015 set lat=(select lat from voting_locations_2017 where voting_locations_2017.formatted_address=voting_locations_2015.formatted_address) where lat is null;
update voting_locations_2015 set lng=(select lng from voting_locations_2017 where voting_locations_2017.formatted_address=voting_locations_2015.formatted_address) where lng is null;
update voting_locations_2015 set neighborhood=(select neighborhood from voting_locations_2017 where voting_locations_2017.formatted_address=voting_locations_2015.formatted_address) where neighborhood is null;
update voting_locations_2015 set postcode=(select postcode from voting_locations_2017 where voting_locations_2017.formatted_address=voting_locations_2015.formatted_address) where postcode is null;

-- Run ./fill_in_sections_coordinates voting_locations_2015
