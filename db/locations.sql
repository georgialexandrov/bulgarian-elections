create table _2019_mayor_1_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "municipality_name" text, -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "location_name" text,     -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);
create table _2019_mayor_municipality_1_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "municipality_name" text, -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "location_name" text,     -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);
create table _2019_mayor_region_1_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "municipality_name" text, -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "location_name" text,     -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);
create table _2019_council_region_1_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "municipality_name" text, -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "location_name" text,     -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);
create table _2019_mayor_2_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "municipality_name" text, -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "location_name" text,     -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);
create table _2019_mayor_municipality_2_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "municipality_name" text, -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "location_name" text,     -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);
create table _2019_mayor_region_2_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "municipality_name" text, -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "location_name" text,     -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);


drop table if exists districts;
create table districts(
  "id" integer primary key,
  "district_code" text,
  "district_name" text
);

drop table if exists municipalities;
create table municipalities(
  "id" integer primary key autoincrement,
  "district_id" integer,
  "municipality_code" text,
  "municipality_name" text,
  foreign key(district_id) references districts(id)
);

drop table if exists municipality_regions;
create table municipality_regions(
  "id" integer primary key autoincrement,
  "municipality_id" integer,
  "region_code" text,
  "region_name" text,
  foreign key(municipality_id) references municipalities(id),
  unique(municipality_id,region_code)
);

drop table if exists location_neighborhoods;
create table location_neighborhoods(
  "id" integer primary key autoincrement,
  "location_id" integer,
  "neighborhood" text,
  foreign key(location_id) references locations(id)
);

drop table if exists locations;
create table locations(
  "id" integer primary key,
  "district_id" integer,
  "municipality_id" integer,
  "location_type" integer,
  "location_name" text,
  "ekatte" integer,
  foreign key(district_id) references districts(id),
  foreign key(municipality_id) references municipalities(id)
);

drop table if exists location_types;
create table location_types(
  "id" integer,
  "name" text
);

insert into location_types values
(1, 'Областен град'),
(2, 'Община'),
(3, 'Град'),
(4, 'Село'),
(5, 'Чужбина'),
(6, 'Цялата страна');

.read './db/voting_locations.sql'

drop table districts;
insert into "districts" ("id", "district_code", "district_name") VALUES
(1, '01', 'Благоевград'),
(2, '02', 'Бургас'),
(3, '03', 'Варна'),
(4, '04', 'Велико Търново'),
(5, '05', 'Видин'),
(6, '06', 'Враца'),
(7, '07', 'Габрово'),
(8, '08', 'Добрич'),
(9, '09', 'Кърджали'),
(10, '10', 'Кюстендил'),
(11, '11', 'Ловеч'),
(12, '12', 'Монтана'),
(13, '13', 'Пазарджик'),
(14, '14', 'Перник'),
(15, '15', 'Плевен'),
(16, '16', 'Пловдив'),
(17, '17', 'Разград'),
(18, '18', 'Русе'),
(19, '19', 'Силистра'),
(20, '20', 'Сливен'),
(21, '21', 'Смолян'),
(22, '22', 'София'),
(23, '23', 'Софийска'),
(24, '24', 'Стара Загора'),
(25, '25', 'Търговище'),
(26, '26', 'Хасково'),
(27, '27', 'Шумен'),
(28, '28', 'Ямбол'),
(29, 'Чужбина', 'Чужбина'),
(30, 'Цялата страна', 'Цялата страна');

insert into municipalities(district_id, municipality_code, municipality_name) select distinct cast(substr(section_id, 1, 2) as number) as district_id, substr(section_id, 3, 2) as municipality_code, replace(municipality_name, substr(section_id, 1, 2) || substr(section_id, 3, 2) || '. ', '') as municipality_name from _2019_mayor_municipality_1_sections;
insert into municipality_regions (municipality_id, region_code, region_name) select distinct municipalities.id, region_code, region_name from municipalities join (select distinct cast(substr(section_id, 1, 2) as number) as district_id, substr(section_id, 3, 2) as municipality_code, substr(municipality_name, 1, 2) as region_code, replace(municipality_name, substr(municipality_name, 1, 2) || '. ', '') as region_name from _2019_mayor_region_1_sections) as i on i.municipality_code=municipalities.municipality_code and i.district_id=municipalities.district_id;

delete from locations;
insert into locations (district_id, municipality_id, location_type, location_name, ekatte) select distinct cast(substr(section_id, 1, 2) as number) as district_id, municipalities.id as municipality_id, case
	when replace(location_name, 'гр.', '') == districts.district_name then 1
	else
		case when replace(location_name, 'гр.','') == municipalities.municipality_name then 2
		else
		 case when substr(location_name, 1, 3) == 'гр.' then 3 else 4
		end
	end
end as location_type, replace(replace(location_name, 'гр.', ''), 'с.', '') as location_name, ekatte from _2019_mayor_municipality_1_sections join municipalities on municipalities.municipality_code=substr(section_id, 3, 2) join districts on districts.id=municipalities.district_id where districts.id=cast(substr(section_id, 1, 2) as number);
insert into locations(id, location_type, location_name) select 999, 6, 'Цялата страна';