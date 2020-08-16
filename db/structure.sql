-- -------------------------------------------------------------
-- TablePlus 3.7.1(332)
--
-- https://tableplus.com/
--
-- Database: all_elections.db
-- Generation Time: 2020-08-15 12:47:21.2670
-- -------------------------------------------------------------


CREATE TABLE president_2011_1_candidates(
  "party_id" text,            -- 1) Номер на партията/коалицията/инициативния комитет, издигнал кандидата
  "candidate_name" integer,   -- 2) Име на кандидата за президент
  "vice_candidate_name" text, -- 3) Име на кандидата за вицепрезидент
  "party_name" text           -- 4) Име на партията/коалицията/инициативния комитет, издигнал кандидата
);

CREATE TABLE president_2011_2_candidates(
  "party_id" text,            -- 1) Номер на партията/коалицията/инициативния комитет, издигнал кандидата
  "candidate_name" integer,   -- 2) Име на кандидата за президент
  "vice_candidate_name" text, -- 3) Име на кандидата за вицепрезидент
  "party_name" text           -- 4) Име на партията/коалицията/инициативния комитет, издигнал кандидата
);

CREATE TABLE parliament_2013_candidates(
  "region_id" integer,    -- 1) Код на РИК
  "party_id" integer,     -- 2) Номер на партията/коалицията/инициативния комитет, издигнал кандидата
  "candidate_id" integer, -- 3) Номер на кандидата в листата
  "candidate_name" text,  -- 4) Име на кандидата
  "party_name" text       -- 5) Име на партията/коалицията/инициативния комитет, издигнал кандидата
);

CREATE TABLE parliament_2014_candidates(
  "region_id" integer,    -- 1) Номер на РИК
  "party_id" integer,     -- 2) Номер на партия/коалиция/инициативен комитет
  "party_name" integer,   -- 3) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 4) Номер на кандидат в листата
  "candidate_name" text   -- 5) Име на кандидат
);

CREATE TABLE president_2016_1_candidates(
  "party_id" text,       -- 1) Номер на партия/коалиция/инициативен комитет
  "party_name" integer,  -- 2) Име на партия/коалиция/инициативен комитет
  "candidate_id" text,   -- 3) Номер на кандидат в листата
  "candidate_name" text, -- 4) Име на кандидат
  "chosen_one" text      -- 5) Флаг за избран кандидат
);

CREATE TABLE president_2016_2_candidates(
  "party_id" text,       -- 1) Номер на партия/коалиция/инициативен комитет
  "party_name" integer,  -- 2) Име на партия/коалиция/инициативен комитет
  "candidate_id" text,   -- 3) Номер на кандидат в листата
  "candidate_name" text, -- 4) Име на кандидат
  "chosen_one" text      -- 5) Флаг за избран кандидат
);

CREATE TABLE european_2019_candidates(
  "party_id" text,       -- 1) Номер на партия/коалиция/инициативен комитет
  "party_name" integer,  -- 2) Име на партия/коалиция/инициативен комитет
  "candidate_id" text,   -- 3) Номер на кандидат в листата
  "candidate_name" text, -- 4) Име на кандидат
  "chosen_one" text      -- 5) Флаг за избран кандидат
);

CREATE TABLE european_2014_candidates(
  "party_id" text,       -- 1) Номер на партия/коалиция/инициативен комитет
  "party_name" integer,  -- 2) Име на партия/коалиция/инициативен комитет
  "candidate_id" text,   -- 3) Номер на кандидат в листата
  "candidate_name" text -- 4) Име на кандидат
);

CREATE TABLE parliament_2017_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име  
);

CREATE TABLE parliament_2014_ind(
  "region_id" integer,  -- Регион
  "party_id" integer,   -- Номер на кандидата в листата
  "candidate_name" text -- Име на кандидата
);

CREATE TABLE mayor_2015_1_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име  
);
CREATE TABLE mayor_municipality_2015_1_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име  
);
CREATE TABLE mayor_region_2015_1_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име  
);
CREATE TABLE council_2015_1_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име  
);
CREATE TABLE mayor_2015_2_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име  
);
CREATE TABLE mayor_municipality_2015_2_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име  
);
CREATE TABLE mayor_region_2015_2_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име  
);

CREATE TABLE mayor_2015_1_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "elected" text          -- 7) Флаг за избран кандидат(0-не е избран, 1-избран, 2-балотаж)
);
CREATE TABLE mayor_municipality_2015_1_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "elected" text          -- 7) Флаг за избран кандидат(0-не е избран, 1-избран, 2-балотаж)
);
CREATE TABLE mayor_region_2015_1_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "elected" text          -- 7) Флаг за избран кандидат(0-не е избран, 1-избран, 2-балотаж)
);
CREATE TABLE council_2015_1_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "elected" text          -- 7) Флаг за избран кандидат(0-не е избран, 1-избран, 2-балотаж)
);
CREATE TABLE mayor_2015_2_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "elected" text          -- 7) Флаг за избран кандидат(0-не е избран, 1-избран, 2-балотаж)
);
CREATE TABLE mayor_municipality_2015_2_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "elected" text          -- 7) Флаг за избран кандидат(0-не е избран, 1-избран, 2-балотаж)
);
CREATE TABLE mayor_region_2015_2_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "elected" text          -- 7) Флаг за избран кандидат(0-не е избран, 1-избран, 2-балотаж)
);

CREATE TABLE parliament_2017_local_candidates(
  "region_id" integer,    -- 1) Код на РИК
  "region_name" text,     -- 2) Наименование на Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "" text
);

CREATE TABLE mayor_2015_1_local_parties(
  "id" integer,       -- 1) Код на ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер
  "party_name" text   -- 4) Име
);
CREATE TABLE mayor_municipality_2015_1_local_parties(
  "id" integer,       -- 1) Код на ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер
  "party_name" text   -- 4) Име
);
CREATE TABLE mayor_region_2015_1_local_parties(
  "id" integer,       -- 1) Код на ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер
  "party_name" text   -- 4) Име
);
CREATE TABLE council_2015_1_local_parties(
  "id" integer,       -- 1) Код на ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер
  "party_name" text   -- 4) Име
);
CREATE TABLE mayor_2015_2_local_parties(
  "id" integer,       -- 1) Код на ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер
  "party_name" text   -- 4) Име
);
CREATE TABLE mayor_municipality_2015_2_local_parties(
  "id" integer,       -- 1) Код на ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер
  "party_name" text   -- 4) Име
);
CREATE TABLE mayor_region_2015_2_local_parties(
  "id" integer,       -- 1) Код на ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер
  "party_name" text   -- 4) Име
);

CREATE TABLE parliament_2017_local_parties(
  "id" integer,       -- 1) Код на РИК
  "region" text,      -- 2) Наименование на Район
  "party_id" integer, -- 3) Номер на партия
  "party_name" text   -- 4) Име
);

CREATE TABLE mayor_2019_1_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "" text
);

CREATE TABLE mayor_municipality_2019_1_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "" text
);

CREATE TABLE mayor_region_2019_1_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "" text
);

CREATE TABLE council_region_2019_1_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "" text
);


CREATE TABLE mayor_2019_2_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "" text
);

CREATE TABLE mayor_municipality_2019_2_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "" text
);

CREATE TABLE mayor_region_2019_2_local_candidates(
  "region_id" integer,    -- 1) Код на ОИК
  "region_name" text,     -- 2) Наименование на Община/Кметство/Район
  "party_id" integer,     -- 3) Номер на партия/коалиция/инициативен комитет
  "party_name" text,      -- 4) Име на партия/коалиция/инициативен комитет
  "candidate_id" integer, -- 5) Номер на кандидат в листата
  "candidate_name" text,  -- 6) Име на кандидат
  "" text
);


CREATE TABLE mayor_2019_1_local_parties(
  "id" integer,       -- 1) Код ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер по жребий
  "party_name" text   -- 4) Име на партия/коалиция/местна коалиция/инициативен комитет
);

CREATE TABLE mayor_municipality_2019_1_local_parties(
  "id" integer,       -- 1) Код ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер по жребий
  "party_name" text   -- 4) Име на партия/коалиция/местна коалиция/инициативен комитет
);

CREATE TABLE mayor_region_2019_1_local_parties(
  "id" integer,       -- 1) Код ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер по жребий
  "party_name" text   -- 4) Име на партия/коалиция/местна коалиция/инициативен комитет
);

CREATE TABLE council_region_2019_1_local_parties(
  "id" integer,       -- 1) Код ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер по жребий
  "party_name" text   -- 4) Име на партия/коалиция/местна коалиция/инициативен комитет
);

CREATE TABLE mayor_2019_2_local_parties(
  "id" integer,       -- 1) Код ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер по жребий
  "party_name" text   -- 4) Име на партия/коалиция/местна коалиция/инициативен комитет
);

CREATE TABLE mayor_municipality_2019_2_local_parties(
  "id" integer,       -- 1) Код ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер по жребий
  "party_name" text   -- 4) Име на партия/коалиция/местна коалиция/инициативен комитет
);

CREATE TABLE mayor_region_2019_2_local_parties(
  "id" integer,       -- 1) Код ОИК
  "region" text,      -- 2) Наименование на Община/Кметство/Район
  "party_id" integer, -- 3) Номер по жребий
  "party_name" text   -- 4) Име на партия/коалиция/местна коалиция/инициативен комитет
);

CREATE TABLE parliament_2009_majorvotes(
  "section_id" text,       -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "major1_valid" integer,  -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major2_valid" integer,  -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major3_valid" integer,  -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major4_valid" integer,  -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major5_valid" integer,  -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major6_valid" integer,  -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major7_valid" integer,  -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major8_valid" integer,  -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major9_valid" integer,  -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major10_valid" integer, -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major11_valid" integer, -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major12_valid" integer, -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major13_valid" integer, -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major14_valid" integer, -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major15_valid" integer, -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major16_valid" integer, -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major17_valid" integer, -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major18_valid" integer, -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major19_valid" integer, -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
  "major20_valid" integer  -- Гласовете за мажоритарни кандидати за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидат в съответния район се вписва празна стойност.
);

CREATE TABLE parliament_2013_parties(
  "region_id" integer, -- 1) Код на РИК, попълва се само за инициативните комитети, издигащи независим кандидат
  "party_id" integer,  -- 2) Номер, под който е регистрирана партията/коалицията/инициативният комитет
  "party_name" text    -- 3) Наименование на партията/коалицията/инициативният комитет
);

CREATE TABLE parliament_2014_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име
);

CREATE TABLE european_2019_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име
);

CREATE TABLE european_2014_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име
);


CREATE TABLE mayor_2019_1_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име
);

CREATE TABLE mayor_municipality_2019_1_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име
);

CREATE TABLE council_region_2019_1_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име
);
CREATE TABLE mayor_region_2019_1_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име
);

CREATE TABLE mayor_2019_2_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име
);

CREATE TABLE mayor_municipality_2019_2_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име
);

CREATE TABLE mayor_region_2019_2_cik_parties(
  "party_id" integer, -- 1) Номер
  "party_name" text   -- 2) Име
);

CREATE TABLE parliament_2009_partyvotes(
  "section_id" text,       -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "party1_valid" integer,  -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party2_valid" integer,  -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party3_valid" integer,  -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party4_valid" integer,  -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party5_valid" integer,  -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party6_valid" integer,  -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party7_valid" integer,  -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party8_valid" integer,  -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party9_valid" integer,  -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party10_valid" integer, -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party11_valid" integer, -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party12_valid" integer, -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party13_valid" integer, -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party14_valid" integer, -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party15_valid" integer, -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party16_valid" integer, -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party17_valid" integer, -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party18_valid" integer, -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
  "party19_valid" integer  -- Гласовете за партии за съответния район, подредени по техния пореден номер. За партиите, които не издигат кандидатски листи в съответния район се вписва празна стойност.
);

CREATE TABLE european_2009_preferences(
  "section_id" text,      -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "column_1" integer,
  "column_2" integer,
  "column_3" integer,
  "column_4" integer,
  "column_5" integer,
  "column_6" integer,
  "column_7" integer,
  "column_8" integer,
  "column_9" integer,
  "column_10" integer,
  "column_11" integer,
  "column_12" integer,
  "column_13" integer,
  "column_14" integer,
  "column_15" integer,
  "column_16" integer,
  "column_17" integer,
  "column_18" integer,
  "column_19" integer,
  "column_20" integer,
  "column_21" integer,
  "column_22" integer,
  "column_23" integer,
  "column_24" integer,
  "column_25" integer,
  "column_26" integer,
  "column_27" integer,
  "column_28" integer,
  "column_29" integer,
  "column_30" integer,
  "column_31" integer,
  "column_32" integer,
  "column_33" integer,
  "column_34" integer,
  "column_35" integer,
  "column_36" integer,
  "column_37" integer,
  "column_38" integer,
  "column_39" integer,
  "column_40" integer,
  "column_41" integer,
  "column_42" integer,
  "column_43" integer,
  "column_44" integer,
  "column_45" integer,
  "column_46" integer,
  "column_47" integer,
  "column_48" integer,
  "column_49" integer,
  "column_50" integer,
  "column_51" integer,
  "column_52" integer,
  "column_53" integer,
  "column_54" integer,
  "column_55" integer,
  "column_56" integer,
  "column_57" integer,
  "column_58" integer,
  "column_59" integer,
  "column_60" integer,
  "column_61" integer,
  "column_62" integer,
  "column_63" integer,
  "column_64" integer,
  "column_65" integer,
  "column_66" integer,
  "column_67" integer,
  "column_68" integer,
  "column_69" integer,
  "column_70" integer,
  "column_71" integer,
  "column_72" integer,
  "column_73" integer,
  "column_74" integer,
  "column_75" integer,
  "column_76" integer,
  "column_77" integer,
  "column_78" integer,
  "column_79" integer,
  "column_80" integer,
  "column_81" integer,
  "column_82" integer,
  "column_83" integer,
  "column_84" integer,
  "column_85" integer,
  "column_86" integer,
  "column_87" integer,
  "column_88" integer,
  "column_89" integer,
  "column_90" integer,
  "column_91" integer,
  "column_92" integer,
  "column_93" integer,
  "column_94" integer,
  "column_95" integer,
  "column_96" integer,
  "column_97" integer,
  "column_98" integer,
  "column_99" integer,
  "column_100" integer,
  "column_101" integer,
  "column_102" integer,
  "column_103" integer,
  "column_104" integer,
  "column_105" integer,
  "column_106" integer,
  "column_107" integer,
  "column_108" integer,
  "column_109" integer,
  "column_110" integer,
  "column_111" integer,
  "column_112" integer,
  "column_113" integer,
  "column_114" integer,
  "column_115" integer,
  "column_116" integer,
  "column_117" integer,
  "column_118" integer,
  "column_119" integer,
  "column_120" integer,
  "column_121" integer,
  "column_122" integer,
  "column_123" integer,
  "column_124" integer,
  "column_125" integer,
  "column_126" integer,
  "column_127" integer,
  "column_128" integer,
  "column_129" integer,
  "column_130" integer,
  "column_131" integer,
  "column_132" integer,
  "column_133" integer,
  "column_134" integer,
  "column_135" integer,
  "column_136" integer,
  "column_137" integer,
  "column_138" integer,
  "column_139" integer,
  "column_140" integer,
  "column_141" integer,
  "column_142" integer,
  "column_143" integer,
  "column_144" integer,
  "column_145" integer,
  "column_146" integer,
  "column_147" integer,
  "column_148" integer,
  "column_149" integer,
  "column_150" integer,
  "column_151" integer,
  "column_152" integer,
  "column_153" integer,
  "column_154" integer,
  "column_155" integer,
  "column_156" integer,
  "column_157" integer,
  "column_158" integer,
  "column_159" integer,
  "column_160" integer,
  "column_161" integer,
  "column_162" integer,
  "column_163" integer,
  "column_164" integer,
  "column_165" integer,
  "column_166" integer,
  "column_167" integer,
  "column_168" integer,
  "column_169" integer,
  "column_170" integer,
  "column_171" integer,
  "column_172" integer,
  "column_173" integer,
  "column_174" integer,
  "column_175" integer,
  "column_176" integer,
  "column_177" integer,
  "column_178" integer,
  "column_179" integer,
  "column_180" integer,
  "column_181" integer,
  "column_182" integer,
  "column_183" integer,
  "column_184" integer,
  "column_185" integer,
  "column_186" integer,
  "column_187" integer,
  "column_188" integer,
  "column_189" integer,
  "column_190" integer,
  "column_191" integer,
  "column_192" integer,
  "column_193" integer,
  "column_194" integer,
  "column_195" integer,
  "column_196" integer,
  "column_197" integer,
  "column_198" integer,
  "column_199" integer,
  "column_200" integer,
  "column_201" integer,
  "column_202" integer,
  "column_203" integer,
  "column_204" integer,
  "column_205" integer,
  "column_206" integer,
  "column_207" integer,
  "column_208" integer,
  "column_209" integer,
  "column_210" integer,
  "column_211" integer,
  "column_212" integer,
  "column_213" integer,
  "column_214" integer,
  "" text
);

CREATE TABLE parliament_2014_preferences(
  "section_id" text,      -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "party_id" integer,     -- 2) Номер на партия
  "candidate_id" integer, -- 3) Номер на кандидат в кандидатска листа (0 - за поле "без")
  "votes" integer         -- 4) Брой гласове
);

CREATE TABLE parliament_2017_preferences(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "party_id" integer,       -- 2) Номер на партия
  "valid_ballots" integer,  -- 3) Номер на кандидат в кандидатска листа
  "invalid_ballots" integer -- 4) Брой гласове
);

CREATE TABLE european_2019_preferences(
  "section_id" text,        -- 1) Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "party_id" integer,       -- 2) Номер на партия
  "candidate_id" integer,   -- 3) Номер на кандидат в кандидатска листа
  "preferences" integer     -- 4) Брой предпочитания (преференции)
);

CREATE TABLE european_2014_preferences(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "party_id" integer,       -- 2) Номер на партия
  "candidate_id" integer,   -- 3) Номер на кандидат в кандидатска листа
  "preferences" integer     -- 4) Брой гласове
);

CREATE TABLE european_2019_preferences_mv(
  "section_id" text,        -- 1) Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "party_id" integer,       -- 2) Номер на партия
  "candidate_id" integer,   -- 3) Номер на кандидат в кандидатска листа
  "preferences" integer     -- 4) Брой предпочитания (преференции)
);

CREATE TABLE parliament_2009_protocols(
  "section_id" text,                             -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "total_voters" integer,                        -- 2) (т.1) Брой на избирателите в основния и допълнителния избирателен списък (т. 1 = т. 2 + т. 3 + т. 4)
  "total_voters_in_section" integer,             -- 3) (т.2) Брой на избирателите в основния избирателен списък (равен на броя на избирателите в избирателния списък и в списъка за гласуване с подвижна избирателна кутия (когато има такъв) при предаването му на СИК) 
  "added_on_elections_day" integer,              -- 4) (т.3) Брой на избирателите, вписани от СИК в допълнителната страница на основния избирателен списък в изборния ден
  "added_voters" integer,                        -- 5) (т.4) Брой на избирателите в допълнителния избирателен списък (т. 4 = т. 5 + т. 6 + т. 7)
  "vote_another_place_count" integer,            -- 6) (т.5) Брой на удостоверенията за гласуване на друго място
  "student_declaration_count" integer,           -- 7) (т.6) Брой на декларациите на ученици и студенти по чл. 36, ал. 11 от ЗИНП
  "voters_with_eye_problems_count" integer,      -- 8) (т.7) Брой на декларациите на избиратели с физически или зрителни увреждания по чл. 88а, ал. 3 от ЗИНП
  "decl84a" integer,                             -- 9) (т.8) Брой на декларациите на служебно заети лица по чл. 84а от ЗИНП
  "voters_by_signature" integer,                 -- 10) (т.9) Брой на гласувалите избиратели според подписите в избирателните списъци (основен и допълнителен)
  "machine_vote_count" integer,                  -- 11) (т.10) Брой избиратели гласували по електронен път според отбелязванията в графа „Забележки” на избирателния списък <b>(попълва се от СИК, в която се провежда електронно гласуване, останалите СИК вписват нула)</b>
  "major_ballots_in_box" integer,                -- 12) (т.11) Брой на намерените в избирателните кутии бюлетини за мажоритарни кандидати
  "invalid_major_ballots" integer,               -- 13) (т.12) Брой на намерените бюлетини за мажоритарни кандидати, които не са по установения образец
  "invalid_major_count_special_symbols" integer, -- 14) (т.13) Брой на намерените бюлетини за мажоритарни кандидати с вписани в тях специални символи като букви и числа, позволяващи да се разкрие самоличността на избирателя
  "empty_major_ballots" integer,                 -- 15) (т.14) Брой на намерените бюлетини за мажоритарни кандидати по установения образец, в които не е отразен вотът на избирателя  и които съдържат два печата на СИК
  "major_ballots_multiple_choice" integer,       -- 16) (т.15) Брой на намерените бюлетини за мажоритарни кандидати по установения образец, с отбелязан вот за двама или повече кандидати и които съдържат два печата на СИК
  "major_ballots_without_stamp" integer,         -- 17) (т.16) Брой на намерените бюлетини за мажоритарни кандидати, които не съдържат два печата на СИК
  "total_ballots_in_box" integer,                -- 18) (т.17) Брой на недействителните гласове за мажоритарни кандидати (т. 17 = т. 12 + т. 13 + т. 14 + т. 15 + т. 16)
  "total_major_invalid_ballots" integer,         -- 19) (т.18) Брой на намерените бюлетини за мажоритарни кандидати по установения образец с отбелязан вот за един кандидат и които съдържат два печата на СИК (брой на действителните гласове за мажоритарни кандидати)
  "ballots_with_special_symbols" integer,        -- 20) (т.20) Брой на намерените в избирателните кутии бюлетини за кандидатски листи
  "empty_ballots" integer,                       -- 21) (т.21) Брой на намерените бюлетини за кандидатски листи, които не са по установения образец
  "invalid_ballots_multiple_choice" integer,     -- 22) (т.22) Брой на намерените бюлетини за кандидатски листи с вписани в тях специални символи като букви и числа, позволяващи да се разкрие самоличността на избирателя
  "ballots_without_two_stamps" integer,          -- 23) (т.23) Брой на намерените бюлетини за кандидатски листи по установения образец, в които не е отразен вотът на избирателя и които съдържат два печата на СИК
  "invalid_ballots" integer,                     -- 24) (т.24) Брой на намерените бюлетини за кандидатски листи по установения образец, с отбелязан вот за двама или повече кандидати и които съдържат два печата на СИК
  "invalid_ballots_no_stamps_count" integer,     -- 25) (т.25) Брой на намерените бюлетини за кандидатски листи, които не съдържат два печата на СИК
  "total_invalid_ballots" integer,               -- 26) (т.26) Брой на недействителните гласове за кандидатски листи (т. 26 = т. 21 + т. 22 + т. 23 + т. 24 + т. 25)
  "total_valid_ballots" integer,                 -- 27) (т.27) Брой на намерените бюлетини за кандидатски листи по установения образец с отбелязан вот за една кандидатска листа и които съдържат два печата на СИК (брой на действителните гласове за кандидатски листи)
  "total_invalid_881011" integer                 -- 28) (т.29) Брой на недействителните бюлетини по чл. 88, ал. 10 и 11 от ЗИНП 
);

CREATE TABLE european_2009_protocols(
  "section_id" text,                               -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "total_voters" integer,                          -- 2) Брой на избирателите в основния и допълнителния избирателен списък (т.1 = т.2 + т.3 + т.4)
  "total_voters_in_section" integer,               -- 3) Брой на избирателите в основния избирателен списък (равен на броя на избирателите в част I и част II на основния избирателен списък при предаването му на СИК)
  "added_on_elections_day" integer,                -- 4) Брой на избирателите, вписани от СИК в допълнителната страница на основния избирателен списък в изборния ден (т.3 >= т.8 + т.9 + т.10 + т.11 + т.12)
  "added_voters" integer,                          -- 5) Брой на избирателите в допълнителния избирателен списък (т.4 = т.5 + т.6 + т.7)
  "vote_another_place_declaration_count" integer,  -- 6) Брой на удостоверенията за гласуване на друго място
  "student_declaration_count" integer,             -- 7) Брой на декларациите на ученици и студенти по чл. 39, ал.10
  "voters_with_eye_problems_count" integer,        -- 8) Брой на декларациите на избиратели с физически или зрителни увреждания по чл. 96, ал. 3
  "decl31_a6" integer,                             -- 9) Брой на декларациите по чл. 31, ал.6
  "total_declarations_count" integer,              -- 10) Брой на декларациите по чл. 38
  "declarations_vote_outside_eu" integer,          -- 11) Брой на декларациите по чл. 46, ал.9 (за гласуващите в държави извън ЕС)
  "declarations_vote_eu" integer,                  -- 12) Брой на декларациите по чл. 46, ал.13 (за гласуващите в други държави-членки на ЕС)
  "total_declarations_a_91" integer,               -- 13) Брой на декларациите по чл. 91
  "voters_by_signature" integer,                   -- 14) Брой на гласувалите избиратели според подписите в избирателните списъци (основен и допълнителен)
  "ballots_in_box" integer,                        -- 15) Брой на намерените в избирателната кутия пликове
  "missing_ballots" integer,                       -- 16) Брой на пликовете, които не съдържат бюлетини по установения образец, включително празните пликове
  "ballots_with_special_symbols" integer,          -- 17) Брой на пликовете, които съдържат бюлетини с вписани в тях специални символи като букви и числа, както и с поставени други предмети, позволяващи да се разкрие самоличността на избирателя
  "more_than_one_ballot" integer,                  -- 18) Брой на пликовете, които съдържат повече от една бюлетина по установения образец за различни кандидатски листи
  "invalid_votes" integer,                         -- 19) Брой на недействителните гласове (т.18 = т.15 + т.16 + т.17)
  "more_than_one_identical_ballot" integer,        -- 20) Брой на пликовете, съдържащи една или повече бюлетини по установения образец за една и съща кандидатска листа и еднакво предпочитание (преференция)
  "more_ballots_different_preferences" integer,    -- 21) Брой на пликовете, в които са намерени повече от една бюлетина по установения образец за една и съща кандидатска листа, но с отбелязани различни предпочитания (преференции)
  "ballots_without_preference" integer,            -- 22) Брой пликове, съдържащи една или повече бюлетини по установения образец за една и съща кандидатска листа без отбелязани предпочитания (преференции)
  "invalid_votes_2" integer,                       -- 23) Брой на действителните гласове (т.22 = т.19 + т.20 + т.21)
  "invalid_ballots" integer,                       -- 24) недействителни бюлетини по чл.95, ал.11
  "votes_for_party1" integer,                      -- 25) Гласове за:  1. "Ред, законност и справедливост"
  "votes_for_party2" integer,                      -- 26) Гласове за:  2. ПП "ЛИДЕР"
  "votes_for_party3" integer,                      -- 27) Гласове за:  3. ГЕРБ
  "votes_for_party4" integer,                      -- 28) Гласове за:  4. ДПС "Движение за права и свободи"
  "votes_for_party5" integer,                      -- 29) Гласове за:  5. Партия АТАКА
  "votes_for_party6" integer,                      -- 30) Гласове за:  6. КОАЛИЦИЯ ЗА БЪЛГАРИЯ
  "votes_for_party7" integer,                      -- 31) Гласове за:  7. СЪЮЗ НА ПАТРИОТИЧНИТЕ СИЛИ "ЗАЩИТА"
  "votes_for_party8" integer,                      -- 32) Гласове за:  8. НДСВ
  "votes_for_party9" integer,                      -- 33) Гласове за:  9. БЪЛГАРСКА СОЦИАЛДЕМОКРАЦИЯ
  "votes_for_party10" integer,                     -- 34) Гласове за: 10. "Българска нова демокрация" (БНД)
  "votes_for_party11" integer,                     -- 35) Гласове за: 11. "СИНЯТА КОАЛИЦИЯ"
  "votes_for_party12" integer,                     -- 36) Гласове за: 12. ПП ЗЕЛЕНИТЕ
  "votes_for_party13" integer,                     -- 37) Гласове за: 13. НАПРЕД ВМРО - Българско национално движение, Земеделски народен съюз, Движение Гергьовден, Единна Народна Партия
  "votes_for_party14" integer,                     -- 38) Гласове за: 14. Инициативен комитет Чавдар Иванов Николов
  "" text
);

CREATE TABLE president_2011_1_protocols(
  "section_type" integer,                       --1) Знак, определящ вида на секционния протокол
  "section_id" text,                            --2) Пълен код на секция(код на област(2), община(2), адм. район(2), секция(3));
  "total_voters" integer,                       --3) Секция: Брой на избирателите според избирателния списък при предаването му на СИК
  "added_on_elections_day" integer,             --4) Секция: Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "added_voters" integer,                       --5) Секция: Брой на избирателите в допълнителния избирателен списък
  "number_of_candidates" integer,               --6) Секция: Брой на регистрираните кандидатски листи на партии, коалиции от партии и независими кандидати за президент и вицепрезидент на републиката
  "voters_by_signature" integer,                --7) Секция: Брой на гласувалите избиратели според положените подписи в избирателния списък, включително и подписите в допълнителната страница (под чертата), както и тези от допълнителния избирателен списък
  "invalid_ballots_public" integer,             --8) Секция: Брой на недействителните бюлетини за президент и вицепрезидент на републиката по чл. 180 от ИК (показване начина на гласуване)
  "invalid_ballots_picture" integer,            --9) Секция: Брой на недействителните бюлетини за президент и вицепрезидент на републиката по чл. 181 от ИК (заснемане с технически средства начина на гласуване)
  "invalid_mistake" integer,                    -- 10)Секция:  Брой на сгрешените бюлетини за президент и вицепрезидент на републиката (по чл. 201, ал. 2 от ИК - унищожени с надпис „сгрешена” и подпечатани с печата на СИК)
  "vote_another_place" integer,                 -- 11)Секция:  Брой на удостоверенията за гласуване на друго място  (на лица, служебно заети в произвеждането на изборите по смисъла на §1, т. 13 от ДР на ИК)
  "vote_specific_place" integer,                -- 12)Секция:  Брой на удостоверенията за гласуване в определено населено място (съгласно § 5, т.1 от ДР на ИК)
  "student_declaration" integer,                -- 13)Секция:  Брой на декларациите по чл. 207, ал. 1, т. 3 от ИК (от ученици и студенти)
  "declaration_for_members" integer,            -- 14)Секция:  Брой на декларациите по чл. 194 от ИК (от лица, заети като членове на секционна избирателна комисия или охрана на избирателни секции)
  "declarations_eye_problems" integer,          -- 15)Секция:  Брой на декларациите по чл. 203, ал. 3 от ИК (от избиратели с увреждане на опорно-двигателния апарат или на зрението)
  "declaration_back_from_abroad" integer,       -- 16)Секция:  Брой декларации по чл. 57, изр. 2 от ИК (от живеещите извън Република България български граждани, които се намират в страната в изборния ден и са били заличени от избирателните списъци)
  "declaration_44" integer,                     -- 17)Секция:  Брой декларации по чл. 44, ал. 3 от ИК (попълва се само пред СИК извън страната)
  "assistants_count_1" integer,                 -- 18)Секция:  Брой на придружителите, вписани в графа "Забележки" на избирателния списък (чл. 204, ал. 3, изр. 1 от ИК)
  "assistants_count_3" integer,                 -- 19)Секция:  Брой на придружителите от списъка за допълнително вписване на придружителите (чл. 204, ал. 3, изр. 2 от ИК)
  "ballots_in_box" integer,                     -- 20)Секция:  Брой на намерените в избирателните урни бюлетини за президент и вицепрезидент на републиката
  "invalid_ballots" integer,                    -- 21)Секция:  Брой бюлетини за президент и вицепрезидент на републиката, които не са по установения образец
  "invalid_ballots_special_characters" integer, -- 22)Секция:  Брой бюлетини за президент и вицепрезидент на републиката с вписани в тях специални символи като букви, цифри или други знаци
  "invalid_not_x" integer,                      -- 23)Секция:  Брой бюлетини за президент и вицепрезидент на републиката по установения образец, в които не е отразен със знак "Х" и с химикал, пишещ със син цвят, вотът на избирателя
  "invalid_ballots_multiple_chouce" integer,    -- 24)Секция:  Брой бюлетини за президент и вицепрезидент на републиката по установения образец, с отбелязан вот за две или повече кандидатски листи (със знак "Х" или друг знак и с химикал, пишещ със син или друг цвят) или знакът „Х” засяга повече от едно квадратче за гласуване и не може да се установи еднозначно волята на избирателя 
  "invalid_ballots_no_stamps_count" integer,    -- 25)Секция:  Брой бюлетини за президент и вицепрезидент на републиката по установения образец, които не съдържат два печата на съответната секционна избирателна комисия (тези бюлетини се унищожават с надпис "унищожена" върху всяка бюлетина)
  "total_invalid_ballots" integer,              -- 26)Секция:  Брой на недействителните гласове (бюлетини) за президент и вицепрезидент на Републиката (сумата от числата по т. 19, т. 20, т. 21, т. 22 и т. 23)
  "total_valid_ballots" integer                 -- 27)Секция:  Брой на действителните гласове (бюлетини) за президент и вицепрезидент на републиката (бюлетини по установения образец с отбелязан вот със знак "Х" и с химикал, пишещ със син цвят, за една кандидатска листа, които съдържат два броя печати на съответната секционна избирателна комисия)
);

CREATE TABLE president_2011_2_protocols(
  "section_type" integer,                       --1) Знак, определящ вида на секционния протокол
  "section_id" text,                            --2) Пълен код на секция(код на област(2), община(2), адм. район(2), секция(3));
  "total_voters" integer,                       --3) Секция: Брой на избирателите според избирателния списък при предаването му на СИК
  "added_on_elections_day" integer,             --4) Секция: Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "added_voters" integer,                       --5) Секция: Брой на избирателите в допълнителния избирателен списък
  "number_of_candidates" integer,               --6) Секция: Брой на регистрираните кандидатски листи на партии, коалиции от партии и независими кандидати за президент и вицепрезидент на републиката
  "voters_by_signature" integer,                --7) Секция: Брой на гласувалите избиратели според положените подписи в избирателния списък, включително и подписите в допълнителната страница (под чертата), както и тези от допълнителния избирателен списък
  "invalid_ballots_public" integer,             --8) Секция: Брой на недействителните бюлетини за президент и вицепрезидент на републиката по чл. 180 от ИК (показване начина на гласуване)
  "invalid_ballots_picture" integer,            --9) Секция: Брой на недействителните бюлетини за президент и вицепрезидент на републиката по чл. 181 от ИК (заснемане с технически средства начина на гласуване)
  "invalid_mistake" integer,                    -- 10)Секция:  Брой на сгрешените бюлетини за президент и вицепрезидент на републиката (по чл. 201, ал. 2 от ИК - унищожени с надпис „сгрешена” и подпечатани с печата на СИК)
  "vote_another_place" integer,                 -- 11)Секция:  Брой на удостоверенията за гласуване на друго място  (на лица, служебно заети в произвеждането на изборите по смисъла на §1, т. 13 от ДР на ИК)
  "vote_specific_place" integer,                -- 12)Секция:  Брой на удостоверенията за гласуване в определено населено място (съгласно § 5, т.1 от ДР на ИК)
  "student_declaration" integer,                -- 13)Секция:  Брой на декларациите по чл. 207, ал. 1, т. 3 от ИК (от ученици и студенти)
  "declaration_for_members" integer,            -- 14)Секция:  Брой на декларациите по чл. 194 от ИК (от лица, заети като членове на секционна избирателна комисия или охрана на избирателни секции)
  "declarations_eye_problems" integer,          -- 15)Секция:  Брой на декларациите по чл. 203, ал. 3 от ИК (от избиратели с увреждане на опорно-двигателния апарат или на зрението)
  "declaration_back_from_abroad" integer,       -- 16)Секция:  Брой декларации по чл. 57, изр. 2 от ИК (от живеещите извън Република България български граждани, които се намират в страната в изборния ден и са били заличени от избирателните списъци)
  "declaration_44" integer,                     -- 17)Секция:  Брой декларации по чл. 44, ал. 3 от ИК (попълва се само пред СИК извън страната)
  "assistants_count_1" integer,                 -- 18)Секция:  Брой на придружителите, вписани в графа "Забележки" на избирателния списък (чл. 204, ал. 3, изр. 1 от ИК)
  "assistants_count_3" integer,                 -- 19)Секция:  Брой на придружителите от списъка за допълнително вписване на придружителите (чл. 204, ал. 3, изр. 2 от ИК)
  "ballots_in_box" integer,                     -- 20)Секция:  Брой на намерените в избирателните урни бюлетини за президент и вицепрезидент на републиката
  "invalid_ballots" integer,                    -- 21)Секция:  Брой бюлетини за президент и вицепрезидент на републиката, които не са по установения образец
  "invalid_ballots_special_characters" integer, -- 22)Секция:  Брой бюлетини за президент и вицепрезидент на републиката с вписани в тях специални символи като букви, цифри или други знаци
  "invalid_not_x" integer,                      -- 23)Секция:  Брой бюлетини за президент и вицепрезидент на републиката по установения образец, в които не е отразен със знак "Х" и с химикал, пишещ със син цвят, вотът на избирателя
  "invalid_ballots_multiple_chouce" integer,    -- 24)Секция:  Брой бюлетини за президент и вицепрезидент на републиката по установения образец, с отбелязан вот за две или повече кандидатски листи (със знак "Х" или друг знак и с химикал, пишещ със син или друг цвят) или знакът „Х” засяга повече от едно квадратче за гласуване и не може да се установи еднозначно волята на избирателя 
  "invalid_ballots_no_stamps_count" integer,    -- 25)Секция:  Брой бюлетини за президент и вицепрезидент на републиката по установения образец, които не съдържат два печата на съответната секционна избирателна комисия (тези бюлетини се унищожават с надпис "унищожена" върху всяка бюлетина)
  "total_invalid_ballots" integer,              -- 26)Секция:  Брой на недействителните гласове (бюлетини) за президент и вицепрезидент на Републиката (сумата от числата по т. 19, т. 20, т. 21, т. 22 и т. 23)
  "total_valid_ballots" integer                 -- 27)Секция:  Брой на действителните гласове (бюлетини) за президент и вицепрезидент на републиката (бюлетини по установения образец с отбелязан вот със знак "Х" и с химикал, пишещ със син цвят, за една кандидатска листа, които съдържат два броя печати на съответната секционна избирателна комисия)
);

CREATE TABLE parliament_2013_protocols(
  "protocol_type" text,              -- 1) Знак, определящ вида на секционния протокол
  "section_id" text,                 -- 2) Пълен код на секция(код на област(2), община(2), адм. район(2), секция(3));
  "parties_number" integer,          -- 3) За протоколите на Секционната избирателна комисия: Брой на регистрираните кандидатски листи на партии, коалиции от партии и независими кандидати за народни представители.
                                     --   За протоколите на ДКП(РИК 32): Брой на избирателите, включени в избирателния списък при предаването му на СИК
  "ballots_available" integer,       -- 4) За протоколите на Секционната избирателна комисия: Брой на бюлетините, получени по реда на чл. 187, ал. 1 от ИК, вписани в т. 2 протокола по чл. 187, ал. 3 от ИК – Приложение № 80 от изборните книжа.
                                     --   За протоколите на ДКП(РИК 32): Брой на избирателите, вписани в изборния ден под чертата в избирателния списък 
  "total_voters" integer,            -- 5) За протоколите на Секционната избирателна комисия: Брой на избирателите според избирателния списък при предаването му на СИК.
                                     --   За протоколите на ДКП(РИК 32): Брой на гласувалите избиратели според положените подписи в избирателния списък, включително и подписите под чертата
  "added_voters" integer,            -- 6) За протоколите на Секционната избирателна комисия: Брой на избирателите, вписани в допълнителната страница (под чертата) За протоколите на Секционната избирателна комисия: на избирателния списък в изборния ден.
                                     --   За протоколите на ДКП(РИК 32): Декларации по чл. 44, ал. 5 от ИК (Приложение № 22 от изборните книжа)
  "added_voters_2" integer,          -- 7) За протоколите на Секционната избирателна комисия: Брой на избирателите, вписани в допълнителния избирателен списък в изборния ден.
                                     --   За протоколите на ДКП(РИК 32): Брой на намерените в избирателната урна бюлетини
  "voters_by_signature" integer,     -- 8) За протоколите на Секционната избирателна комисия: Брой на гласувалите избиратели според положените подписи в избирателния списък, включително и подписите в допълнителната страница (под чертата), както и тези от допълнителния избирателен списък.
                                     --   За протоколите на ДКП(РИК 32): бюлетини, които не са по установен образец
  "decl_194" integer,                -- 9) За протоколите на Секционната избирателна комисия: декларации по чл. 194 от ИК от лицата, заети в произвеждането на изборите като членове на СИК и охрана на съответната секция – Приложение № 72 от изборните книжа.
                                     --   За протоколите на ДКП(РИК 32): бюлетини върху които има изписани специални символи, като букви, цифри или други знаци)
  "decl_57" integer,                 -- 10) За протоколите на Секционната избирателна комисия: декларации по чл. 57 от ИК – Приложение № 73 от изборните книжа.
                                     --    За протоколите на ДКП(РИК 32): бюлетини по установен образец, в които не е отразен със знак „Х“ и с химикал, пишещ със син цвят, вотът на избирателя
  "decl_48b" integer,                -- 11) За протоколите на Секционната избирателна комисия: удостоверения по чл. 48б, ал. 1 от ИК – Приложение № 14 от изборните книжа.
                                     --    За протоколите на ДКП(РИК 32): бюлетини по установен образец, в които не отразен вотът на избирателя
  "decl_203" integer,                -- 12) За протоколите на Секционната избирателна комисия: декларации по чл. 203, ал. 3 от ИК – Приложение № 70 от изборните книжа.
                                     --    За протоколите на ДКП(РИК 32): бюлетини по установен образец с отбелязан знак „Х“ или друг знак и с химикал, пишещ със син цвят или друг цвят, вот на избирателя за две или повече кандидатски листи
  "decl_207" integer,                -- 13) За протоколите на Секционната избирателна комисия: декларации по чл. 207, ал. 1, т. 3 от ИК - Приложение № 71 от изборните книжа.
                                     --    За протоколите на ДКП(РИК 32): бюлетини по установен образец с отбелязан знак „Х“, който засяга повече от едно квадратче за гласуване и не може да се установи еднозначно волята на избирателя
  "voters_another_place" integer,    -- 14) За протоколите на Секционната избирателна комисия: удостоверения за гласуване на друго място (чл. 206 във връзка с чл. 49 от ИК) За протоколите на Секционната избирателна комисия: - Приложение № 18 от изборните книжа.
                                     --    За протоколите на ДКП(РИК 32): бюлетини по установен образец, които не съдържат два броя печата на съответната секционна избирателна комисия
  "notes_count" integer,             -- 15) За протоколите на Секционната избирателна комисия: вписани в графа „Забележки“ в избирателния списък.
                                     --    За протоколите на ДКП(РИК 32): Недействителни гласове – сумата от числата по т. 9, букви „а“, „б“, „в“, „г“, „д“, „е“ и „ж“. 
  "added_guides" integer,            -- 16) За протоколите на Секционната избирателна комисия: вписани в Списъка за допълнително вписване на придружителите.
                                     --    За протоколите на ДКП(РИК 32): Брой на действителните гласове (броят на действителните гласове е равен на броя на бюлетините по установения образец, съдържащи два печата на гърба на съответната СИК, върху които вотът на избирателя е отбелязан със знак „Х“ с химикал, пишещ със син цвят, само в едно от квадратчетата за гласуване)
  "zast" integer,                    -- 17) брой застъпници, вписани в Списъка на застъпниците
  "party_people" integer,            -- 18) брой на представители на политическа партия, коалиция от партии и инициативен комитет, вписани в Списъка за вписване на представителите
  "observers" integer,               -- 19) брой на наблюдателите, вписани в Списъка за вписване на наблюдателите
  "unused_ballots" integer,          -- 20) брой на неизползваните бюлетини
  "destroyed_ballots" integer,       -- 21) брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "destroyed_ballots_180" integer,   -- 22) брой на недействителните бюлетини по чл. 180 от ИК 
  "destroyed_ballots_181" integer,   -- 23) брой на недействителните бюлетини по чл. 181 от ИК 
  "invalid_ballots_mistake" integer, -- 24) брой на сгрешените бюлетини по чл. 201, ал. 3 от ИК
  "invalid_ballots_201" integer,     -- 25) Брой на намерените в избирателната урна бюлетини
  "ballots_in_box" integer,          -- 26) бюлетини, които не са по установен образец
  "invalid_ballots" integer,         -- 27) бюлетини върху които има изписани специални символи, като букви, цифри или други знаци)
  "invalid_ballots_signs" integer,   -- 28) бюлетини по установен образец, в които не е отразен със знак „Х“ и с химикал, пишещ със син цвят, вотът на избирателя
  "empty_ballots" integer,           -- 29) бюлетини по установен образец, в които не отразен вотът на избирателя
  "multiple_choice" integer,         -- 30) бюлетини по установен образец с отбелязан знак „Х“ или друг знак и с химикал, пишещ със син цвят или друг цвят, вот на избирателя за две или повече кандидатски листи
  "invalid_out_of_the_box" integer,  -- 31) бюлетини по установен образец с отбелязан знак „Х“, който засяга повече от едно квадратче за гласуване и не може да се установи еднозначно волята на избирателя
  "innvalid_no_two_stamps" integer,  -- 32) бюлетини по установен образец, които не съдържат два броя печата на съответната секционна избирателна комисия
  "invalid_votes" integer,           -- 33) Недействителни гласове – сумата от числата по т. 11, букви „а“, „б“, „в“, „г“, „д“, „е“ и „ж“
  "total_invalid_votes" integer      -- 34) Брой на действителните гласове (броят на действителните гласове е равен на броя на бюлетините по установения образец, съдържащи два печата на гърба на съответната СИК, върху които вотът на избирателя е отбелязан със знак „Х“ с химикал, пишещ със син цвят, само в едно от квадратчетата за гласуване)
);

CREATE TABLE parliament_2014_protocols(
  "section_id" text,                          -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "number_of_candidates" integer,             -- 2)  А.Брой на регистрираните кандидатски листи на партии, коалиции и независими кандидати за народни представители
  "ballots_available" integer,                -- 3)  Б.Брой на бюлетините, получени по реда на чл. 215, ал. 1 от ИК, вписани в т. 4 протокола по чл. 215, ал. 4 от ИК – Приложение № 77-НС от изборните книжа
  "total_voters" integer,                     -- 4)  1.Брой на избирателите според избирателния списък при предаването му на СИК
  "added_voters" integer,                     -- 5)  2.Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "voters_by_signature" integer,              -- 6)  3.Брой на гласувалите избиратели според положените подписи в избирателния списък, включително и подписите в допълнителната страница(под чертата)
  "ud40al1" integer,                          -- 7)4.a)удостоверения по чл. 40, ал. 1 от ИК – Приложение № 18-НС от изборните книжа
  "ud_vote_other_place" integer,              -- 8)4.б)удостоверения за гласуване на друго място – Приложение № 20-НС от изборните книжа
  "declaration_added_voters" integer,         -- 9)4.в)декларации, подадени от лицата, вписани в допълнителната страница (под чертата)
  "unused_ballots" integer,                   -- 10)5.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,                -- 11)5.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer,       -- 12)5.в)брой на недействителните бюлетини по чл. 265, ал. 5 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,            -- 13)5.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,           -- 14)5.д)брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,          -- 15)5.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" integer,                   -- 16)  6.Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots" integer,                  -- 17)  7.Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots" integer,                    -- 18)  8.Брой намерени в избирателната кутия действителните гласове (бюлетини)
  "invalid_empty_or_multiple_choice" integer, -- 19)Празни бюлетини или бюлетини, в които е гласувано за повече от една листа
  "serial_numbers" integer                    -- 20) Серийни номера на страници на протокол, разделени с |
);

CREATE TABLE european_2014_protocols(
  "section_id" text,                          -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "number_of_candidates" integer,             -- 2)  А.Брой на регистрираните кандидатски листи на партии, коалиции и независими кандидати за членове на Европейския парламент от Република България
  "ballots_available" integer,                -- 3)  Б.Брой на бюлетините, получени по реда на чл. 215, ал. 1 от ИК, вписани в т. 4 протокола по чл. 215, ал. 4 от ИК – Приложение № 78 от изборните книжа
  "total_voters" integer,                     -- 4)  1.Брой на избирателите според избирателния/те списък/ци при предаването му/им на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                           -- 5)1.а)Избирателен списък – част І
  "list_2" integer,                           -- 6)1.б)Избирателен списък – част ІІ
  "added_voters" integer,                     -- 7)  2.Брой на избирателите, вписани в допълнителната страница/и (под чертата) на избирателния/те списък/ци в изборния ден
  "voters_by_signature" integer,              -- 8)  3.Брой на гласувалите избиратели според положените подписи в избирателния/те списък/ци, включително и подписите в допълнителната/ите страница/и (под чертата)
  "u40_1_p20" integer,                        -- 9)4.а)удостоверения по чл. 40, ал. 1 от ИК – Приложение № 20 от изборните книжа
  "ud_vote_other_place" integer,              -- 10)4.б)удостоверения за гласуване на друго място (чл. 240 във връзка с чл. 34 от ИК) - Приложение № 22 от изборните книжа
  "unused_ballots" integer,                   -- 11)5.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,                -- 12)5.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer,       -- 13)5.в)бюлетини по чл. 265, ал. 5 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,            -- 14)5.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,           -- 15)5.д)брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,          -- 16)5.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" integer,                   -- 17)  6.Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots" integer,                  -- 18)  7.Брой намерени в избирателната кутия недействителни гласове (бюлетини) – броят на недействителните бюлетини е равен на броя на бюлетините, които не са по установен образец, в които има вписани специални символи, като букви, цифри или други знаци, бюлетината не съдържа два печата на съответната СИК; в бюлетината вотът на избирателя не е отбелязан със знак „Х“ или „V“ и с химикал, пишещ със син цвят; отразеният в бюлетината вот на избирателя не може да бъде установен еднозначно, тъй като знакът „Х“ или „V“ е поставен в квадратчетата за две или повече кандидатски листи или засяга повече от едно квадратче за гласуване; в бюлетината се отбелязани предпочитания (преференции) със знак, различен от „Х“ или „V“ или с химикал, който не пише със син цвят; вотът на избирателя не е отбелязан с химикал, пишещ със син цвят
  "valid_ballots" integer,                    -- 19)  8.Брой на действителните гласове (броят на действителните гласове е равен на броя на бюлетините по установения образец, съдържащи два печата на гърба на съответната СИК, върху които вотът на избирателя е отбелязан със знак „Х“ или „V“ с химикал, пишещ със син цвят, само в едно от квадратчетата за гласуване)
  "invalid_empty_or_multiple_choice" integer, -- 20)    Недействителни гласове за всички листи или за повече от една листа (празна бюлетина, бюлетина, в която са зачертани всички листи или е гласувано за повече от една листа)
  "serial_numbers" integer                    -- 21) Серийни номера на страници на протокол, разделени с |
);

CREATE TABLE mayor_2015_1_cik_protocols(
  "form_number" integer,                  -- 1) № формуляр
  "section_id" text,                      -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                  -- 3) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "protocol_serial_numbers" text,         -- 4) Серийни номера на страниците на протокола, разделени с |
  "number_of_candidates" integer,         -- 5)  А.Брой на регистрираните кандидатски листи на партии, коалиции, местни коалиции и независими кандидати
  "ballots_available" integer,            -- 6)  Б.Брой на бюлетините, получени по реда на чл. 215, ал. 1 от ИК, вписани в т. 4 протокола по чл. 215, ал. 4 от ИК – Приложение № 77-МИ/Приложение № 79-МИ от изборните книжа
  "total_voters" integer,                 -- 7)  1.Брой на избирателите според избирателния/те списък/ци при предаването му/им на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                       -- 8)1.а)Избирателен списък – част І
  "list_2" integer,                       -- 9)1.б)Избирателен списък – част ІІ
  "added_voters" integer,                 -- 10)  2.Брой на избирателите, вписани в допълнителната страница/и (под чертата) на избирателния/те списък/ци в изборния ден
  "voters_by_signature" integer,          -- 11)  3.Брой на гласувалите избиратели според положените подписи в избирателния/те списък/ци, включително и подписите в допълнителната/ите страница/и (под чертата)
  "ud40_a1" integer,                      -- 12)4.a)удостоверения по чл. 40, ал. 1 от ИК – Приложение № 14-МИ от изборните книжа
  "number_of_declarations_added" integer, -- 13)4.б)декларации, подадени от лицата, вписани в допълнителната страница (под чертата) – Приложение № 15-МИ и Приложение № 74-МИ от изборните книжа
  "unused_ballots" integer,               -- 14)5.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,            -- 15)5.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer,   -- 16)5.в)брой на недействителните бюлетини по чл. 427, ал. 6 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,        -- 17)5.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,       -- 18)5.д)брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,      -- 19)5.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" integer,               -- 20)  6.Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,       -- 21)  7.Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,         -- 22)  8.Брой намерени в избирателната кутия действителни гласове (бюлетини)
  "invalid_empty_or_onclear" integer     -- 23)  -.Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);
CREATE TABLE mayor_municipality_2015_1_cik_protocols(
  "form_number" integer,                  -- 1) № формуляр
  "section_id" text,                      -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                  -- 3) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "protocol_serial_numbers" text,         -- 4) Серийни номера на страниците на протокола, разделени с |
  "number_of_candidates" integer,         -- 5)  А.Брой на регистрираните кандидатски листи на партии, коалиции, местни коалиции и независими кандидати
  "ballots_available" integer,            -- 6)  Б.Брой на бюлетините, получени по реда на чл. 215, ал. 1 от ИК, вписани в т. 4 протокола по чл. 215, ал. 4 от ИК – Приложение № 77-МИ/Приложение № 79-МИ от изборните книжа
  "total_voters" integer,                 -- 7)  1.Брой на избирателите според избирателния/те списък/ци при предаването му/им на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                       -- 8)1.а)Избирателен списък – част І
  "list_2" integer,                       -- 9)1.б)Избирателен списък – част ІІ
  "added_voters" integer,                 -- 10)  2.Брой на избирателите, вписани в допълнителната страница/и (под чертата) на избирателния/те списък/ци в изборния ден
  "voters_by_signature" integer,          -- 11)  3.Брой на гласувалите избиратели според положените подписи в избирателния/те списък/ци, включително и подписите в допълнителната/ите страница/и (под чертата)
  "ud40_a1" integer,                      -- 12)4.a)удостоверения по чл. 40, ал. 1 от ИК – Приложение № 14-МИ от изборните книжа
  "number_of_declarations_added" integer, -- 13)4.б)декларации, подадени от лицата, вписани в допълнителната страница (под чертата) – Приложение № 15-МИ и Приложение № 74-МИ от изборните книжа
  "unused_ballots" integer,               -- 14)5.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,            -- 15)5.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer,   -- 16)5.в)брой на недействителните бюлетини по чл. 427, ал. 6 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,        -- 17)5.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,       -- 18)5.д)брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,      -- 19)5.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" integer,               -- 20)  6.Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,       -- 21)  7.Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,         -- 22)  8.Брой намерени в избирателната кутия действителни гласове (бюлетини)
  "invalid_empty_or_onclear" integer     -- 23)  -.Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);
CREATE TABLE mayor_region_2015_1_cik_protocols(
  "form_number" integer,                  -- 1) № формуляр
  "section_id" text,                      -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                  -- 3) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "protocol_serial_numbers" text,         -- 4) Серийни номера на страниците на протокола, разделени с |
  "number_of_candidates" integer,         -- 5)  А.Брой на регистрираните кандидатски листи на партии, коалиции, местни коалиции и независими кандидати
  "ballots_available" integer,            -- 6)  Б.Брой на бюлетините, получени по реда на чл. 215, ал. 1 от ИК, вписани в т. 4 протокола по чл. 215, ал. 4 от ИК – Приложение № 77-МИ/Приложение № 79-МИ от изборните книжа
  "total_voters" integer,                 -- 7)  1.Брой на избирателите според избирателния/те списък/ци при предаването му/им на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                       -- 8)1.а)Избирателен списък – част І
  "list_2" integer,                       -- 9)1.б)Избирателен списък – част ІІ
  "added_voters" integer,                 -- 10)  2.Брой на избирателите, вписани в допълнителната страница/и (под чертата) на избирателния/те списък/ци в изборния ден
  "voters_by_signature" integer,          -- 11)  3.Брой на гласувалите избиратели според положените подписи в избирателния/те списък/ци, включително и подписите в допълнителната/ите страница/и (под чертата)
  "ud40_a1" integer,                      -- 12)4.a)удостоверения по чл. 40, ал. 1 от ИК – Приложение № 14-МИ от изборните книжа
  "number_of_declarations_added" integer, -- 13)4.б)декларации, подадени от лицата, вписани в допълнителната страница (под чертата) – Приложение № 15-МИ и Приложение № 74-МИ от изборните книжа
  "unused_ballots" integer,               -- 14)5.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,            -- 15)5.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer,   -- 16)5.в)брой на недействителните бюлетини по чл. 427, ал. 6 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,        -- 17)5.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,       -- 18)5.д)брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,      -- 19)5.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" integer,               -- 20)  6.Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,       -- 21)  7.Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,         -- 22)  8.Брой намерени в избирателната кутия действителни гласове (бюлетини)
  "invalid_empty_or_onclear" integer     -- 23)  -.Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);
CREATE TABLE council_2015_1_cik_protocols(
  "form_number" integer,                  -- 1) № формуляр
  "section_id" text,                      -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                  -- 3) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "protocol_serial_numbers" text,         -- 4) Серийни номера на страниците на протокола, разделени с |
  "number_of_candidates" integer,         -- 5)  А.Брой на регистрираните кандидатски листи на партии, коалиции, местни коалиции и независими кандидати
  "ballots_available" integer,            -- 6)  Б.Брой на бюлетините, получени по реда на чл. 215, ал. 1 от ИК, вписани в т. 4 протокола по чл. 215, ал. 4 от ИК – Приложение № 77-МИ/Приложение № 79-МИ от изборните книжа
  "total_voters" integer,                 -- 7)  1.Брой на избирателите според избирателния/те списък/ци при предаването му/им на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                       -- 8)1.а)Избирателен списък – част І
  "list_2" integer,                       -- 9)1.б)Избирателен списък – част ІІ
  "added_voters" integer,                 -- 10)  2.Брой на избирателите, вписани в допълнителната страница/и (под чертата) на избирателния/те списък/ци в изборния ден
  "voters_by_signature" integer,          -- 11)  3.Брой на гласувалите избиратели според положените подписи в избирателния/те списък/ци, включително и подписите в допълнителната/ите страница/и (под чертата)
  "ud40_a1" integer,                      -- 12)4.a)удостоверения по чл. 40, ал. 1 от ИК – Приложение № 14-МИ от изборните книжа
  "number_of_declarations_added" integer, -- 13)4.б)декларации, подадени от лицата, вписани в допълнителната страница (под чертата) – Приложение № 15-МИ и Приложение № 74-МИ от изборните книжа
  "unused_ballots" integer,               -- 14)5.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,            -- 15)5.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer,   -- 16)5.в)брой на недействителните бюлетини по чл. 427, ал. 6 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,        -- 17)5.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,       -- 18)5.д)брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,      -- 19)5.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" integer,               -- 20)  6.Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,       -- 21)  7.Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,         -- 22)  8.Брой намерени в избирателната кутия действителни гласове (бюлетини)
  "invalid_empty_or_onclear" integer     -- 23)  -.Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);
CREATE TABLE mayor_2015_2_cik_protocols(
  "form_number" integer,                  -- 1) № формуляр
  "section_id" text,                      -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                  -- 3) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "protocol_serial_numbers" text,         -- 4) Серийни номера на страниците на протокола, разделени с |
  "number_of_candidates" integer,         -- 5)  А.Брой на регистрираните кандидатски листи на партии, коалиции, местни коалиции и независими кандидати
  "ballots_available" integer,            -- 6)  Б.Брой на бюлетините, получени по реда на чл. 215, ал. 1 от ИК, вписани в т. 4 протокола по чл. 215, ал. 4 от ИК – Приложение № 77-МИ/Приложение № 79-МИ от изборните книжа
  "total_voters" integer,                 -- 7)  1.Брой на избирателите според избирателния/те списък/ци при предаването му/им на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                       -- 8)1.а)Избирателен списък – част І
  "list_2" integer,                       -- 9)1.б)Избирателен списък – част ІІ
  "added_voters" integer,                 -- 10)  2.Брой на избирателите, вписани в допълнителната страница/и (под чертата) на избирателния/те списък/ци в изборния ден
  "voters_by_signature" integer,          -- 11)  3.Брой на гласувалите избиратели според положените подписи в избирателния/те списък/ци, включително и подписите в допълнителната/ите страница/и (под чертата)
  "ud40_a1" integer,                      -- 12)4.a)удостоверения по чл. 40, ал. 1 от ИК – Приложение № 14-МИ от изборните книжа
  "number_of_declarations_added" integer, -- 13)4.б)декларации, подадени от лицата, вписани в допълнителната страница (под чертата) – Приложение № 15-МИ и Приложение № 74-МИ от изборните книжа
  "unused_ballots" integer,               -- 14)5.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,            -- 15)5.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer,   -- 16)5.в)брой на недействителните бюлетини по чл. 427, ал. 6 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,        -- 17)5.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,       -- 18)5.д)брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,      -- 19)5.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" integer,               -- 20)  6.Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,       -- 21)  7.Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,         -- 22)  8.Брой намерени в избирателната кутия действителни гласове (бюлетини)
  "invalid_empty_or_onclear" integer     -- 23)  -.Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);
CREATE TABLE mayor_municipality_2015_2_cik_protocols(
  "form_number" integer,                  -- 1) № формуляр
  "section_id" text,                      -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                  -- 3) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "protocol_serial_numbers" text,         -- 4) Серийни номера на страниците на протокола, разделени с |
  "number_of_candidates" integer,         -- 5)  А.Брой на регистрираните кандидатски листи на партии, коалиции, местни коалиции и независими кандидати
  "ballots_available" integer,            -- 6)  Б.Брой на бюлетините, получени по реда на чл. 215, ал. 1 от ИК, вписани в т. 4 протокола по чл. 215, ал. 4 от ИК – Приложение № 77-МИ/Приложение № 79-МИ от изборните книжа
  "total_voters" integer,                 -- 7)  1.Брой на избирателите според избирателния/те списък/ци при предаването му/им на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                       -- 8)1.а)Избирателен списък – част І
  "list_2" integer,                       -- 9)1.б)Избирателен списък – част ІІ
  "added_voters" integer,                 -- 10)  2.Брой на избирателите, вписани в допълнителната страница/и (под чертата) на избирателния/те списък/ци в изборния ден
  "voters_by_signature" integer,          -- 11)  3.Брой на гласувалите избиратели според положените подписи в избирателния/те списък/ци, включително и подписите в допълнителната/ите страница/и (под чертата)
  "ud40_a1" integer,                      -- 12)4.a)удостоверения по чл. 40, ал. 1 от ИК – Приложение № 14-МИ от изборните книжа
  "number_of_declarations_added" integer, -- 13)4.б)декларации, подадени от лицата, вписани в допълнителната страница (под чертата) – Приложение № 15-МИ и Приложение № 74-МИ от изборните книжа
  "unused_ballots" integer,               -- 14)5.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,            -- 15)5.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer,   -- 16)5.в)брой на недействителните бюлетини по чл. 427, ал. 6 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,        -- 17)5.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,       -- 18)5.д)брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,      -- 19)5.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" integer,               -- 20)  6.Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,       -- 21)  7.Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,         -- 22)  8.Брой намерени в избирателната кутия действителни гласове (бюлетини)
  "invalid_empty_or_onclear" integer     -- 23)  -.Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);
CREATE TABLE mayor_region_2015_2_cik_protocols(
  "form_number" integer,                  -- 1) № формуляр
  "section_id" text,                      -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                  -- 3) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "protocol_serial_numbers" text,         -- 4) Серийни номера на страниците на протокола, разделени с |
  "number_of_candidates" integer,         -- 5)  А.Брой на регистрираните кандидатски листи на партии, коалиции, местни коалиции и независими кандидати
  "ballots_available" integer,            -- 6)  Б.Брой на бюлетините, получени по реда на чл. 215, ал. 1 от ИК, вписани в т. 4 протокола по чл. 215, ал. 4 от ИК – Приложение № 77-МИ/Приложение № 79-МИ от изборните книжа
  "total_voters" integer,                 -- 7)  1.Брой на избирателите според избирателния/те списък/ци при предаването му/им на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                       -- 8)1.а)Избирателен списък – част І
  "list_2" integer,                       -- 9)1.б)Избирателен списък – част ІІ
  "added_voters" integer,                 -- 10)  2.Брой на избирателите, вписани в допълнителната страница/и (под чертата) на избирателния/те списък/ци в изборния ден
  "voters_by_signature" integer,          -- 11)  3.Брой на гласувалите избиратели според положените подписи в избирателния/те списък/ци, включително и подписите в допълнителната/ите страница/и (под чертата)
  "ud40_a1" integer,                      -- 12)4.a)удостоверения по чл. 40, ал. 1 от ИК – Приложение № 14-МИ от изборните книжа
  "number_of_declarations_added" integer, -- 13)4.б)декларации, подадени от лицата, вписани в допълнителната страница (под чертата) – Приложение № 15-МИ и Приложение № 74-МИ от изборните книжа
  "unused_ballots" integer,               -- 14)5.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,            -- 15)5.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer,   -- 16)5.в)брой на недействителните бюлетини по чл. 427, ал. 6 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,        -- 17)5.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,       -- 18)5.д)брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,      -- 19)5.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" integer,               -- 20)  6.Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,       -- 21)  7.Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,         -- 22)  8.Брой намерени в избирателната кутия действителни гласове (бюлетини)
  "invalid_empty_or_onclear" integer     -- 23)  -.Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);

CREATE TABLE president_2016_1_protocols(
  "form_number" text,                   -- 1) № формуляр
  "section_id" text,                    -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" text,                   -- 3) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "serial_numbers" text,                -- 4) Серийни номера на страниците на протокола, разделени с |
  "ballots_available" text,             -- 5) А.Брой на бюлетините, получени по реда на чл. 215, ал. 1, т. 2 от ИК
  "total_voters" integer,               -- 6) Формуляр № 1:  1.Брой на избирателите според избирателния списък при предаването му на СИК
                                        --    Формуляр № 7:   1.Брой на избирателите според списъка за гласуване извън страната при предаването му на СИК
                                        --    Формуляр № 8:   1.Брой на избирателите според избирателния списък при предаването му на СИК
  "added_voters" text,                  -- 7) Формуляр № 1:  2.Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
                                        --    Формуляр № 7:   2.Брой на избирателите, вписани в изборния ден
                                        --    Формуляр № 8:   2.Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "voters_by_signature" integer,        -- 8) Формуляр № 8:   3.Общ брой на гласувалите избиратели според положените подписи в избирателния списък, включително подписите в допълнителната страница (под чертата)
                                        --    Формуляр № 1:  3.Брой на гласувалите избиратели според положените подписи в избирателния списък, включително и подписите в допълнителната страница (под чертата)
                                        --    Формуляр № 7:   3.Брой на гласувалите избиратели според положените подписи в списъка за гласуване извън страната
  "voters_with_paper" text,             -- 9) Формуляр № 1:  -.
                                        --    Формуляр № 7:   -.
                                        --    Формуляр № 8: 3.а)Брой избиратели, гласували с хартиена бюлетина
  "voters_with_machine" text,           -- 10) Формуляр № 1:  -.
                                        --     Формуляр № 7:   -.
                                        --     Формуляр № 8: 3.б)Брой на потвърдените гласове от машинното гласуване
  "unused_ballots" text,                -- 11) 4.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,          -- 12) 4.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer, -- 13) 4.в)брой на недействителните бюлетини по чл. 265, ал. 5 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" text,         -- 14) 4.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" text,        -- 15) 4.д)брой на недействителните бюлетини по чл. 228 от ИК(показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,    -- 16) 4.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" text,                -- 17) Формуляр № 1:  5.Брой на намерените в избирателната кутия бюлетини
                                        --     Формуляр № 7:   5.Брой на намерените в избирателната кутия бюлетини
                                        --     Формуляр № 8:   5.Общ брой на намерените в избирателната кутия бюлетини и потвърдените гласове от машинното гласуване
  "ballots_in_box_machine" text,        --  18) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 5.а)Брой на намерените в избирателната кутия бюлетини
  "machine_votes_count" text,           --  19) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 5.б)Брой на потвърдените гласове от машинното гласуване
  "total_invalid_ballots" integer,      --  20) Формуляр № 1:  6.Брой намерени в избирателната кутия недействителни гласове (бюлетини)
                                        --      Формуляр № 7:   6.Брой намерени в избирателната кутия недействителни гласове (бюлетини)
                                        --      Формуляр № 8:   6.Общ брой на недействителните гласове (брой на намерените в избирателната кутия недействителни бюлетини и празни гласове от машинното гласуване)
  "total_invalid_ballots_?" text,       --  21) Формуляр № 1:  -.
                                        --    Формуляр № 7:   -.
                                        --    Формуляр № 8: 6.а)брой на намерените в избирателната кутия недействителни гласове (бюлетини) (Б)
  "machine_votes_no_one" text,          --  22) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 6.б)брой на празните гласове от машинното гласуване (МГ)
  "valid_ballots" text,                 --  23) Формуляр № 1:  7.Общ брой намерени в избирателната кутия действителни гласове (бюлетини)
                                        --      Формуляр № 7:   7.Общ брой намерени в избирателната кутия действителните гласове (бюлетини)
                                        --      Формуляр № 8:   7.Общ брой на действителни гласове (брой намерени в избирателната кутия действителни бюлетини и действителни гласове от машинното гласуване) (сумата от числата по т. 7.1. и т. 7.2.) (Б + МГ)
  "valid_ballots_machine" integer,      --  24) Формуляр № 1: 7.1брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети 
                                        --      Формуляр № 7:  7.1брой на действителните гласове, подадени за кандидатски листи на партии, коалиции и инициативни комитети
                                        --      Формуляр № 8:  7.1брой на действителните гласове, подадени за кандидатите на партии, коалиции и инициативни комитети (Б+МГ) 
  "valid_ballots_machine_b" text,       --  25) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 7.1.брой на намерените в избирателната кутия действителни гласове (бюлетини), подадени за кандидатските листи на партии, коалиции и инициативни комитети (Б)
  "valid_ballots_machine_mg" integer,   --  26) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 7.1.брой действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети от машинното гласуване (МГ)
  "valid_no_one" text,                  --  27) Формуляр № 1: 7.2брой действителни гласове (отбелязвания) само в квадратчето „Не подкрепям никого“
                                        --      Формуляр № 7:  7.2брой действителни гласове (отбелязвания) само в квадратчето „Не подкрепям никого“
                                        --      Формуляр № 8:  7.2брой действителни гласове (отбелязвания) само в квадратчето „Не подкрепям никого“ (Б+МГ)
  "total_no_one_ballots" text,          --  28) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 7.2.брой на намерените в избирателната кутия действителни гласове (бюлетини) с отбелязване „Не подкрепям никого“ (Б)
  "total_no_one_machine" text,          --  29) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 7.2.брой действителните гласове с отбелязване „Не подкрепям никого“ от машинното гласуване (МГ)
  "mg" integer,                         --  30) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8:   -.от маш.глас. (МГ)
  "b" text,                             -- 31) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8:   -.от бюлетини (Б)
  "total_empty" integer                 --  32) Формуляр № 1:  -.Празни бюлетини (хартиени бюлетини); бюлетини, в които е гласувано в повече от едно квадратче; бюлетини, в които не може да се установи еднозначно вотът на избирателя и други видове недействителни гласове
                                        --      Формуляр № 7:   -.Празни бюлетини (хартиени бюлетини); бюлетини, в които е гласувано в повече от едно квадратче; бюлетини, в които не може да се установи еднозначно вотът на избирателя и други видове недействителни гласове
                                        --      Формуляр № 8:   -.Общо МГ + Б
);
CREATE TABLE president_2016_2_protocols(
  "form_number" text,                   -- 1) № формуляр
  "section_id" text,                    -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" text,                   -- 3) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "serial_numbers" text,                -- 4) Серийни номера на страниците на протокола, разделени с |
  "ballots_available" text,             -- 5) А.Брой на бюлетините, получени по реда на чл. 215, ал. 1, т. 2 от ИК
  "total_voters" integer,               -- 6) Формуляр № 1:  1.Брой на избирателите според избирателния списък при предаването му на СИК
                                        --    Формуляр № 7:   1.Брой на избирателите според списъка за гласуване извън страната при предаването му на СИК
                                        --    Формуляр № 8:   1.Брой на избирателите според избирателния списък при предаването му на СИК
  "added_voters" text,                  -- 7) Формуляр № 1:  2.Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
                                        --    Формуляр № 7:   2.Брой на избирателите, вписани в изборния ден
                                        --    Формуляр № 8:   2.Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "voters_by_signature" integer,        -- 8) Формуляр № 8:   3.Общ брой на гласувалите избиратели според положените подписи в избирателния списък, включително подписите в допълнителната страница (под чертата)
                                        --    Формуляр № 1:  3.Брой на гласувалите избиратели според положените подписи в избирателния списък, включително и подписите в допълнителната страница (под чертата)
                                        --    Формуляр № 7:   3.Брой на гласувалите избиратели според положените подписи в списъка за гласуване извън страната
  "voters_with_paper" text,             -- 9) Формуляр № 1:  -.
                                        --    Формуляр № 7:   -.
                                        --    Формуляр № 8: 3.а)Брой избиратели, гласували с хартиена бюлетина
  "voters_with_machine" text,           -- 10) Формуляр № 1:  -.
                                        --     Формуляр № 7:   -.
                                        --     Формуляр № 8: 3.б)Брой на потвърдените гласове от машинното гласуване
  "unused_ballots" text,                -- 11) 4.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,          -- 12) 4.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer, -- 13) 4.в)брой на недействителните бюлетини по чл. 265, ал. 5 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" text,         -- 14) 4.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" text,        -- 15) 4.д)брой на недействителните бюлетини по чл. 228 от ИК(показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,    -- 16) 4.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" text,                -- 17) Формуляр № 1:  5.Брой на намерените в избирателната кутия бюлетини
                                        --     Формуляр № 7:   5.Брой на намерените в избирателната кутия бюлетини
                                        --     Формуляр № 8:   5.Общ брой на намерените в избирателната кутия бюлетини и потвърдените гласове от машинното гласуване
  "ballots_in_box_machine" text,        --  18) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 5.а)Брой на намерените в избирателната кутия бюлетини
  "machine_votes_count" text,           --  19) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 5.б)Брой на потвърдените гласове от машинното гласуване
  "total_invalid_ballots" integer,      --  20) Формуляр № 1:  6.Брой намерени в избирателната кутия недействителни гласове (бюлетини)
                                        --      Формуляр № 7:   6.Брой намерени в избирателната кутия недействителни гласове (бюлетини)
                                        --      Формуляр № 8:   6.Общ брой на недействителните гласове (брой на намерените в избирателната кутия недействителни бюлетини и празни гласове от машинното гласуване)
  "total_invalid_ballots_?" text,       --  21) Формуляр № 1:  -.
                                        --    Формуляр № 7:   -.
                                        --    Формуляр № 8: 6.а)брой на намерените в избирателната кутия недействителни гласове (бюлетини) (Б)
  "machine_votes_no_one" text,          --  22) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 6.б)брой на празните гласове от машинното гласуване (МГ)
  "valid_ballots" text,                 --  23) Формуляр № 1:  7.Общ брой намерени в избирателната кутия действителни гласове (бюлетини)
                                        --      Формуляр № 7:   7.Общ брой намерени в избирателната кутия действителните гласове (бюлетини)
                                        --      Формуляр № 8:   7.Общ брой на действителни гласове (брой намерени в избирателната кутия действителни бюлетини и действителни гласове от машинното гласуване) (сумата от числата по т. 7.1. и т. 7.2.) (Б + МГ)
  "valid_ballots_machine" integer,      --  24) Формуляр № 1: 7.1брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети 
                                        --      Формуляр № 7:  7.1брой на действителните гласове, подадени за кандидатски листи на партии, коалиции и инициативни комитети
                                        --      Формуляр № 8:  7.1брой на действителните гласове, подадени за кандидатите на партии, коалиции и инициативни комитети (Б+МГ) 
  "valid_ballots_machine_b" text,       --  25) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 7.1.брой на намерените в избирателната кутия действителни гласове (бюлетини), подадени за кандидатските листи на партии, коалиции и инициативни комитети (Б)
  "valid_ballots_machine_mg" integer,   --  26) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 7.1.брой действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети от машинното гласуване (МГ)
  "valid_no_one" text,                  --  27) Формуляр № 1: 7.2брой действителни гласове (отбелязвания) само в квадратчето „Не подкрепям никого“
                                        --      Формуляр № 7:  7.2брой действителни гласове (отбелязвания) само в квадратчето „Не подкрепям никого“
                                        --      Формуляр № 8:  7.2брой действителни гласове (отбелязвания) само в квадратчето „Не подкрепям никого“ (Б+МГ)
  "total_no_one_ballots" text,          --  28) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 7.2.брой на намерените в избирателната кутия действителни гласове (бюлетини) с отбелязване „Не подкрепям никого“ (Б)
  "total_no_one_machine" text,          --  29) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8: 7.2.брой действителните гласове с отбелязване „Не подкрепям никого“ от машинното гласуване (МГ)
  "mg" integer,                         --  30) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8:   -.от маш.глас. (МГ)
  "b" text,                             -- 31) Формуляр № 1:  -.
                                        --      Формуляр № 7:   -.
                                        --      Формуляр № 8:   -.от бюлетини (Б)
  "total_empty" integer                 --  32) Формуляр № 1:  -.Празни бюлетини (хартиени бюлетини); бюлетини, в които е гласувано в повече от едно квадратче; бюлетини, в които не може да се установи еднозначно вотът на избирателя и други видове недействителни гласове
                                        --      Формуляр № 7:   -.Празни бюлетини (хартиени бюлетини); бюлетини, в които е гласувано в повече от едно квадратче; бюлетини, в които не може да се установи еднозначно вотът на избирателя и други видове недействителни гласове
                                        --      Формуляр № 8:   -.Общо МГ + Б
);

CREATE TABLE parliament_2017_protocols(
  "form_number" integer,                -- 1) № формуляр
  "section_id" text,                    -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                -- 3) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "protocol_serial_numbers" text,       -- 4) Серийни номера на страниците на протокола, разделени с |
  "ballots_available" integer,          -- 5)  Формуляр № 1: А.Брой на бюлетините, получени по реда на чл. 215, ал. 1, т. 2 от ИК
                                        --     Формуляр № 7: А.Брой на бюлетините, получени по реда на чл. 215, ал. 1 от ИК
  "total_voters" integer,               -- 6)  Формуляр № 1: 1.Брой на избирателите според избирателния списък при предаването му на СИК
                                        --     Формуляр № 7: 1.Брой избиратели според списъка за гласуване извън страната преди предаването му на СИК
  "added_voters" integer,               -- 7)  Формуляр № 1: 2.Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
                                        --     Формуляр № 7: 2.Брой на избирателите, вписани в избирателния списък в изборния ден (под чертата)
  "voters_by_signature" integer,        -- 8)  Формуляр № 1: 3.Брой на гласувалите избиратели според положените подписи в избирателния списък, включително и подписите в допълнителната страница(под чертата)
                                        --     Формуляр № 7: 3.Брой на гласувалите избиратели според положените подписи в избирателния списък
  "unused_ballots" integer,             -- 9) Формуляр № 1: 4.а)брой на неизползваните бюлетини
                                        --    Формуляр № 7: 4.а)брой на неизползваните бюлетини
  "destroyed_ballots" integer,          -- 10)4.б)брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer, -- 11) Формуляр № 1: 4.в)брой на недействителните бюлетини по чл. 265, ал. 5 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
                                        --     Формуляр № 7: 4.в)бюлетини по чл. 265, ал. 5 от ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,      -- 12)4.г)брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,     -- 13)4.д)брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,    -- 14)4.е)брой на сгрешените бюлетини по чл. 267, ал. 2 от ИК
  "ballots_in_box" integer,             -- 15)  5.Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,     -- 16)  6.Брой намерени в избирателната кутия недействителни гласове (бюлетини)
  "valid_ballots_in_box" integer,       -- 17) Формуляр № 1: 7.Общ брой намерени в избирателната кутия действителни гласове (бюлетини)
                                        --     Формуляр № 7: 7.Общ брой намерени в избирателната кутия действителните гласове (бюлетини)
  "valid_ballots_for_party" integer,    -- 18) Формуляр № 1: 7.1брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети 
                                        --     Формуляр № 7: 7.1брой на действителните гласове, подадени за кандидатски листи на партии и коалиции
  "valid_no_one_all" integer,           -- 19) 7.2брой действителни гласове (отбелязвания) само в квадратчето „Не подкрепям никого“
  "invalid_empty_or_onclear" integer   -- 20)  9.Празни бюлетини; бюлетини, в които е гласувано в повече от едно квадратче; бюлетини, в които не може да се установи еднозначно вотът на избирателя и други видове недействителни гласове
);

CREATE TABLE european_2019_protocols(
  "form_number" integer,                -- 1) № формуляр
  "section_id" text,                    -- 2) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                -- 3) Формуляр № 1 - по приложение Приложение № 85-х      Идентификатор на административна единица, за която се отнася протокола  (община, кметство, район)
                                        --    Формуляр № 7 - по приложение Приложение № 86-ч:      Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
                                        --    Формуляр № 14 - по формат на данните от машините за гласуване:      Идентификатор на административна единица, за която се отнася протокола( Формуляр № 14 - по формат на данните от машините за гласуване:община, кметство, район)
                                        --    Формуляр № 8 - по Приложение № 85-хм:      Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "protocol_serial_numbers" text,       -- 4) Серийни номера на страниците на протокола, разделени с |
  "ballots_available" integer,          ---  5) Формуляр № 1 - по приложение Приложение № 85-х А.   Брой на бюлетините, получени по реда на чл. 215, ал. 1, т. 2 от ИК
                                        --     Формуляр № 7 - по приложение Приложение № 86-ч: А.   Брой на бюлетините, получени по реда на чл. 215, ал. 1, т. 2 ИК
                                        --     Формуляр № 8 - по Приложение № 85-хм: А.   Брой на бюлетините, получени по реда на чл. 215, ал. 1 ИК
  "total_voters" integer,               --  6) Формуляр № 1 - по приложение Приложение № 85-х 1.   Брой на избирателите според част І и част ІІ на избирателния списък при предаването му на СИК
                                        --     Формуляр № 7 - по приложение Приложение № 86-ч: 1.   Брой на избирателите, вписани в списъка за гласуване извън страната при предаването му на СИК
                                        --     Формуляр № 8 - по Приложение № 85-хм: 1.   Брой на избирателите според част І и част ІІ на избирателния списък при предаването му на СИК
  "added_voters" integer,               --  7) Формуляр № 1 - по приложение Приложение № 85-х 2.   Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък (част І и част ІІ) в изборния ден
                                        --     Формуляр № 7 - по приложение Приложение № 86-ч: 2.   Брой на избирателите, вписани в списъка за гласуване извън страната в допълнителната страница в изборния ден (под чертата)
                                        --     Формуляр № 8 - по Приложение № 85-хм: 2.   Брой на избирателите, вписани в допълнителната страница на избирателния списък – част І и част ІІ (под чертата) Формуляр № 8 - по Приложение № 85-хм: в изборния ден
  "voters_by_signature" integer,        --  8) Формуляр № 1 - по приложение Приложение № 85-х 3.   Брой на гласувалите избиратели според положените подписи в избирателния списък (част І и част ІІ), включително и подписите в допълнителната страница/и (под чертата)
                                        --     Формуляр № 7 - по приложение Приложение № 86-ч: 3.   Брой на гласувалите избиратели според положените подписи в списъка за гласуване извън страната, включително и подписите в допълнителната страница/ и (под чертата)
                                        --     Формуляр № 8 - по Приложение № 85-хм: 3.   Брой на гласувалите избиратели според положените подписи в избирателния списък – част І и част ІІ, включително и подписите в допълнителната страница (под чертата) 
  "boters_using_paper_ballot" integer,  --  9) Формуляр № 8 - по Приложение № 85-хм: 3.а) Формуляр № 8 - по Приложение № 85-хм: Брой избиратели, гласували с хартиена бюлетина
  "total_voters_by_machine" integer,    --  10) Формуляр № 14 - по формат на данните от машините за гласуване: -.   Общ брой гласували
                                        --      Формуляр № 8 - по Приложение № 85-хм: 3.б) Формуляр № 8 - по Приложение № 85-хм: Брой на потвърдените гласове от машинното гласуване
  "unused_ballots" integer,             --  11) Формуляр № 1 - по приложение Приложение № 85-х 4.а) брой на неизползваните бюлетини
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 4.а) брой на неизползваните бюлетини
                                        --      Формуляр № 8 - по Приложение № 85-хм: 4.а) Формуляр № 8 - по Приложение № 85-хм: брой на неизползваните бюлетини
  "destroyed_ballots" integer,          --  12) Формуляр № 1 - по приложение Приложение № 85-х 4.б) брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване)
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 4.б) брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване  от кочана и станали неизползваеми)
                                        --      Формуляр № 8 - по Приложение № 85-хм: 4.б) Формуляр № 8 - по Приложение № 85-хм: брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана и станали неизползваеми)
  "invalid_ballots_invalid_sn" integer, --  13) Формуляр № 1 - по приложение Приложение № 85-х 4.в) брой на недействителните бюлетини по чл. 265, ал. 5 от ИК (когато номерът
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 4.в) брой на недействителните бюлетини по чл. 265, ал. 5 ИК (когато номерът  на бюлетината не съответства на номер в кочана)
                                        --      Формуляр № 8 - по Приложение № 85-хм: 4.в) Формуляр № 8 - по Приложение № 85-хм: брой на недействителните бюлетини по чл. 265, ал. 5 ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,      --  14) Формуляр № 1 - по приложение Приложение № 85-х 4.г) брой на недействителните бюлетини по чл. 227 от ИК (при които е използвана
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 4.г) брой на недействителните бюлетини по чл. 227 ИК (при които е използвана  възпроизвеждаща техника)
                                        --      Формуляр № 8 - по Приложение № 85-хм: 4.г) Формуляр № 8 - по Приложение № 85-хм: брой на недействителните бюлетини по чл. 227 ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,     --  15) Формуляр № 1 - по приложение Приложение № 85-х 4.д) брой на недействителните бюлетини по чл. 228 от ИК (показан публично вот
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 4.д) брой на недействителните бюлетини по чл. 228 ИК (показан публично вот след гласуване)
                                        --      Формуляр № 8 - по Приложение № 85-хм: 4.д) Формуляр № 8 - по Приложение № 85-хм: брой на недействителните бюлетини по чл. 228 ИК (показан публично вот след гласуване) 
  "invalid_ballots_mistake" integer,    --  16) Формуляр № 1 - по приложение Приложение № 85-х 4.е) брой на сгрешените бюлетини
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 4.е) брой на сгрешените бюлетини
                                        --      Формуляр № 8 - по Приложение № 85-хм: 4.е) Формуляр № 8 - по Приложение № 85-хм: брой на сгрешените бюлетини
  "ballots_in_box" integer,             --  17) Формуляр № 1 - по приложение Приложение № 85-х 5.   Брой на намерените в избирателната кутия бюлетини
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 5.   Брой на намерените в избирателната кутия бюлетини
                                        --      Формуляр № 8 - по Приложение № 85-хм: 5.   Общ брой на намерените в избирателната кутия бюлетини и потвърдените гласове от машинното гласуване
  "machine_ballots_in_box" integer,     --  18) Формуляр № 8 - по Приложение № 85-хм: 5.а) Брой на намерените в избирателната кутия бюлетини
  "confirmed_votes_by_machine" integer, --  19) -.   Брой на потвърдените гласове от машинното гласуване
  "invalid_ballots_in_box" integer,     --  20) Формуляр № 1 - по приложение Приложение № 85-х 6.   Брой намерени в избирателната кутия недействителни гласове (бюлетини)
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 6.   Брой намерени в избирателната кутия недействителни гласове (бюлетини)
                                        --      Формуляр № 8 - по Приложение № 85-хм: 6.   Брой намерени в избирателната кутия недействителни гласове (бюлетини) Формуляр № 8 - по Приложение № 85-хм:
  "valid_ballots_in_box" integer,       --  21) Формуляр № 1 - по приложение Приложение № 85-х 7.   Общ брой намерени в избирателната кутия действителни гласове (бюлетини)
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 7.   Общ брой намерени в избирателната кутия действителни гласове (бюлетини)
                                        --      Формуляр № 8 - по Приложение № 85-хм: 7.   Общ брой на действителни гласове (брой намерени в избирателната кутия действителни бюлетини и действителни гласове от машинното гласуване) (Б + МГ)
  "valid_ballots_in_box_p_c" integer,   --  22) Формуляр № 1 - по приложение Приложение № 85-х 7.1  брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети 
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 7.1. брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети
                                        --      Формуляр № 8 - по Приложение № 85-хм: 7.1. брой на действителните гласове, подадени за кандидатите на партии, коалиции и инициативни комитети (Б+МГ) 
  "valid_ballots_in_box_b" integer,     --  23) Формуляр № 8 - по Приложение № 85-хм: 7.1а брой на намерените в избирателната кутия действителни гласове (бюлетини), подадени за кандидатските листи на партии, коалиции и инициативни комитети (Б)
  "valid_ballots_in_box_mg" integer,    --  24) Формуляр № 14 - по формат на данните от машините за гласуване: -.   Брой действителните гласове, подадени за кандидатските листи на партии, Формуляр № 14 - по формат на данните от машините за гласуване: коалиции и инициативни комитети от машинното гласуване (МГ)
                                        --      Формуляр № 8 - по Приложение № 85-хм: 7.1б брой действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети от машинното гласуване (МГ)
  "valid_no_one_all" integer,           --  25) Формуляр № 1 - по приложение Приложение № 85-х 7.2  брой действителни гласове (отбелязвания) само в квадратчето „Не подкрепям никого“
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 7.2. брой действителни гласове (отбелязвания) само в квадратчето „Не подкрепям никого“
                                        --      Формуляр № 8 - по Приложение № 85-хм: 7.2. брой действителни гласове (отбелязвания) Формуляр № 8 - по Приложение № 85-хм: само в квадратчето „Не подкрепям никого“ (Б+МГ)
  "valid_no_one_all_b" integer,         --  26) Формуляр № 8 - по Приложение № 85-хм: 7.2а брой на намерените в избирателната кутия действителни гласове (бюлетини) с отбелязване „Не подкрепям никого“ (Б) 
  "valid_no_one_all_mg" integer,        --  27) Формуляр № 14 - по формат на данните от машините за гласуване: -.   Брой действителните гласове с отбелязване „Не подкрепям никого“ от машинното гласуване (МГ)
                                        --      Формуляр № 8 - по Приложение № 85-хм: 7.2б брой действителните гласове с отбелязване „Не подкрепям никого“ от машинното гласуване (МГ) 
  "invalid_empty_or_onclear" integer    --  28) Формуляр № 1 - по приложение Приложение № 85-х 9.   Бюлетини, в които не е отбелязан вотът на избирателя (празни бюлетини), бюлетини, в които е гласувано в повече от едно квадратче; бюлетини, в които не може да се установи еднозначно вотът на избирателя и други видове недействителни гласове
                                        --      Формуляр № 7 - по приложение Приложение № 86-ч: 9.   Бюлетини, в които не е отбелязан вотът на избирателя (празни бюлетини), бюлетини, в които е гласувано в повече от едно квадратче; бюлетини, в които не може да се установи еднозначно вотът на избирателя и други видове недействителни гласове
                                        --      Формуляр № 8 - по Приложение № 85-хм: 9.   Бюлетини, в които не е отбелязан вотът на избирателя (празни бюлетини), бюлетини, в които е гласувано в повече от едно квадратче; бюлетини, в които не може да се установи еднозначно вотът на избирателя и други видове недействителни гласове
);


CREATE TABLE mayor_2019_1_protocols(
  "form_number" integer,                --  1)      № формуляр (1)
  "section_id" text,                    --  2)      Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "district_id" integer,                --  3)      Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "protocol_serial_numbers" text,       --  4)      Серийни номера на страниците на протокола, разделени с "|"
  "ballots_available" integer,          --  5) A.   Брой на бюлетините, получени по реда на чл. 215, ал. 1 ИК, вписани в т. 3.2/3.3/3.4 на протокола за предаване и приемане на изборни книжа и материали на СИК
  "total_voters" integer,               --  6) 1.   Брой на избирателите според избирателния списък при предаването му на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                     --  7) 1.а) Избирателен списък – част І
  "list_2" integer,                     --  8) 1.б) Избирателен списък – част ІІ
  "added_voters" integer,               --  9) 2.   Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "voters_by_signature" integer,        --  10) 3.   Брой на гласувалите избиратели според положените подписи в избирателния списък (част І и част ІІ), включително и подписите в допълнителната страница (под чертата)
  "unused_ballots" integer,             --  11) 4.а) брой на неизползваните бюлетини
  "destroyed_ballots" integer,          --  12) 4.б) брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана)
  "invalid_ballots_invalid_sn" integer, --  13) 4.в) брой на недействителните бюлетини по чл. 427, ал. 6 ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,      --  14) 4.г) брой на недействителните бюлетини по чл. 227 ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,     --  15) 4.д) брой на недействителните бюлетини по чл. 228 ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,    --  16) 4.е) брой на сгрешените бюлетини по чл. 267, ал. 2 ИК
  "ballots_in_box" integer,             --  17) 5.   Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,     --  18) 6.   Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,       --  19) 7.   Общ брой на намерените в избирателната кутия действителни гласове (бюлетини) (сумата от числата по т. 7.1 и т. 7.2) 
  "valid_ballots_for_party" integer,    --  20) 7.1. Брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети
  "valid_no_one_all" integer,           --  21) 7.2. Брой на действителните гласове с отбелязан вот в квадратчето „Не подкрепям никого“
  "invalid_empty_or_onclear" integer    --  22) 9.   Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);

CREATE TABLE mayor_municipality_2019_1_protocols(
  "form_number" integer,                --  1)      № формуляр (1)
  "section_id" text,                    --  2)      Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "district_id" integer,                --  3)      Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "protocol_serial_numbers" text,       --  4)      Серийни номера на страниците на протокола, разделени с "|"
  "ballots_available" integer,          --  5) A.   Брой на бюлетините, получени по реда на чл. 215, ал. 1 ИК, вписани в т. 3.2/3.3/3.4 на протокола за предаване и приемане на изборни книжа и материали на СИК
  "total_voters" integer,               --  6) 1.   Брой на избирателите според избирателния списък при предаването му на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                     --  7) 1.а) Избирателен списък – част І
  "list_2" integer,                     --  8) 1.б) Избирателен списък – част ІІ
  "added_voters" integer,               --  9) 2.   Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "voters_by_signature" integer,        --  10) 3.   Брой на гласувалите избиратели според положените подписи в избирателния списък (част І и част ІІ), включително и подписите в допълнителната страница (под чертата)
  "unused_ballots" integer,             --  11) 4.а) брой на неизползваните бюлетини
  "destroyed_ballots" integer,          --  12) 4.б) брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана)
  "invalid_ballots_invalid_sn" integer, --  13) 4.в) брой на недействителните бюлетини по чл. 427, ал. 6 ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,      --  14) 4.г) брой на недействителните бюлетини по чл. 227 ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,     --  15) 4.д) брой на недействителните бюлетини по чл. 228 ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,    --  16) 4.е) брой на сгрешените бюлетини по чл. 267, ал. 2 ИК
  "ballots_in_box" integer,             --  17) 5.   Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,     --  18) 6.   Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,       --  19) 7.   Общ брой на намерените в избирателната кутия действителни гласове (бюлетини) (сумата от числата по т. 7.1 и т. 7.2) 
  "valid_ballots_for_party" integer,    --  20) 7.1. Брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети
  "valid_no_one_all" integer,           --  21) 7.2. Брой на действителните гласове с отбелязан вот в квадратчето „Не подкрепям никого“
  "invalid_empty_or_onclear" integer    --  22) 9.   Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);

CREATE TABLE mayor_region_2019_1_protocols(
  "form_number" integer,                --  1)      № формуляр (1)
  "section_id" text,                    --  2)      Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "district_id" integer,                --  3)      Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "protocol_serial_numbers" text,       --  4)      Серийни номера на страниците на протокола, разделени с "|"
  "ballots_available" integer,          --  5) A.   Брой на бюлетините, получени по реда на чл. 215, ал. 1 ИК, вписани в т. 3.2/3.3/3.4 на протокола за предаване и приемане на изборни книжа и материали на СИК
  "total_voters" integer,               --  6) 1.   Брой на избирателите според избирателния списък при предаването му на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                     --  7) 1.а) Избирателен списък – част І
  "list_2" integer,                     --  8) 1.б) Избирателен списък – част ІІ
  "added_voters" integer,               --  9) 2.   Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "voters_by_signature" integer,        --  10) 3.   Брой на гласувалите избиратели според положените подписи в избирателния списък (част І и част ІІ), включително и подписите в допълнителната страница (под чертата)
  "unused_ballots" integer,             --  11) 4.а) брой на неизползваните бюлетини
  "destroyed_ballots" integer,          --  12) 4.б) брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана)
  "invalid_ballots_invalid_sn" integer, --  13) 4.в) брой на недействителните бюлетини по чл. 427, ал. 6 ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,      --  14) 4.г) брой на недействителните бюлетини по чл. 227 ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,     --  15) 4.д) брой на недействителните бюлетини по чл. 228 ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,    --  16) 4.е) брой на сгрешените бюлетини по чл. 267, ал. 2 ИК
  "ballots_in_box" integer,             --  17) 5.   Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,     --  18) 6.   Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,       --  19) 7.   Общ брой на намерените в избирателната кутия действителни гласове (бюлетини) (сумата от числата по т. 7.1 и т. 7.2) 
  "valid_ballots_for_party" integer,    --  20) 7.1. Брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети
  "valid_no_one_all" integer,           --  21) 7.2. Брой на действителните гласове с отбелязан вот в квадратчето „Не подкрепям никого“
  "invalid_empty_or_onclear" integer    --  22) 9.   Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);

CREATE TABLE council_region_2019_1_protocols(
  "form_number" integer,                --  1)      № формуляр (1)
  "section_id" text,                    --  2)      Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "district_id" integer,                --  3)      Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "protocol_serial_numbers" text,       --  4)      Серийни номера на страниците на протокола, разделени с "|"
  "ballots_available" integer,          --  5) A.   Брой на бюлетините, получени по реда на чл. 215, ал. 1 ИК, вписани в т. 3.2/3.3/3.4 на протокола за предаване и приемане на изборни книжа и материали на СИК
  "total_voters" integer,               --  6) 1.   Брой на избирателите според избирателния списък при предаването му на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                     --  7) 1.а) Избирателен списък – част І
  "list_2" integer,                     --  8) 1.б) Избирателен списък – част ІІ
  "added_voters" integer,               --  9) 2.   Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "voters_by_signature" integer,        --  10) 3.   Брой на гласувалите избиратели според положените подписи в избирателния списък (част І и част ІІ), включително и подписите в допълнителната страница (под чертата)
  "unused_ballots" integer,             --  11) 4.а) брой на неизползваните бюлетини
  "destroyed_ballots" integer,          --  12) 4.б) брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана)
  "invalid_ballots_invalid_sn" integer, --  13) 4.в) брой на недействителните бюлетини по чл. 427, ал. 6 ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,      --  14) 4.г) брой на недействителните бюлетини по чл. 227 ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,     --  15) 4.д) брой на недействителните бюлетини по чл. 228 ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,    --  16) 4.е) брой на сгрешените бюлетини по чл. 267, ал. 2 ИК
  "ballots_in_box" integer,             --  17) 5.   Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,     --  18) 6.   Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,       --  19) 7.   Общ брой на намерените в избирателната кутия действителни гласове (бюлетини) (сумата от числата по т. 7.1 и т. 7.2) 
  "valid_ballots_for_party" integer,    --  20) 7.1. Брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети
  "valid_no_one_all" integer,           --  21) 7.2. Брой на действителните гласове с отбелязан вот в квадратчето „Не подкрепям никого“
  "invalid_empty_or_onclear" integer    --  22) 9.   Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);

CREATE TABLE mayor_2019_2_protocols(
  "form_number" integer,                --  1)      № формуляр (1)
  "section_id" text,                    --  2)      Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "district_id" integer,                --  3)      Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "protocol_serial_numbers" text,       --  4)      Серийни номера на страниците на протокола, разделени с "|"
  "ballots_available" integer,          --  5) A.   Брой на бюлетините, получени по реда на чл. 215, ал. 1 ИК, вписани в т. 3.2/3.3/3.4 на протокола за предаване и приемане на изборни книжа и материали на СИК
  "total_voters" integer,               --  6) 1.   Брой на избирателите според избирателния списък при предаването му на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                     --  7) 1.а) Избирателен списък – част І
  "list_2" integer,                     --  8) 1.б) Избирателен списък – част ІІ
  "added_voters" integer,               --  9) 2.   Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "voters_by_signature" integer,        --  10) 3.   Брой на гласувалите избиратели според положените подписи в избирателния списък (част І и част ІІ), включително и подписите в допълнителната страница (под чертата)
  "unused_ballots" integer,             --  11) 4.а) брой на неизползваните бюлетини
  "destroyed_ballots" integer,          --  12) 4.б) брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана)
  "invalid_ballots_invalid_sn" integer, --  13) 4.в) брой на недействителните бюлетини по чл. 427, ал. 6 ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,      --  14) 4.г) брой на недействителните бюлетини по чл. 227 ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,     --  15) 4.д) брой на недействителните бюлетини по чл. 228 ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,    --  16) 4.е) брой на сгрешените бюлетини по чл. 267, ал. 2 ИК
  "ballots_in_box" integer,             --  17) 5.   Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,     --  18) 6.   Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,       --  19) 7.   Общ брой на намерените в избирателната кутия действителни гласове (бюлетини) (сумата от числата по т. 7.1 и т. 7.2) 
  "valid_ballots_for_party" integer,    --  20) 7.1. Брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети
  "valid_no_one_all" integer,           --  21) 7.2. Брой на действителните гласове с отбелязан вот в квадратчето „Не подкрепям никого“
  "invalid_empty_or_onclear" integer    --  22) 9.   Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);

CREATE TABLE mayor_municipality_2019_2_protocols(
  "form_number" integer,                --  1)      № формуляр (1)
  "section_id" text,                    --  2)      Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "district_id" integer,                --  3)      Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "protocol_serial_numbers" text,       --  4)      Серийни номера на страниците на протокола, разделени с "|"
  "ballots_available" integer,          --  5) A.   Брой на бюлетините, получени по реда на чл. 215, ал. 1 ИК, вписани в т. 3.2/3.3/3.4 на протокола за предаване и приемане на изборни книжа и материали на СИК
  "total_voters" integer,               --  6) 1.   Брой на избирателите според избирателния списък при предаването му на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                     --  7) 1.а) Избирателен списък – част І
  "list_2" integer,                     --  8) 1.б) Избирателен списък – част ІІ
  "added_voters" integer,               --  9) 2.   Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "voters_by_signature" integer,        --  10) 3.   Брой на гласувалите избиратели според положените подписи в избирателния списък (част І и част ІІ), включително и подписите в допълнителната страница (под чертата)
  "unused_ballots" integer,             --  11) 4.а) брой на неизползваните бюлетини
  "destroyed_ballots" integer,          --  12) 4.б) брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана)
  "invalid_ballots_invalid_sn" integer, --  13) 4.в) брой на недействителните бюлетини по чл. 427, ал. 6 ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,      --  14) 4.г) брой на недействителните бюлетини по чл. 227 ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,     --  15) 4.д) брой на недействителните бюлетини по чл. 228 ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,    --  16) 4.е) брой на сгрешените бюлетини по чл. 267, ал. 2 ИК
  "ballots_in_box" integer,             --  17) 5.   Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,     --  18) 6.   Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,       --  19) 7.   Общ брой на намерените в избирателната кутия действителни гласове (бюлетини) (сумата от числата по т. 7.1 и т. 7.2) 
  "valid_ballots_for_party" integer,    --  20) 7.1. Брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети
  "valid_no_one_all" integer,           --  21) 7.2. Брой на действителните гласове с отбелязан вот в квадратчето „Не подкрепям никого“
  "invalid_empty_or_onclear" integer    --  22) 9.   Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);

CREATE TABLE mayor_region_2019_2_protocols(
  "form_number" integer,                --  1)      № формуляр (1)
  "section_id" text,                    --  2)      Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "district_id" integer,                --  3)      Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "protocol_serial_numbers" text,       --  4)      Серийни номера на страниците на протокола, разделени с "|"
  "ballots_available" integer,          --  5) A.   Брой на бюлетините, получени по реда на чл. 215, ал. 1 ИК, вписани в т. 3.2/3.3/3.4 на протокола за предаване и приемане на изборни книжа и материали на СИК
  "total_voters" integer,               --  6) 1.   Брой на избирателите според избирателния списък при предаването му на СИК (сумата от числата по букви „а“ и „б“ от тази точка)
  "list_1" integer,                     --  7) 1.а) Избирателен списък – част І
  "list_2" integer,                     --  8) 1.б) Избирателен списък – част ІІ
  "added_voters" integer,               --  9) 2.   Брой на избирателите, вписани в допълнителната страница (под чертата) на избирателния списък в изборния ден
  "voters_by_signature" integer,        --  10) 3.   Брой на гласувалите избиратели според положените подписи в избирателния списък (част І и част ІІ), включително и подписите в допълнителната страница (под чертата)
  "unused_ballots" integer,             --  11) 4.а) брой на неизползваните бюлетини
  "destroyed_ballots" integer,          --  12) 4.б) брой на унищожените от СИК бюлетини по други поводи (за създаване на образци за таблата пред изборното помещение и увредени механично при откъсване от кочана)
  "invalid_ballots_invalid_sn" integer, --  13) 4.в) брой на недействителните бюлетини по чл. 427, ал. 6 ИК (когато номерът на бюлетината не съответства на номер в кочана)
  "invalid_ballots_photo" integer,      --  14) 4.г) брой на недействителните бюлетини по чл. 227 ИК (при които е използвана възпроизвеждаща техника)
  "invalid_ballots_public" integer,     --  15) 4.д) брой на недействителните бюлетини по чл. 228 ИК (показан публично вот след гласуване)
  "invalid_ballots_mistake" integer,    --  16) 4.е) брой на сгрешените бюлетини по чл. 267, ал. 2 ИК
  "ballots_in_box" integer,             --  17) 5.   Брой на намерените в избирателната кутия бюлетини
  "invalid_ballots_in_box" integer,     --  18) 6.   Брой намерени в избирателната кутия недействителни гласове (бюлетини) 
  "valid_ballots_in_box" integer,       --  19) 7.   Общ брой на намерените в избирателната кутия действителни гласове (бюлетини) (сумата от числата по т. 7.1 и т. 7.2) 
  "valid_ballots_for_party" integer,    --  20) 7.1. Брой на действителните гласове, подадени за кандидатските листи на партии, коалиции и инициативни комитети
  "valid_no_one_all" integer,           --  21) 7.2. Брой на действителните гласове с отбелязан вот в квадратчето „Не подкрепям никого“
  "invalid_empty_or_onclear" integer    --  22) 9.   Празни бюлетини или бюлетини, в които е гласувано за повече от една листа, както и бюлетини, в които не може да се установи еднозначно вотът на избирателя
);


CREATE TABLE parliament_2009_sections(
  "section_id" text,    -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "location_name" text, -- 2) Име на Населено място
  "ekatte" integer,     -- 3) ЕКАТТЕ на населеното място
  "" text
);

CREATE TABLE european_2009_sections(
  "section_id" text,    -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "location_name" text, -- 2) Име на Населено място
  "ekatte" integer,     -- 3) ЕКАТТЕ на населеното място
  "" text
);

CREATE TABLE president_2011_1_sections(
  "section_type" text,      -- 1) Знак, определящ вида на секцията
  "section_id" text,        -- 2) Пълен код на секция(код на област(2), община(2), адм. район(2), секция(3))
  "district_name" text,     -- 3) Име на област(ако е чужбинска секция - държава)
  "municipality_name" text, -- 4) Име на община(ако е чужбинкса секция - празно)
  "location_name" text,     -- 5) Име на населено място
  "ekatte" integer          -- 6) ЕКАТТЕ на населеното място(ако е чужбинска секция - празно)
);

CREATE TABLE president_2011_2_sections(
  "section_type" text,      -- 1) Знак, определящ вида на секцията
  "section_id" text,        -- 2) Пълен код на секция(код на област(2), община(2), адм. район(2), секция(3))
  "district_name" text,     -- 3) Име на област(ако е чужбинска секция - държава)
  "municipality_name" text, -- 4) Име на община(ако е чужбинкса секция - празно)
  "location_name" text,     -- 5) Име на населено място
  "ekatte" integer          -- 6) ЕКАТТЕ на населеното място(ако е чужбинска секция - празно)
);

CREATE TABLE parliament_2013_sections(
  "section_type" text,      -- 1) Знак, определящ вида на секцията
  "section_id" text,        -- 2) Пълен код на секция(код на област(2), община(2), адм. район(2), секция(3))
  "district_name" text,     -- 3) Име на област(ако е чужбинска секция - държава)
  "municipality_name" text, -- 4) Име на община(ако е чужбинкса секция - празно)
  "location_name" text,     -- 5) Име на населено място
  "ekatte" integer          -- 6) ЕКАТТЕ на населеното място(ако е чужбинска секция - празно)
);

CREATE TABLE parliament_2014_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "location_name" text,     -- 2) Име на Населено място
  "ekatte" integer,         -- 3) ЕКАТТЕ на населеното място
  "mobile_section" boolean, -- 4) Флаг мобилна секция
  "ship_section" boolean,   -- 5) Флаг корабна секция
  "machine_section" boolean -- 6) Флаг машинно гласуване
);

CREATE TABLE mayor_2015_1_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" text,               -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ekaship_sectionte" boolean, -- 7) Флаг корабна секция
  "machine_section" boolean    -- 8) Флаг машинно гласуване
);

CREATE TABLE mayor_municipality_2015_1_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" text,               -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ekaship_sectionte" boolean, -- 7) Флаг корабна секция
  "machine_section" boolean    -- 8) Флаг машинно гласуване
);

CREATE TABLE mayor_region_2015_1_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" text,               -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ekaship_sectionte" boolean, -- 7) Флаг корабна секция
  "machine_section" boolean    -- 8) Флаг машинно гласуване
);

CREATE TABLE council_2015_1_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" text,               -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ekaship_sectionte" boolean, -- 7) Флаг корабна секция
  "machine_section" boolean    -- 8) Флаг машинно гласуване
);

CREATE TABLE mayor_2015_2_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" text,               -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ekaship_sectionte" boolean, -- 7) Флаг корабна секция
  "machine_section" boolean    -- 8) Флаг машинно гласуване
);

CREATE TABLE mayor_municipality_2015_2_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" text,               -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ekaship_sectionte" boolean, -- 7) Флаг корабна секция
  "machine_section" boolean    -- 8) Флаг машинно гласуване
);

CREATE TABLE mayor_region_2015_2_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" text,               -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ekaship_sectionte" boolean, -- 7) Флаг корабна секция
  "machine_section" boolean    -- 8) Флаг машинно гласуване
);


CREATE TABLE president_2016_1_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" text,               -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ekaship_sectionte" boolean, -- 7) Флаг корабна секция
  "machine_section" boolean    -- 8) Флаг машинно гласуване
);
CREATE TABLE president_2016_2_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" text,               -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ekaship_sectionte" boolean, -- 7) Флаг корабна секция
  "machine_section" boolean    -- 8) Флаг машинно гласуване
);

CREATE TABLE parliament_2017_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,            -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ship_section" boolean       -- 7) Флаг корабна секция
);

CREATE TABLE european_2019_sections(
  "section_id" text,           -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "section_local_id" integer,  -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "district_name" text,        -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,            -- 4) ЕКАТТЕ на населеното място
  "location_name" text,        -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean,    -- 6) Флаг мобилна секция
  "ship_section" boolean,      -- 7) Флаг корабна секция
  "machine_section" boolean    -- 8) Флаг машинно гласуване
);

CREATE TABLE european_2014_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "location_name" text,     -- 2) Име на Населено място
  "ekatte" integer,         -- 3) ЕКАТТЕ на населеното място
  "mobile_section" boolean, -- 4) Флаг мобилна секция
  "ship_section" boolean,   -- 5) Флаг корабна секция
  "machine_section" boolean -- 6) Флаг машинно гласуване
);

CREATE TABLE mayor_2019_1_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "location_name" text,     -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "ship_section" boolean,   -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);
CREATE TABLE mayor_municipality_2019_1_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "location_name" text,     -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "ship_section" boolean,   -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);

CREATE TABLE mayor_region_2019_1_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "location_name" text,     -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "ship_section" boolean,   -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);
CREATE TABLE council_region_2019_1_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "location_name" text,     -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "ship_section" boolean,   -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);

CREATE TABLE mayor_2019_2_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "location_name" text,     -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "ship_section" boolean,   -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);

CREATE TABLE mayor_municipality_2019_2_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "location_name" text,     -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "ship_section" boolean,   -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);

CREATE TABLE mayor_region_2019_2_sections(
  "section_id" text,        -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,       -- 2) Идентификатор на административна единица, за която се гласува в секцията
  "location_name" text,     -- 3) Име на административна единица, за която се гласува в секцията
  "ekatte" integer,         -- 4) ЕКАТТЕ на населеното място
  "ship_section" boolean,   -- 5) Име на Населено място, където е регистрирана секцията (за секциите извън страната - Държава, Населено място)
  "mobile_section" boolean  -- 6) Флаг подвижна секция
);

CREATE TABLE president_2011_1_votes(
  "section_type" text,     -- 1) Знак, определящ вида на секционния протокол
  "section_id" text,       -- 2) Пълен код на секция(код на област(2), община(2), адм. район(2), секция(3));
  "party1_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party1_votes" integer,  -- Гласове за съответния РИК
  "party2_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party2_votes" integer,  -- Гласове за съответния РИК
  "party3_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party3_votes" integer,  -- Гласове за съответния РИК
  "party4_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party4_votes" integer,  -- Гласове за съответния РИК
  "party5_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party5_votes" integer,  -- Гласове за съответния РИК
  "party6_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party6_votes" integer,  -- Гласове за съответния РИК
  "party7_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party7_votes" integer,  -- Гласове за съответния РИК
  "party8_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party8_votes" integer,  -- Гласове за съответния РИК
  "party9_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party9_votes" integer,  -- Гласове за съответния РИК
  "party10_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party10_votes" integer, -- Гласове за съответния РИК
  "party11_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party11_votes" integer, -- Гласове за съответния РИК
  "party12_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party12_votes" integer, -- Гласове за съответния РИК
  "party13_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party13_votes" integer, -- Гласове за съответния РИК
  "party14_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party14_votes" integer, -- Гласове за съответния РИК
  "party15_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party15_votes" integer, -- Гласове за съответния РИК
  "party16_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party16_votes" integer, -- Гласове за съответния РИК
  "party17_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party17_votes" integer, -- Гласове за съответния РИК
  "party18_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party18_votes" integer  -- Гласове за съответния РИК
);

CREATE TABLE president_2011_2_votes(
  "section_type" text,     -- 1) Знак, определящ вида на секционния протокол
  "section_id" text,       -- 2) Пълен код на секция(код на област(2), община(2), адм. район(2), секция(3));
  "party1_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party1_votes" integer,  -- Гласове за съответния РИК
  "party2_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party2_votes" integer   -- Гласове за съответния РИК
);

CREATE TABLE parliament_2013_votes(
  "section_type" integer,  -- 1) Знак, определящ вида на секционния протокол
  "section_id" text,       -- 2) Пълен код на секция(код на област(2), община(2), адм. район(2), секция(3));
  "party1_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party1_votes" integer,  -- Гласове за съответния РИК
  "party2_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party2_votes" integer,  -- Гласове за съответния РИК
  "party3_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party3_votes" integer,  -- Гласове за съответния РИК
  "party4_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party4_votes" integer,  -- Гласове за съответния РИК
  "party5_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party5_votes" integer,  -- Гласове за съответния РИК
  "party6_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party6_votes" integer,  -- Гласове за съответния РИК
  "party7_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party7_votes" integer,  -- Гласове за съответния РИК
  "party8_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party8_votes" integer,  -- Гласове за съответния РИК
  "party9_id" integer,     -- Номер на партия/коалиция/независим кандидат
  "party9_votes" integer,  -- Гласове за съответния РИК
  "party10_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party10_votes" integer, -- Гласове за съответния РИК
  "party11_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party11_votes" integer, -- Гласове за съответния РИК
  "party12_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party12_votes" integer, -- Гласове за съответния РИК
  "party13_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party13_votes" integer, -- Гласове за съответния РИК
  "party14_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party14_votes" integer, -- Гласове за съответния РИК
  "party15_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party15_votes" integer, -- Гласове за съответния РИК
  "party16_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party16_votes" integer, -- Гласове за съответния РИК
  "party17_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party17_votes" integer, -- Гласове за съответния РИК
  "party18_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party18_votes" integer, -- Гласове за съответния РИК
  "party19_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party19_votes" integer, -- Гласове за съответния РИК
  "party20_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party20_votes" integer, -- Гласове за съответния РИК
  "party21_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party21_votes" integer, -- Гласове за съответния РИК
  "party22_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party22_votes" integer, -- Гласове за съответния РИК
  "party23_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party23_votes" integer, -- Гласове за съответния РИК
  "party24_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party24_votes" integer, -- Гласове за съответния РИК
  "party25_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party25_votes" integer, -- Гласове за съответния РИК
  "party26_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party26_votes" integer, -- Гласове за съответния РИК
  "party27_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party27_votes" integer, -- Гласове за съответния РИК
  "party28_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party28_votes" integer, -- Гласове за съответния РИК
  "party29_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party29_votes" integer, -- Гласове за съответния РИК
  "party30_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party30_votes" integer, -- Гласове за съответния РИК
  "party31_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party31_votes" integer, -- Гласове за съответния РИК
  "party32_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party32_votes" integer, -- Гласове за съответния РИК
  "party33_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party33_votes" integer, -- Гласове за съответния РИК
  "party34_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party34_votes" integer, -- Гласове за съответния РИК
  "party35_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party35_votes" integer, -- Гласове за съответния РИК
  "party36_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party36_votes" integer, -- Гласове за съответния РИК
  "party37_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party37_votes" integer, -- Гласове за съответния РИК
  "party38_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party38_votes" integer, -- Гласове за съответния РИК
  "party39_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party39_votes" integer, -- Гласове за съответния РИК
  "party40_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party40_votes" integer, -- Гласове за съответния РИК
  "party41_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party41_votes" integer, -- Гласове за съответния РИК
  "party42_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party42_votes" integer, -- Гласове за съответния РИК
  "party43_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party43_votes" integer, -- Гласове за съответния РИК
  "party44_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party44_votes" integer, -- Гласове за съответния РИК
  "party45_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party45_votes" integer, -- Гласове за съответния РИК
  "party46_id" integer,    -- Номер на партия/коалиция/независим кандидат
  "party46_votes" integer  -- Гласове за съответния РИК
);

CREATE TABLE parliament_2014_votes(
  "section_id" text,         -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "party1_valid" integer,    -- 2) Действителни гласове за:  1. Движение 21
  "party1_invalid" integer,  -- 2) Недействителни гласове за:  1. Движение 21
  "party2_valid" integer,    -- 3) Действителни гласове за:  2. БЪЛГАРСКА СОЦИАЛДЕМОКРАЦИЯ
  "party2_invalid" integer,  -- 3) Недействителни гласове за:  2. БЪЛГАРСКА СОЦИАЛДЕМОКРАЦИЯ
  "party3_valid" integer,    -- 4) Действителни гласове за:  3. БЪЛГАРСКИ НАЦИОНАЛЕН СЪЮЗ - НД
  "party3_invalid" integer,  -- 4) Недействителни гласове за:  3. БЪЛГАРСКИ НАЦИОНАЛЕН СЪЮЗ - НД
  "party4_valid" integer,    -- 5) Действителни гласове за:  4. ПП НОВОТО ВРЕМЕ
  "party4_invalid" integer,  -- 5) Недействителни гласове за:  4. ПП НОВОТО ВРЕМЕ
  "party5_valid" integer,    -- 6) Действителни гласове за:  5. ОБЕДИНЕНА БЪЛГАРИЯ
  "party5_invalid" integer,  -- 6) Недействителни гласове за:  5. ОБЕДИНЕНА БЪЛГАРИЯ
  "party6_valid" integer,    -- 7) Действителни гласове за:  6. СОЦИАЛДЕМОКРАТИЧЕСКА ПАРТИЯ
  "party6_invalid" integer,  -- 7) Недействителни гласове за:  6. СОЦИАЛДЕМОКРАТИЧЕСКА ПАРТИЯ
  "party7_valid" integer,    -- 8) Действителни гласове за:  7. РЕФОРМАТОРСКИ БЛОК – БЗНС, ДБГ, ДСБ, НПСД, СДС
  "party7_invalid" integer,  -- 8) Недействителни гласове за:  7. РЕФОРМАТОРСКИ БЛОК – БЗНС, ДБГ, ДСБ, НПСД, СДС
  "party8_valid" integer,    -- 9) Действителни гласове за:  8. ПП Нова България
  "party8_invalid" integer,  -- 9) Недействителни гласове за:  8. ПП Нова България
  "party9_valid" integer,    -- 10) Действителни гласове за:  9. ПП ГЕРБ
  "party9_invalid" integer,  -- 10) Недействителни гласове за:  9. ПП ГЕРБ
  "party10_valid" integer,   -- 11) Действителни гласове за: 10. ОБЩЕСТВО ЗА НОВА БЪЛГАРИЯ
  "party10_invalid" integer, -- 11) Недействителни гласове за: 10. ОБЩЕСТВО ЗА НОВА БЪЛГАРИЯ
  "party11_valid" integer,   -- 12) Действителни гласове за: 11. АТАКА
  "party11_invalid" integer, -- 12) Недействителни гласове за: 11. АТАКА
  "party12_valid" integer,   -- 13) Действителни гласове за: 12. НДСВ
  "party12_invalid" integer, -- 13) Недействителни гласове за: 12. НДСВ
  "party13_valid" integer,   -- 14) Действителни гласове за: 13. КП БЪЛГАРИЯ БЕЗ ЦЕНЗУРА
  "party13_invalid" integer, -- 14) Недействителни гласове за: 13. КП БЪЛГАРИЯ БЕЗ ЦЕНЗУРА
  "party14_valid" integer,   -- 15) Действителни гласове за: 14. Коалиция АБВ – (Алтернатива за българско възраждане)
  "party14_invalid" integer, -- 15) Недействителни гласове за: 14. Коалиция АБВ – (Алтернатива за българско възраждане)
  "party15_valid" integer,   -- 16) Действителни гласове за: 15. ЛЕВИЦАТА И ЗЕЛЕНА ПАРТИЯ
  "party15_invalid" integer, -- 16) Недействителни гласове за: 15. ЛЕВИЦАТА И ЗЕЛЕНА ПАРТИЯ
  "party16_valid" integer,   -- 17) Действителни гласове за: 16. НОВА АЛТЕРНАТИВА
  "party16_invalid" integer, -- 17) Недействителни гласове за: 16. НОВА АЛТЕРНАТИВА
  "party17_valid" integer,   -- 18) Действителни гласове за: 17. КП ДЕСНИТЕ
  "party17_invalid" integer, -- 18) Недействителни гласове за: 17. КП ДЕСНИТЕ
  "party18_valid" integer,   -- 19) Действителни гласове за: 18. ДПС – Движение за права и свободи
  "party18_invalid" integer, -- 19) Недействителни гласове за: 18. ДПС – Движение за права и свободи
  "party19_valid" integer,   -- 20) Действителни гласове за: 19. ПП Глас Народен
  "party19_invalid" integer, -- 20) Недействителни гласове за: 19. ПП Глас Народен
  "party20_valid" integer,   -- 21) Действителни гласове за: 20. ПАРТИЯ НА ЗЕЛЕНИТЕ
  "party20_invalid" integer, -- 21) Недействителни гласове за: 20. ПАРТИЯ НА ЗЕЛЕНИТЕ
  "party21_valid" integer,   -- 22) Действителни гласове за: 21. НОВА СИЛА
  "party21_invalid" integer, -- 22) Недействителни гласове за: 21. НОВА СИЛА
  "party22_valid" integer,   -- 23) Действителни гласове за: 22. БСП лява България
  "party22_invalid" integer, -- 23) Недействителни гласове за: 22. БСП лява България
  "party23_valid" integer,   -- 24) Действителни гласове за: 23. ЗЕЛЕНИТЕ
  "party23_invalid" integer, -- 24) Недействителни гласове за: 23. ЗЕЛЕНИТЕ
  "party24_valid" integer,   -- 25) Действителни гласове за: 24. ПАТРИОТИЧЕН ФРОНТ – НФСБ И ВМРО
  "party24_invalid" integer, -- 25) Недействителни гласове за: 24. ПАТРИОТИЧЕН ФРОНТ – НФСБ И ВМРО
  "party25_valid" integer,   -- 26) Действителни гласове за: 25. РЕПУБЛИКА БГ
  "party25_invalid" integer, -- 26) Недействителни гласове за: 25. РЕПУБЛИКА БГ
  "party26_valid" integer,   -- 27) За район 29. ХАСКОВО - Гласове за: 26. Господин Тончев Тонев
  "party26_invalid" integer  -- 27) За район 02. БУРГАС - Гласове за: 26. Ик Октай Хасанов Енимехмедов
                             -- 27) За район 01. БЛАГОЕВГРАД - Гласове за: 26. Инициативен Комитет Никола Николов Вапцаров
);

CREATE TABLE parliament_2017_votes(
  "section_id" text,         -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "region_id" integer,       -- 2) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "party1_id" integer,       -- № П/К/ИК
  "party1_valid" integer,    -- Действителни гласове
  "party1_invalid" integer,  -- Недействителни гласове
  "party2_id" integer,       -- № П/К/ИК
  "party2_valid" integer,    -- Действителни гласове
  "party2_invalid" integer,  -- Недействителни гласове
  "party3_id" integer,       -- № П/К/ИК
  "party3_valid" integer,    -- Действителни гласове
  "party3_invalid" integer,  -- Недействителни гласове
  "party4_id" integer,       -- № П/К/ИК
  "party4_valid" integer,    -- Действителни гласове
  "party4_invalid" integer,  -- Недействителни гласове
  "party5_id" integer,       -- № П/К/ИК
  "party5_valid" integer,    -- Действителни гласове
  "party5_invalid" integer,  -- Недействителни гласове
  "party6_id" integer,       -- № П/К/ИК
  "party6_valid" integer,    -- Действителни гласове
  "party6_invalid" integer,  -- Недействителни гласове
  "party7_id" integer,       -- № П/К/ИК
  "party7_valid" integer,    -- Действителни гласове
  "party7_invalid" integer,  -- Недействителни гласове
  "party8_id" integer,       -- № П/К/ИК
  "party8_valid" integer,    -- Действителни гласове
  "party8_invalid" integer,  -- Недействителни гласове
  "party9_id" integer,       -- № П/К/ИК
  "party9_valid" integer,    -- Действителни гласове
  "party9_invalid" integer,  -- Недействителни гласове
  "party10_id" integer,      -- № П/К/ИК
  "party10_valid" integer,   --- Действителни гласове
  "party10_invalid" integer, --  Недействителни гласове
  "party11_id" integer,      --  № П/К/ИК
  "party11_valid" integer,   --- Действителни гласове
  "party11_invalid" integer, --  Недействителни гласове
  "party12_id" integer,      --  № П/К/ИК
  "party12_valid" integer,   --- Действителни гласове
  "party12_invalid" integer, --  Недействителни гласове
  "party13_id" integer,      --  № П/К/ИК
  "party13_valid" integer,   --- Действителни гласове
  "party13_invalid" integer, --  Недействителни гласове
  "party14_id" integer,      --  № П/К/ИК
  "party14_valid" integer,   --- Действителни гласове
  "party14_invalid" integer, --  Недействителни гласове
  "party15_id" integer,      --  № П/К/ИК
  "party15_valid" integer,   --- Действителни гласове
  "party15_invalid" integer, --  Недействителни гласове
  "party16_id" integer,      --  № П/К/ИК
  "party16_valid" integer,   --- Действителни гласове
  "party16_invalid" integer, --  Недействителни гласове
  "party17_id" integer,      --  № П/К/ИК
  "party17_valid" integer,   --- Действителни гласове
  "party17_invalid" integer, --  Недействителни гласове
  "party18_id" integer,      --  № П/К/ИК
  "party18_valid" integer,   --- Действителни гласове
  "party18_invalid" integer, --  Недействителни гласове
  "party19_id" integer,      --  № П/К/ИК
  "party19_valid" integer,   --- Действителни гласове
  "party19_invalid" integer, --  Недействителни гласове
  "party20_id" integer,      --  № П/К/ИК
  "party20_valid" integer,   --- Действителни гласове
  "party20_invalid" integer, --  Недействителни гласове
  "party21_id" integer,      --  № П/К/ИК
  "party21_valid" integer,   --- Действителни гласове
  "party21_invalid" integer, --  Недействителни гласове
  "party22_id" integer,      --  № П/К/ИК
  "party22_valid" integer,   --- Действителни гласове
  "party22_invalid" integer  --  Недействителни гласове
);

CREATE TABLE president_2016_1_votes(
  "section_id" text,                      -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                  -- 2) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "candidate_1_id" integer,               -- № П/К/ИК;
  "candidate_1_valid_votes" integer,      -- действителни гласове
  "candidate_1_valid_machine_b" integer,  -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_1_valid_machine_m" integer,  -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_1_invalid_votes" integer,    -- недействителни гласове
  "candidate_2_id" integer,               -- № П/К/ИК;
  "candidate_2_valid_votes" integer,      -- действителни гласове
  "candidate_2_valid_machine_b" integer,  -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_2_valid_machine_m" integer,  -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_2_invalid_votes" integer,    -- недействителни гласове
  "candidate_3_id" integer,               -- № П/К/ИК;
  "candidate_3_valid_votes" integer,      -- действителни гласове
  "candidate_3_valid_machine_b" integer,  -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_3_valid_machine_m" integer,  -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_3_invalid_votes" integer,    -- недействителни гласове
  "candidate_4_id" integer,               -- № П/К/ИК;
  "candidate_4_valid_votes" integer,      -- действителни гласове
  "candidate_4_valid_machine_b" integer,  -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_4_valid_machine_m" integer,  -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_4_invalid_votes" integer,    -- недействителни гласове
  "candidate_5_id" integer,               -- № П/К/ИК;
  "candidate_5_valid_votes" integer,      -- действителни гласове
  "candidate_5_valid_machine_b" integer,  -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_5_valid_machine_m" integer,  -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_5_invalid_votes" integer,    -- недействителни гласове
  "candidate_6_id" integer,               -- № П/К/ИК;
  "candidate_6_valid_votes" integer,      -- действителни гласове
  "candidate_6_valid_machine_b" integer,  -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_6_valid_machine_m" integer,  -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_6_invalid_votes" integer,    -- недействителни гласове
  "candidate_7_id" integer,               -- № П/К/ИК;
  "candidate_7_valid_votes" integer,      -- действителни гласове
  "candidate_7_valid_machine_b" integer,  -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_7_valid_machine_m" integer,  -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_7_invalid_votes" integer,    -- недействителни гласове
  "candidate_8_id" integer,               -- № П/К/ИК;
  "candidate_8_valid_votes" integer,      -- действителни гласове
  "candidate_8_valid_machine_b" integer,  -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_8_valid_machine_m" integer,  -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_8_invalid_votes" integer,    -- недействителни гласове
  "candidate_9_id" integer,               -- № П/К/ИК;
  "candidate_9_valid_votes" integer,      -- действителни гласове
  "candidate_9_valid_machine_b" integer,  -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_9_valid_machine_m" integer,  -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_9_invalid_votes" integer,    -- недействителни гласове
  "candidate_10_id" integer,              -- № П/К/ИК;
  "candidate_10_valid_votes" integer,     -- действителни гласове
  "candidate_10_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_10_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_10_invalid_votes" integer,   -- недействителни гласове
  "candidate_11_id" integer,              -- № П/К/ИК;
  "candidate_11_valid_votes" integer,     -- действителни гласове
  "candidate_11_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_11_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_11_invalid_votes" integer,   -- недействителни гласове
  "candidate_12_id" integer,              -- № П/К/ИК;
  "candidate_12_valid_votes" integer,     -- действителни гласове
  "candidate_12_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_12_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_12_invalid_votes" integer,   -- недействителни гласове
  "candidate_13_id" integer,              -- № П/К/ИК;
  "candidate_13_valid_votes" integer,     -- действителни гласове
  "candidate_13_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_13_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_13_invalid_votes" integer,   -- недействителни гласове
  "candidate_14_id" integer,              -- № П/К/ИК;
  "candidate_14_valid_votes" integer,     -- действителни гласове
  "candidate_14_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_14_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_14_invalid_votes" integer,   -- недействителни гласове
  "candidate_15_id" integer,              -- № П/К/ИК;
  "candidate_15_valid_votes" integer,     -- действителни гласове
  "candidate_15_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_15_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_15_invalid_votes" integer,   -- недействителни гласове
  "candidate_16_id" integer,              -- № П/К/ИК;
  "candidate_16_valid_votes" integer,     -- действителни гласове
  "candidate_16_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_16_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_16_invalid_votes" integer,   -- недействителни гласове
  "candidate_17_id" integer,              -- № П/К/ИК;
  "candidate_17_valid_votes" integer,     -- действителни гласове
  "candidate_17_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_17_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_17_invalid_votes" integer,   -- недействителни гласове
  "candidate_18_id" integer,              -- № П/К/ИК;
  "candidate_18_valid_votes" integer,     -- действителни гласове
  "candidate_18_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_18_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_18_invalid_votes" integer,   -- недействителни гласове
  "candidate_19_id" integer,              -- № П/К/ИК;
  "candidate_19_valid_votes" integer,     -- действителни гласове
  "candidate_19_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_19_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_19_invalid_votes" integer,   -- недействителни гласове
  "candidate_20_id" integer,              -- № П/К/ИК;
  "candidate_20_valid_votes" integer,     -- действителни гласове
  "candidate_20_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_20_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_20_invalid_votes" integer,   -- недействителни гласове
  "candidate_21_id" integer,              -- № П/К/ИК;
  "candidate_21_valid_votes" integer,     -- действителни гласове
  "candidate_21_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_21_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_21_invalid_votes" integer    -- недействителни гласове
);

CREATE TABLE president_2016_2_votes(
  "section_id" text,                     -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" integer,                 -- 2) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "candidate_1_id" integer,              -- № П/К/ИК;
  "candidate_1_valid_votes" integer,     -- действителни гласове
  "candidate_1_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_1_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_1_invalid_votes" integer,   -- недействителни гласове
  "candidate_2_id" integer,              -- № П/К/ИК;
  "candidate_2_valid_votes" integer,     -- действителни гласове
  "candidate_2_valid_machine_b" integer, -- действителни гласове (Б) от протоколите с машинно гласуване
  "candidate_2_valid_machine_m" integer, -- действителни гласове (М) от протоколите с машинно гласуване
  "candidate_2_invalid_votes" integer    -- недействителни гласове
);

CREATE TABLE european_2019_votes(
  "section_id" text,         -- 1) Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "district_id" integer,     -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,       -- № П/К/ИК
  "party1_valid" integer,    -- Действителни гласове
  "party1_invalid" integer,  -- Недействителни гласове
  "party2_id" integer,       -- № П/К/ИК
  "party2_valid" integer,    -- Действителни гласове
  "party2_invalid" integer,  -- Недействителни гласове
  "party3_id" integer,       -- № П/К/ИК
  "party3_valid" integer,    -- Действителни гласове
  "party3_invalid" integer,  -- Недействителни гласове
  "party4_id" integer,       -- № П/К/ИК
  "party4_valid" integer,    -- Действителни гласове
  "party4_invalid" integer,  -- Недействителни гласове
  "party5_id" integer,       -- № П/К/ИК
  "party5_valid" integer,    -- Действителни гласове
  "party5_invalid" integer,  -- Недействителни гласове
  "party6_id" integer,       -- № П/К/ИК
  "party6_valid" integer,    -- Действителни гласове
  "party6_invalid" integer,  -- Недействителни гласове
  "party7_id" integer,       -- № П/К/ИК
  "party7_valid" integer,    -- Действителни гласове
  "party7_invalid" integer,  -- Недействителни гласове
  "party8_id" integer,       -- № П/К/ИК
  "party8_valid" integer,    -- Действителни гласове
  "party8_invalid" integer,  -- Недействителни гласове
  "party9_id" integer,       -- № П/К/ИК
  "party9_valid" integer,    -- Действителни гласове
  "party9_invalid" integer,  -- Недействителни гласове
  "party10_id" integer,      -- № П/К/ИК
  "party10_valid" integer,   -- Действителни гласове
  "party10_invalid" integer, --  Недействителни гласове
  "party11_id" integer,      --  № П/К/ИК
  "party11_valid" integer,   -- Действителни гласове
  "party11_invalid" integer, --  Недействителни гласове
  "party12_id" integer,      --  № П/К/ИК
  "party12_valid" integer,   -- Действителни гласове
  "party12_invalid" integer, --  Недействителни гласове
  "party13_id" integer,      --  № П/К/ИК
  "party13_valid" integer,   -- Действителни гласове
  "party13_invalid" integer, --  Недействителни гласове
  "party14_id" integer,      --  № П/К/ИК
  "party14_valid" integer,   -- Действителни гласове
  "party14_invalid" integer, --  Недействителни гласове
  "party15_id" integer,      --  № П/К/ИК
  "party15_valid" integer,   -- Действителни гласове
  "party15_invalid" integer, --  Недействителни гласове
  "party16_id" integer,      --  № П/К/ИК
  "party16_valid" integer,   -- Действителни гласове
  "party16_invalid" integer, --  Недействителни гласове
  "party17_id" integer,      --  № П/К/ИК
  "party17_valid" integer,   -- Действителни гласове
  "party17_invalid" integer, --  Недействителни гласове
  "party18_id" integer,      --  № П/К/ИК
  "party18_valid" integer,   -- Действителни гласове
  "party18_invalid" integer, --  Недействителни гласове
  "party19_id" integer,      --  № П/К/ИК
  "party19_valid" integer,   -- Действителни гласове
  "party19_invalid" integer, --  Недействителни гласове
  "party20_id" integer,      --  № П/К/ИК
  "party20_valid" integer,   -- Действителни гласове
  "party20_invalid" integer, --  Недействителни гласове
  "party21_id" integer,      --  № П/К/ИК
  "party21_valid" integer,   -- Действителни гласове
  "party21_invalid" integer, --  Недействителни гласове
  "party22_id" integer,      --  № П/К/ИК
  "party22_valid" integer,   -- Действителни гласове
  "party22_invalid" integer, --  Недействителни гласове
  "party23_id" integer,      --  № П/К/ИК
  "party23_valid" integer,   -- Действителни гласове
  "party23_invalid" integer, --  Недействителни гласове
  "party24_id" integer,      --  № П/К/ИК
  "party24_valid" integer,   -- Действителни гласове
  "party24_invalid" integer, --  Недействителни гласове
  "party25_id" integer,      --  № П/К/ИК
  "party25_valid" integer,   -- Действителни гласове
  "party25_invalid" integer, --  Недействителни гласове
  "party26_id" integer,      --  № П/К/ИК
  "party26_valid" integer,   -- Действителни гласове
  "party26_invalid" integer, --  Недействителни гласове
  "party27_id" integer,      --  № П/К/ИК
  "party27_valid" integer,   -- Действителни гласове
  "party27_invalid" integer  --  Недействителни гласове
);

CREATE TABLE european_2019_votes_mv(
  "section_id" text,         -- 1) Пълен код на секция (код на район(2), община(2), адм. район(2), секция(3))
  "district_id" integer,     -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,       -- № П/К/ИК
  "party1_valid" integer,    -- Действителни гласове
  "party1_invalid" integer,  -- Недействителни гласове
  "party2_id" integer,       -- № П/К/ИК
  "party2_valid" integer,    -- Действителни гласове
  "party2_invalid" integer,  -- Недействителни гласове
  "party3_id" integer,       -- № П/К/ИК
  "party3_valid" integer,    -- Действителни гласове
  "party3_invalid" integer,  -- Недействителни гласове
  "party4_id" integer,       -- № П/К/ИК
  "party4_valid" integer,    -- Действителни гласове
  "party4_invalid" integer,  -- Недействителни гласове
  "party5_id" integer,       -- № П/К/ИК
  "party5_valid" integer,    -- Действителни гласове
  "party5_invalid" integer,  -- Недействителни гласове
  "party6_id" integer,       -- № П/К/ИК
  "party6_valid" integer,    -- Действителни гласове
  "party6_invalid" integer,  -- Недействителни гласове
  "party7_id" integer,       -- № П/К/ИК
  "party7_valid" integer,    -- Действителни гласове
  "party7_invalid" integer,  -- Недействителни гласове
  "party8_id" integer,       -- № П/К/ИК
  "party8_valid" integer,    -- Действителни гласове
  "party8_invalid" integer,  -- Недействителни гласове
  "party9_id" integer,       -- № П/К/ИК
  "party9_valid" integer,    -- Действителни гласове
  "party9_invalid" integer,  -- Недействителни гласове
  "party10_id" integer,      -- № П/К/ИК
  "party10_valid" integer,   -- Действителни гласове
  "party10_invalid" integer, --  Недействителни гласове
  "party11_id" integer,      --  № П/К/ИК
  "party11_valid" integer,   -- Действителни гласове
  "party11_invalid" integer, --  Недействителни гласове
  "party12_id" integer,      --  № П/К/ИК
  "party12_valid" integer,   -- Действителни гласове
  "party12_invalid" integer, --  Недействителни гласове
  "party13_id" integer,      --  № П/К/ИК
  "party13_valid" integer,   -- Действителни гласове
  "party13_invalid" integer, --  Недействителни гласове
  "party14_id" integer,      --  № П/К/ИК
  "party14_valid" integer,   -- Действителни гласове
  "party14_invalid" integer, --  Недействителни гласове
  "party15_id" integer,      --  № П/К/ИК
  "party15_valid" integer,   -- Действителни гласове
  "party15_invalid" integer, --  Недействителни гласове
  "party16_id" integer,      --  № П/К/ИК
  "party16_valid" integer,   -- Действителни гласове
  "party16_invalid" integer, --  Недействителни гласове
  "party17_id" integer,      --  № П/К/ИК
  "party17_valid" integer,   -- Действителни гласове
  "party17_invalid" integer, --  Недействителни гласове
  "party18_id" integer,      --  № П/К/ИК
  "party18_valid" integer,   -- Действителни гласове
  "party18_invalid" integer, --  Недействителни гласове
  "party19_id" integer,      --  № П/К/ИК
  "party19_valid" integer,   -- Действителни гласове
  "party19_invalid" integer, --  Недействителни гласове
  "party20_id" integer,      --  № П/К/ИК
  "party20_valid" integer,   -- Действителни гласове
  "party20_invalid" integer, --  Недействителни гласове
  "party21_id" integer,      --  № П/К/ИК
  "party21_valid" integer,   -- Действителни гласове
  "party21_invalid" integer, --  Недействителни гласове
  "party22_id" integer,      --  № П/К/ИК
  "party22_valid" integer,   -- Действителни гласове
  "party22_invalid" integer, --  Недействителни гласове
  "party23_id" integer,      --  № П/К/ИК
  "party23_valid" integer,   -- Действителни гласове
  "party23_invalid" integer, --  Недействителни гласове
  "party24_id" integer,      --  № П/К/ИК
  "party24_valid" integer,   -- Действителни гласове
  "party24_invalid" integer, --  Недействителни гласове
  "party25_id" integer,      --  № П/К/ИК
  "party25_valid" integer,   -- Действителни гласове
  "party25_invalid" integer, --  Недействителни гласове
  "party26_id" integer,      --  № П/К/ИК
  "party26_valid" integer,   -- Действителни гласове
  "party26_invalid" integer, --  Недействителни гласове
  "party27_id" integer,      --  № П/К/ИК
  "party27_valid" integer,   -- Действителни гласове
  "party27_invalid" integer  --  Недействителни гласове
);

CREATE TABLE european_2014_votes(
  "section_id" text,      -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "party1_valid" integer,    -- 2) Гласове(действителни) за:  1. БЪЛГАРСКАТА ЛЕВИЦА
  "party1_invalid" integer,  -- 2) Гласове(недействителни) за:  1. БЪЛГАРСКАТА ЛЕВИЦА
  "party2_valid" integer,    -- 3) Гласове(действителни) за:  2. ПП ГЛАС НАРОДЕН
  "party2_invalid" integer,  -- 3) Гласове(недействителни) за:  2. ПП ГЛАС НАРОДЕН
  "party3_valid" integer,    -- 4) Гласове(действителни) за:  3. ПАРТИЯ НА ЗЕЛЕНИТЕ
  "party3_invalid" integer,  -- 4) Гласове(недействителни) за:  3. ПАРТИЯ НА ЗЕЛЕНИТЕ
  "party4_valid" integer,    -- 5) Гласове(действителни) за:  4. ПП ЗЕЛЕНА ПАРТИЯ
  "party4_invalid" integer,  -- 5) Гласове(недействителни) за:  4. ПП ЗЕЛЕНА ПАРТИЯ
  "party5_valid" integer,    -- 6) Гласове(действителни) за:  6. Християндемократическа партия на България
  "party5_invalid" integer,  -- 6) Гласове(недействителни) за:  6. Християндемократическа партия на България
  "party6_valid" integer,    -- 7) Гласове(действителни) за:  8. БЪЛГАРСКА НАЦИОНАЛНО-ПАТРИОТИЧНА ПАРТИЯ
  "party6_invalid" integer,  -- 7) Гласове(недействителни) за:  8. БЪЛГАРСКА НАЦИОНАЛНО-ПАТРИОТИЧНА ПАРТИЯ
  "party7_valid" integer,    -- 8) Гласове(действителни) за:  9. СИНЬО ЕДИНСТВО
  "party7_invalid" integer,  -- 8) Гласове(недействителни) за:  9. СИНЬО ЕДИНСТВО
  "party8_valid" integer,    -- 9) Гласове(действителни) за: 10. РЕФОРМАТОРСКИ БЛОК
  "party8_invalid" integer,  -- 9) Гласове(недействителни) за: 10. РЕФОРМАТОРСКИ БЛОК
  "party9_valid" integer,    -- 10) Гласове(действителни) за: 11. ПП НАЦИОНАЛЕН ФРОНТ ЗА СПАСЕНИЕ НА БЪЛГАРИЯ(ПП НФСБ)
  "party9_invalid" integer,  -- 10) Гласове(недействителни) за: 11. ПП НАЦИОНАЛЕН ФРОНТ ЗА СПАСЕНИЕ НА БЪЛГАРИЯ(ПП НФСБ)
  "party10_valid" integer,   -- 11) Гласове(действителни) за: 12. ПП БАСТА
  "party10_invalid" integer, --  11) Гласове(недействителни) за: 12. ПП БАСТА
  "party11_valid" integer,   -- 12) Гласове(действителни) за: 13. АБВ - АЛТЕРНАТИВА ЗА БЪЛГАРСКО ВЪЗРАЖДАНЕ
  "party11_invalid" integer, --  12) Гласове(недействителни) за: 13. АБВ - АЛТЕРНАТИВА ЗА БЪЛГАРСКО ВЪЗРАЖДАНЕ
  "party12_valid" integer,   -- 13) Гласове(действителни) за: 15. КОАЛИЦИЯ ЗА БЪЛГАРИЯ
  "party12_invalid" integer, --  13) Гласове(недействителни) за: 15. КОАЛИЦИЯ ЗА БЪЛГАРИЯ
  "party13_valid" integer,   -- 14) Гласове(действителни) за: 16. Инициативен комитет
  "party13_invalid" integer, --  14) Гласове(недействителни) за: 16. Инициативен комитет
  "party14_valid" integer,   -- 15) Гласове(действителни) за: 17. Коалиция КОД - Антония Първанова, Илиана Раева - ОБ, НДСВ, СДП
  "party14_invalid" integer, --  15) Гласове(недействителни) за: 17. Коалиция КОД - Антония Първанова, Илиана Раева - ОБ, НДСВ, СДП
  "party15_valid" integer,   -- 16) Гласове(действителни) за: 18. ПП ГЕРБ
  "party15_invalid" integer, --  16) Гласове(недействителни) за: 18. ПП ГЕРБ
  "party16_valid" integer,   -- 17) Гласове(действителни) за: 19. Инициативен комитет
  "party16_invalid" integer, --  17) Гласове(недействителни) за: 19. Инициативен комитет
  "party17_valid" integer,   -- 18) Гласове(действителни) за: 20. ПП АТАКА
  "party17_invalid" integer, --  18) Гласове(недействителни) за: 20. ПП АТАКА
  "party18_valid" integer,   -- 19) Гласове(действителни) за: 21. СЪЮЗ НА КОМУНИСТИТЕ В БЪЛГАРИЯ
  "party18_invalid" integer, --  19) Гласове(недействителни) за: 21. СЪЮЗ НА КОМУНИСТИТЕ В БЪЛГАРИЯ
  "party19_valid" integer,   -- 20) Гласове(действителни) за: 25. БКП
  "party19_invalid" integer, --  20) Гласове(недействителни) за: 25. БКП
  "party20_valid" integer,   -- 21) Гласове(действителни) за: 26. Инициативен комитет
  "party20_invalid" integer, --  21) Гласове(недействителни) за: 26. Инициативен комитет
  "party21_valid" integer,   -- 22) Гласове(действителни) за: 27. ЗЕЛЕНИТЕ
  "party21_invalid" integer, --  22) Гласове(недействителни) за: 27. ЗЕЛЕНИТЕ
  "party22_valid" integer,   -- 23) Гласове(действителни) за: 28. БЪЛГАРИЯ БЕЗ ЦЕНЗУРА,ВМРО,ЗНС,ГЕРГЬОВДЕН
  "party22_invalid" integer, --  23) Гласове(недействителни) за: 28. БЪЛГАРИЯ БЕЗ ЦЕНЗУРА,ВМРО,ЗНС,ГЕРГЬОВДЕН
  "party23_valid" integer,   -- 24) Гласове(действителни) за: 29. ДПС - Движение за права и свободи
  "party23_invalid" integer, --  24) Гласове(недействителни) за: 29. ДПС - Движение за права и свободи
  "party24_valid" integer,   -- 25) Гласове(действителни) за: 30. Коалиция НАЦИОНАЛИСТИЧЕСКИ ПАРТИИ НА БЪЛГАРИЯ (НПБ)
  "party24_invalid" integer, --  25) Гласове(недействителни) за: 30. Коалиция НАЦИОНАЛИСТИЧЕСКИ ПАРТИИ НА БЪЛГАРИЯ (НПБ)
  "" text
);

CREATE TABLE mayor_2019_1_votes(
  "section_id" text,                 -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,                -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,               -- № П/К/ИК
  "party1_valid_ballots" integer,    -- действителни гласове
  "party1_invalid_ballots" integer,  -- недействителни гласове
  "party2_id" integer,               -- № П/К/ИК
  "party2_valid_ballots" integer,    -- действителни гласове
  "party2_invalid_ballots" integer,  -- недействителни гласове
  "party3_id" integer,               -- № П/К/ИК
  "party3_valid_ballots" integer,    -- действителни гласове
  "party3_invalid_ballots" integer,  -- недействителни гласове
  "party4_id" integer,               -- № П/К/ИК
  "party4_valid_ballots" integer,    -- действителни гласове
  "party4_invalid_ballots" integer,  -- недействителни гласове
  "party5_id" integer,               -- № П/К/ИК
  "party5_valid_ballots" integer,    -- действителни гласове
  "party5_invalid_ballots" integer,  -- недействителни гласове
  "party6_id" integer,               -- № П/К/ИК
  "party6_valid_ballots" integer,    -- действителни гласове
  "party6_invalid_ballots" integer,  -- недействителни гласове
  "party7_id" integer,               -- № П/К/ИК
  "party7_valid_ballots" integer,    -- действителни гласове
  "party7_invalid_ballots" integer,  -- недействителни гласове
  "party8_id" integer,               -- № П/К/ИК
  "party8_valid_ballots" integer,    -- действителни гласове
  "party8_invalid_ballots" integer,  -- недействителни гласове
  "party9_id" integer,               -- № П/К/ИК
  "party9_valid_ballots" integer,    -- действителни гласове
  "party9_invalid_ballots" integer,  -- недействителни гласове
  "party10_id" integer,               -- № П/К/ИК
  "party10_valid_ballots" integer,    -- действителни гласове
  "party10_invalid_ballots" integer   -- недействителни гласове
);

CREATE TABLE mayor_municipality_2019_1_votes(
  "section_id" text,                 -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,                -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,               -- № П/К/ИК
  "party1_valid_ballots" integer,    -- действителни гласове
  "party1_invalid_ballots" integer,  -- недействителни гласове
  "party2_id" integer,               -- № П/К/ИК
  "party2_valid_ballots" integer,    -- действителни гласове
  "party2_invalid_ballots" integer,  -- недействителни гласове
  "party3_id" integer,               -- № П/К/ИК
  "party3_valid_ballots" integer,    -- действителни гласове
  "party3_invalid_ballots" integer,  -- недействителни гласове
  "party4_id" integer,               -- № П/К/ИК
  "party4_valid_ballots" integer,    -- действителни гласове
  "party4_invalid_ballots" integer,  -- недействителни гласове
  "party5_id" integer,               -- № П/К/ИК
  "party5_valid_ballots" integer,    -- действителни гласове
  "party5_invalid_ballots" integer,  -- недействителни гласове
  "party6_id" integer,               -- № П/К/ИК
  "party6_valid_ballots" integer,    -- действителни гласове
  "party6_invalid_ballots" integer,  -- недействителни гласове
  "party7_id" integer,               -- № П/К/ИК
  "party7_valid_ballots" integer,    -- действителни гласове
  "party7_invalid_ballots" integer,  -- недействителни гласове
  "party8_id" integer,               -- № П/К/ИК
  "party8_valid_ballots" integer,    -- действителни гласове
  "party8_invalid_ballots" integer,  -- недействителни гласове
  "party9_id" integer,               -- № П/К/ИК
  "party9_valid_ballots" integer,    -- действителни гласове
  "party9_invalid_ballots" integer,  -- недействителни гласове
  "party10_id" integer,              -- № П/К/ИК
  "party10_valid_ballots" integer,   -- действителни гласове
  "party10_invalid_ballots" integer, -- недействителни гласове
  "party11_id" integer,              -- № П/К/ИК
  "party11_valid_ballots" integer,   -- действителни гласове
  "party11_invalid_ballots" integer, -- недействителни гласове
  "party12_id" integer,              -- № П/К/ИК
  "party12_valid_ballots" integer,   -- действителни гласове
  "party12_invalid_ballots" integer, -- недействителни гласове
  "party13_id" integer,              -- № П/К/ИК
  "party13_valid_ballots" integer,   -- действителни гласове
  "party13_invalid_ballots" integer, -- недействителни гласове
  "party14_id" integer,              -- № П/К/ИК
  "party14_valid_ballots" integer,   -- действителни гласове
  "party14_invalid_ballots" integer, -- недействителни гласове
  "party15_id" integer,              -- № П/К/ИК
  "party15_valid_ballots" integer,   -- действителни гласове
  "party15_invalid_ballots" integer, -- недействителни гласове
  "party16_id" integer,              -- № П/К/ИК
  "party16_valid_ballots" integer,   -- действителни гласове
  "party16_invalid_ballots" integer, -- недействителни гласове
  "party17_id" integer,              -- № П/К/ИК
  "party17_valid_ballots" integer,   -- действителни гласове
  "party17_invalid_ballots" integer, -- недействителни гласове
  "party18_id" integer,              -- № П/К/ИК
  "party18_valid_ballots" integer,   -- действителни гласове
  "party18_invalid_ballots" integer, -- недействителни гласове
  "party19_id" integer,              -- № П/К/ИК
  "party19_valid_ballots" integer,   -- действителни гласове
  "party19_invalid_ballots" integer, -- недействителни гласове
  "party20_id" integer,              -- № П/К/ИК
  "party20_valid_ballots" integer,   -- действителни гласове
  "party20_invalid_ballots" integer  -- недействителни гласове
);

CREATE TABLE mayor_region_2019_1_votes(
  "section_id" text,                 -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,                -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,               -- № П/К/ИК
  "party1_valid_ballots" integer,    -- действителни гласове
  "party1_invalid_ballots" integer,  -- недействителни гласове
  "party2_id" integer,               -- № П/К/ИК
  "party2_valid_ballots" integer,    -- действителни гласове
  "party2_invalid_ballots" integer,  -- недействителни гласове
  "party3_id" integer,               -- № П/К/ИК
  "party3_valid_ballots" integer,    -- действителни гласове
  "party3_invalid_ballots" integer,  -- недействителни гласове
  "party4_id" integer,               -- № П/К/ИК
  "party4_valid_ballots" integer,    -- действителни гласове
  "party4_invalid_ballots" integer,  -- недействителни гласове
  "party5_id" integer,               -- № П/К/ИК
  "party5_valid_ballots" integer,    -- действителни гласове
  "party5_invalid_ballots" integer,  -- недействителни гласове
  "party6_id" integer,               -- № П/К/ИК
  "party6_valid_ballots" integer,    -- действителни гласове
  "party6_invalid_ballots" integer,  -- недействителни гласове
  "party7_id" integer,               -- № П/К/ИК
  "party7_valid_ballots" integer,    -- действителни гласове
  "party7_invalid_ballots" integer,  -- недействителни гласове
  "party8_id" integer,               -- № П/К/ИК
  "party8_valid_ballots" integer,    -- действителни гласове
  "party8_invalid_ballots" integer,  -- недействителни гласове
  "party9_id" integer,               -- № П/К/ИК
  "party9_valid_ballots" integer,    -- действителни гласове
  "party9_invalid_ballots" integer,  -- недействителни гласове
  "party10_id" integer,              -- № П/К/ИК
  "party10_valid_ballots" integer,   -- действителни гласове
  "party10_invalid_ballots" integer, -- недействителни гласове
  "party11_id" integer,              -- № П/К/ИК
  "party11_valid_ballots" integer,   -- действителни гласове
  "party11_invalid_ballots" integer, -- недействителни гласове
  "party12_id" integer,              -- № П/К/ИК
  "party12_valid_ballots" integer,   -- действителни гласове
  "party12_invalid_ballots" integer, -- недействителни гласове
  "party13_id" integer,              -- № П/К/ИК
  "party13_valid_ballots" integer,   -- действителни гласове
  "party13_invalid_ballots" integer, -- недействителни гласове
  "party14_id" integer,              -- № П/К/ИК
  "party14_valid_ballots" integer,   -- действителни гласове
  "party14_invalid_ballots" integer, -- недействителни гласове
  "party15_id" integer,              -- № П/К/ИК
  "party15_valid_ballots" integer,   -- действителни гласове
  "party15_invalid_ballots" integer, -- недействителни гласове
  "party16_id" integer,              -- № П/К/ИК
  "party16_valid_ballots" integer,   -- действителни гласове
  "party16_invalid_ballots" integer, -- недействителни гласове
  "party17_id" integer,              -- № П/К/ИК
  "party17_valid_ballots" integer,   -- действителни гласове
  "party17_invalid_ballots" integer, -- недействителни гласове
  "party18_id" integer,              -- № П/К/ИК
  "party18_valid_ballots" integer,   -- действителни гласове
  "party18_invalid_ballots" integer  -- недействителни гласове
);

CREATE TABLE council_region_2019_1_votes(
  "section_id" text,                -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,                -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,               -- № П/К/ИК
  "party1_valid_ballots" integer,    -- действителни гласове
  "party1_invalid_ballots" integer,  -- недействителни гласове
  "party2_id" integer,               -- № П/К/ИК
  "party2_valid_ballots" integer,    -- действителни гласове
  "party2_invalid_ballots" integer,  -- недействителни гласове
  "party3_id" integer,               -- № П/К/ИК
  "party3_valid_ballots" integer,    -- действителни гласове
  "party3_invalid_ballots" integer,  -- недействителни гласове
  "party4_id" integer,               -- № П/К/ИК
  "party4_valid_ballots" integer,    -- действителни гласове
  "party4_invalid_ballots" integer,  -- недействителни гласове
  "party5_id" integer,               -- № П/К/ИК
  "party5_valid_ballots" integer,    -- действителни гласове
  "party5_invalid_ballots" integer,  -- недействителни гласове
  "party6_id" integer,               -- № П/К/ИК
  "party6_valid_ballots" integer,    -- действителни гласове
  "party6_invalid_ballots" integer,  -- недействителни гласове
  "party7_id" integer,               -- № П/К/ИК
  "party7_valid_ballots" integer,    -- действителни гласове
  "party7_invalid_ballots" integer,  -- недействителни гласове
  "party8_id" integer,               -- № П/К/ИК
  "party8_valid_ballots" integer,    -- действителни гласове
  "party8_invalid_ballots" integer,  -- недействителни гласове
  "party9_id" integer,               -- № П/К/ИК
  "party9_valid_ballots" integer,    -- действителни гласове
  "party9_invalid_ballots" integer,  -- недействителни гласове
  "party10_id" integer,              --  № П/К/ИК
  "party10_valid_ballots" integer,   -- действителни гласове
  "party10_invalid_ballots" integer, -- недействителни гласове
  "party11_id" integer,              --  № П/К/ИК
  "party11_valid_ballots" integer,   -- действителни гласове
  "party11_invalid_ballots" integer, -- недействителни гласове
  "party12_id" integer,              --  № П/К/ИК
  "party12_valid_ballots" integer,   -- действителни гласове
  "party12_invalid_ballots" integer, -- недействителни гласове
  "party13_id" integer,              --  № П/К/ИК
  "party13_valid_ballots" integer,   -- действителни гласове
  "party13_invalid_ballots" integer, -- недействителни гласове
  "party14_id" integer,              --  № П/К/ИК
  "party14_valid_ballots" integer,   -- действителни гласове
  "party14_invalid_ballots" integer, -- недействителни гласове
  "party15_id" integer,              --  № П/К/ИК
  "party15_valid_ballots" integer,   -- действителни гласове
  "party15_invalid_ballots" integer, -- недействителни гласове
  "party16_id" integer,              --  № П/К/ИК
  "party16_valid_ballots" integer,   -- действителни гласове
  "party16_invalid_ballots" integer, -- недействителни гласове
  "party17_id" integer,              --  № П/К/ИК
  "party17_valid_ballots" integer,   -- действителни гласове
  "party17_invalid_ballots" integer, -- недействителни гласове
  "party18_id" integer,              --  № П/К/ИК
  "party18_valid_ballots" integer,   -- действителни гласове
  "party18_invalid_ballots" integer, -- недействителни гласове
  "party19_id" integer,              --  № П/К/ИК
  "party19_valid_ballots" integer,   -- действителни гласове
  "party19_invalid_ballots" integer, -- недействителни гласове
  "party20_id" integer,              --  № П/К/ИК
  "party20_valid_ballots" integer,   -- действителни гласове
  "party20_invalid_ballots" integer, -- недействителни гласове
  "party21_id" integer,              --  № П/К/ИК
  "party21_valid_ballots" integer,   -- действителни гласове
  "party21_invalid_ballots" integer, -- недействителни гласове
  "party22_id" integer,              --  № П/К/ИК
  "party22_valid_ballots" integer,   -- действителни гласове
  "party22_invalid_ballots" integer, -- недействителни гласове
  "party23_id" integer,              --  № П/К/ИК
  "party23_valid_ballots" integer,   -- действителни гласове
  "party23_invalid_ballots" integer, -- недействителни гласове
  "party24_id" integer,              --  № П/К/ИК
  "party24_valid_ballots" integer,   -- действителни гласове
  "party24_invalid_ballots" integer, -- недействителни гласове
  "party25_id" integer,              --  № П/К/ИК
  "party25_valid_ballots" integer,   -- действителни гласове
  "party25_invalid_ballots" integer, -- недействителни гласове
  "party26_id" integer,              --  № П/К/ИК
  "party26_valid_ballots" integer,   -- действителни гласове
  "party26_invalid_ballots" integer, -- недействителни гласове
  "party27_id" integer,              --  № П/К/ИК
  "party27_valid_ballots" integer,   -- действителни гласове
  "party27_invalid_ballots" integer, -- недействителни гласове
  "party28_id" integer,              --  № П/К/ИК
  "party28_valid_ballots" integer,   -- действителни гласове
  "party28_invalid_ballots" integer, -- недействителни гласове
  "party29_id" integer,              --  № П/К/ИК
  "party29_valid_ballots" integer,   -- действителни гласове
  "party29_invalid_ballots" integer, -- недействителни гласове
  "party30_id" integer,              --  № П/К/ИК
  "party30_valid_ballots" integer,   -- действителни гласове
  "party30_invalid_ballots" integer, -- недействителни гласове
  "party31_id" integer,              --  № П/К/ИК
  "party31_valid_ballots" integer,   -- действителни гласове
  "party31_invalid_ballots" integer, -- недействителни гласове
  "party32_id" integer,              --  № П/К/ИК
  "party32_valid_ballots" integer,   -- действителни гласове
  "party32_invalid_ballots" integer, -- недействителни гласове
  "party33_id" integer,              --  № П/К/ИК
  "party33_valid_ballots" integer,   -- действителни гласове
  "party33_invalid_ballots" integer, -- недействителни гласове
  "party34_id" integer,              --  № П/К/ИК
  "party34_valid_ballots" integer,   -- действителни гласове
  "party34_invalid_ballots" integer  -- недействителни гласове
);

CREATE TABLE mayor_2019_2_votes(
  "section_id" text,                -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,               -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,              -- № П/К/ИК
  "party1_valid_ballots" integer,   -- действителни гласове
  "party1_invalid_ballots" integer, -- недействителни гласове
  "party2_id" integer,               -- № П/К/ИК
  "party2_valid_ballots" integer,   -- действителни гласове
  "party2_invalid_ballots" integer, -- недействителни гласове
  "party3_id" integer,               -- № П/К/ИК
  "party3_valid_ballots" integer,   -- действителни гласове
  "party3_invalid_ballots" integer  -- недействителни гласове
);

CREATE TABLE mayor_municipality_2019_2_votes(
  "section_id" text,                -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,               -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,              -- № П/К/ИК
  "party1_valid_ballots" integer,   -- действителни гласове
  "party1_invalid_ballots" integer, -- недействителни гласове
  "party2_id" integer,              -- № П/К/ИК
  "party2_valid_ballots" integer,   -- действителни гласове
  "party2_invalid_ballots" integer  -- недействителни гласове
);

CREATE TABLE mayor_region_2019_2_votes(
  "section_id" text,                -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,                -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,              -- № П/К/ИК
  "party1_valid_ballots" integer,   -- действителни гласове
  "party1_invalid_ballots" integer, -- недействителни гласове
  "party2_id" integer,              -- № П/К/ИК
  "party2_valid_ballots" integer,   -- действителни гласове
  "party2_invalid_ballots" integer  -- недействителни гласове
);

CREATE TABLE mayor_2015_1_votes(
  "section_id" text,                 -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,                -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,               -- № П/К/ИК
  "party1_valid_ballots" integer,    -- действителни гласове
  "party1_invalid_ballots" integer,  -- недействителни гласове
  "party2_id" integer,               -- № П/К/ИК
  "party2_valid_ballots" integer,    -- действителни гласове
  "party2_invalid_ballots" integer,  -- недействителни гласове
  "party3_id" integer,               -- № П/К/ИК
  "party3_valid_ballots" integer,    -- действителни гласове
  "party3_invalid_ballots" integer,  -- недействителни гласове
  "party4_id" integer,               -- № П/К/ИК
  "party4_valid_ballots" integer,    -- действителни гласове
  "party4_invalid_ballots" integer,  -- недействителни гласове
  "party5_id" integer,               -- № П/К/ИК
  "party5_valid_ballots" integer,    -- действителни гласове
  "party5_invalid_ballots" integer,  -- недействителни гласове
  "party6_id" integer,               -- № П/К/ИК
  "party6_valid_ballots" integer,    -- действителни гласове
  "party6_invalid_ballots" integer,  -- недействителни гласове
  "party7_id" integer,               -- № П/К/ИК
  "party7_valid_ballots" integer,    -- действителни гласове
  "party7_invalid_ballots" integer,  -- недействителни гласове
  "party8_id" integer,               -- № П/К/ИК
  "party8_valid_ballots" integer,    -- действителни гласове
  "party8_invalid_ballots" integer,  -- недействителни гласове
  "party9_id" integer,               -- № П/К/ИК
  "party9_valid_ballots" integer,    -- действителни гласове
  "party9_invalid_ballots" integer,  -- недействителни гласове
  "party10_id" integer,              -- № П/К/ИК
  "party10_valid_ballots" integer,   -- действителни гласове
  "party10_invalid_ballots" integer, -- недействителни гласове
  "party11_id" integer,              -- № П/К/ИК
  "party11_valid_ballots" integer,   -- действителни гласове
  "party11_invalid_ballots" integer, -- недействителни гласове
  "party12_id" integer,              -- № П/К/ИК
  "party12_valid_ballots" integer,   -- действителни гласове
  "party12_invalid_ballots" integer -- недействителни гласове
);



CREATE TABLE mayor_municipality_2015_1_votes(
  "section_id" text,                 -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,                -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,               -- № П/К/ИК
  "party1_valid_ballots" integer,    -- действителни гласове
  "party1_invalid_ballots" integer,  -- недействителни гласове
  "party2_id" integer,               -- № П/К/ИК
  "party2_valid_ballots" integer,    -- действителни гласове
  "party2_invalid_ballots" integer,  -- недействителни гласове
  "party3_id" integer,               -- № П/К/ИК
  "party3_valid_ballots" integer,    -- действителни гласове
  "party3_invalid_ballots" integer,  -- недействителни гласове
  "party4_id" integer,               -- № П/К/ИК
  "party4_valid_ballots" integer,    -- действителни гласове
  "party4_invalid_ballots" integer,  -- недействителни гласове
  "party5_id" integer,               -- № П/К/ИК
  "party5_valid_ballots" integer,    -- действителни гласове
  "party5_invalid_ballots" integer,  -- недействителни гласове
  "party6_id" integer,               -- № П/К/ИК
  "party6_valid_ballots" integer,    -- действителни гласове
  "party6_invalid_ballots" integer,  -- недействителни гласове
  "party7_id" integer,               -- № П/К/ИК
  "party7_valid_ballots" integer,    -- действителни гласове
  "party7_invalid_ballots" integer,  -- недействителни гласове
  "party8_id" integer,               -- № П/К/ИК
  "party8_valid_ballots" integer,    -- действителни гласове
  "party8_invalid_ballots" integer,  -- недействителни гласове
  "party9_id" integer,               -- № П/К/ИК
  "party9_valid_ballots" integer,    -- действителни гласове
  "party9_invalid_ballots" integer,  -- недействителни гласове
  "party10_id" integer,              -- № П/К/ИК
  "party10_valid_ballots" integer,   -- действителни гласове
  "party10_invalid_ballots" integer, -- недействителни гласове
  "party11_id" integer,              -- № П/К/ИК
  "party11_valid_ballots" integer,   -- действителни гласове
  "party11_invalid_ballots" integer, -- недействителни гласове
  "party12_id" integer,              -- № П/К/ИК
  "party12_valid_ballots" integer,   -- действителни гласове
  "party12_invalid_ballots" integer, -- недействителни гласове
  "party13_id" integer,              -- № П/К/ИК
  "party13_valid_ballots" integer,   -- действителни гласове
  "party13_invalid_ballots" integer, -- недействителни гласове
  "party14_id" integer,              -- № П/К/ИК
  "party14_valid_ballots" integer,   -- действителни гласове
  "party14_invalid_ballots" integer, -- недействителни гласове
  "party15_id" integer,              -- № П/К/ИК
  "party15_valid_ballots" integer,   -- действителни гласове
  "party15_invalid_ballots" integer, -- недействителни гласове
  "party16_id" integer,              -- № П/К/ИК
  "party16_valid_ballots" integer,   -- действителни гласове
  "party16_invalid_ballots" integer, -- недействителни гласове
  "party17_id" integer,              -- № П/К/ИК
  "party17_valid_ballots" integer,   -- действителни гласове
  "party17_invalid_ballots" integer, -- недействителни гласове
  "party18_id" integer,              -- № П/К/ИК
  "party18_valid_ballots" integer,   -- действителни гласове
  "party18_invalid_ballots" integer, -- недействителни гласове
  "party19_id" integer,              -- № П/К/ИК
  "party19_valid_ballots" integer,   -- действителни гласове
  "party19_invalid_ballots" integer, -- недействителни гласове
  "party20_id" integer,              -- № П/К/ИК
  "party20_valid_ballots" integer,   -- действителни гласове
  "party20_invalid_ballots" integer, -- недействителни гласове
  "party21_id" integer,              -- № П/К/ИК
  "party21_valid_ballots" integer,   -- действителни гласове
  "party21_invalid_ballots" integer  -- недействителни гласове
);


CREATE TABLE mayor_region_2015_1_votes(
  "section_id" text,                 -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,                -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,               -- № П/К/ИК
  "party1_valid_ballots" integer,    -- действителни гласове
  "party1_invalid_ballots" integer,  -- недействителни гласове
  "party2_id" integer,               -- № П/К/ИК
  "party2_valid_ballots" integer,    -- действителни гласове
  "party2_invalid_ballots" integer,  -- недействителни гласове
  "party3_id" integer,               -- № П/К/ИК
  "party3_valid_ballots" integer,    -- действителни гласове
  "party3_invalid_ballots" integer,  -- недействителни гласове
  "party4_id" integer,               -- № П/К/ИК
  "party4_valid_ballots" integer,    -- действителни гласове
  "party4_invalid_ballots" integer,  -- недействителни гласове
  "party5_id" integer,               -- № П/К/ИК
  "party5_valid_ballots" integer,    -- действителни гласове
  "party5_invalid_ballots" integer,  -- недействителни гласове
  "party6_id" integer,               -- № П/К/ИК
  "party6_valid_ballots" integer,    -- действителни гласове
  "party6_invalid_ballots" integer,  -- недействителни гласове
  "party7_id" integer,               -- № П/К/ИК
  "party7_valid_ballots" integer,    -- действителни гласове
  "party7_invalid_ballots" integer,  -- недействителни гласове
  "party8_id" integer,               -- № П/К/ИК
  "party8_valid_ballots" integer,    -- действителни гласове
  "party8_invalid_ballots" integer,  -- недействителни гласове
  "party9_id" integer,               -- № П/К/ИК
  "party9_valid_ballots" integer,    -- действителни гласове
  "party9_invalid_ballots" integer,  -- недействителни гласове
  "party10_id" integer,              -- № П/К/ИК
  "party10_valid_ballots" integer,   -- действителни гласове
  "party10_invalid_ballots" integer, -- недействителни гласове
  "party11_id" integer,              -- № П/К/ИК
  "party11_valid_ballots" integer,   -- действителни гласове
  "party11_invalid_ballots" integer, -- недействителни гласове
  "party12_id" integer,              -- № П/К/ИК
  "party12_valid_ballots" integer,   -- действителни гласове
  "party12_invalid_ballots" integer, -- недействителни гласове
  "party13_id" integer,              -- № П/К/ИК
  "party13_valid_ballots" integer,   -- действителни гласове
  "party13_invalid_ballots" integer, -- недействителни гласове
  "party14_id" integer,              -- № П/К/ИК
  "party14_valid_ballots" integer,   -- действителни гласове
  "party14_invalid_ballots" integer, -- недействителни гласове
  "party15_id" integer,              -- № П/К/ИК
  "party15_valid_ballots" integer,   -- действителни гласове
  "party15_invalid_ballots" integer, -- недействителни гласове
  "party16_id" integer,              -- № П/К/ИК
  "party16_valid_ballots" integer,   -- действителни гласове
  "party16_invalid_ballots" integer, -- недействителни гласове
  "party17_id" integer,              -- № П/К/ИК
  "party17_valid_ballots" integer,   -- действителни гласове
  "party17_invalid_ballots" integer, -- недействителни гласове
  "party18_id" integer,              -- № П/К/ИК
  "party18_valid_ballots" integer,   -- действителни гласове
  "party18_invalid_ballots" integer, -- недействителни гласове
  "party19_id" integer,              -- № П/К/ИК
  "party19_valid_ballots" integer,   -- действителни гласове
  "party19_invalid_ballots" integer, -- недействителни гласове
  "party20_id" integer,              -- № П/К/ИК
  "party20_valid_ballots" integer,   -- действителни гласове
  "party20_invalid_ballots" integer, -- недействителни гласове
  "party21_id" integer,              -- № П/К/ИК
  "party21_valid_ballots" integer,   -- действителни гласове
  "party21_invalid_ballots" integer, -- недействителни гласове
  "party22_id" integer,              -- № П/К/ИК
  "party22_valid_ballots" integer,   -- действителни гласове
  "party22_invalid_ballots" integer, -- недействителни гласове
  "party23_id" integer,              -- № П/К/ИК
  "party23_valid_ballots" integer,   -- действителни гласове
  "party23_invalid_ballots" integer, -- недействителни гласове
  "party24_id" integer,              -- № П/К/ИК
  "party24_valid_ballots" integer,   -- действителни гласове
  "party24_invalid_ballots" integer, -- недействителни гласове
  "party25_id" integer,              -- № П/К/ИК
  "party25_valid_ballots" integer,   -- действителни гласове
  "party25_invalid_ballots" integer, -- недействителни гласове
  "party26_id" integer,              -- № П/К/ИК
  "party26_valid_ballots" integer,   -- действителни гласове
  "party26_invalid_ballots" integer  -- недействителни гласове
);

CREATE TABLE council_2015_1_votes(
  "section_id" text,                 -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3))
  "district_id" text,                -- 2) Идентификатор на административна единица, за която се отнася протокола (община, кметство, район)
  "party1_id" integer,               -- № П/К/ИК
  "party1_valid_ballots" integer,    -- действителни гласове
  "party1_invalid_ballots" integer,  -- недействителни гласове
  "party2_id" integer,               -- № П/К/ИК
  "party2_valid_ballots" integer,    -- действителни гласове
  "party2_invalid_ballots" integer,  -- недействителни гласове
  "party3_id" integer,               -- № П/К/ИК
  "party3_valid_ballots" integer,    -- действителни гласове
  "party3_invalid_ballots" integer,  -- недействителни гласове
  "party4_id" integer,               -- № П/К/ИК
  "party4_valid_ballots" integer,    -- действителни гласове
  "party4_invalid_ballots" integer,  -- недействителни гласове
  "party5_id" integer,               -- № П/К/ИК
  "party5_valid_ballots" integer,    -- действителни гласове
  "party5_invalid_ballots" integer,  -- недействителни гласове
  "party6_id" integer,               -- № П/К/ИК
  "party6_valid_ballots" integer,    -- действителни гласове
  "party6_invalid_ballots" integer,  -- недействителни гласове
  "party7_id" integer,               -- № П/К/ИК
  "party7_valid_ballots" integer,    -- действителни гласове
  "party7_invalid_ballots" integer,  -- недействителни гласове
  "party8_id" integer,               -- № П/К/ИК
  "party8_valid_ballots" integer,    -- действителни гласове
  "party8_invalid_ballots" integer,  -- недействителни гласове
  "party9_id" integer,               -- № П/К/ИК
  "party9_valid_ballots" integer,    -- действителни гласове
  "party9_invalid_ballots" integer,  -- недействителни гласове
  "party10_id" integer,              -- № П/К/ИК
  "party10_valid_ballots" integer,   -- действителни гласове
  "party10_invalid_ballots" integer, -- недействителни гласове
  "party11_id" integer,              -- № П/К/ИК
  "party11_valid_ballots" integer,   -- действителни гласове
  "party11_invalid_ballots" integer, -- недействителни гласове
  "party12_id" integer,              -- № П/К/ИК
  "party12_valid_ballots" integer,   -- действителни гласове
  "party12_invalid_ballots" integer, -- недействителни гласове
  "party13_id" integer,              -- № П/К/ИК
  "party13_valid_ballots" integer,   -- действителни гласове
  "party13_invalid_ballots" integer, -- недействителни гласове
  "party14_id" integer,              -- № П/К/ИК
  "party14_valid_ballots" integer,   -- действителни гласове
  "party14_invalid_ballots" integer, -- недействителни гласове
  "party15_id" integer,              -- № П/К/ИК
  "party15_valid_ballots" integer,   -- действителни гласове
  "party15_invalid_ballots" integer, -- недействителни гласове
  "party16_id" integer,              -- № П/К/ИК
  "party16_valid_ballots" integer,   -- действителни гласове
  "party16_invalid_ballots" integer, -- недействителни гласове
  "party17_id" integer,              -- № П/К/ИК
  "party17_valid_ballots" integer,   -- действителни гласове
  "party17_invalid_ballots" integer, -- недействителни гласове
  "party18_id" integer,              -- № П/К/ИК
  "party18_valid_ballots" integer,   -- действителни гласове
  "party18_invalid_ballots" integer, -- недействителни гласове
  "party19_id" integer,              -- № П/К/ИК
  "party19_valid_ballots" integer,   -- действителни гласове
  "party19_invalid_ballots" integer, -- недействителни гласове
  "party20_id" integer,              -- № П/К/ИК
  "party20_valid_ballots" integer,   -- действителни гласове
  "party20_invalid_ballots" integer, -- недействителни гласове
  "party21_id" integer,              -- № П/К/ИК
  "party21_valid_ballots" integer,   -- действителни гласове
  "party21_invalid_ballots" integer, -- недействителни гласове
  "party22_id" integer,              -- № П/К/ИК
  "party22_valid_ballots" integer,   -- действителни гласове
  "party22_invalid_ballots" integer, -- недействителни гласове
  "party23_id" integer,              -- № П/К/ИК
  "party23_valid_ballots" integer,   -- действителни гласове
  "party23_invalid_ballots" integer, -- недействителни гласове
  "party24_id" integer,              -- № П/К/ИК
  "party24_valid_ballots" integer,   -- действителни гласове
  "party24_invalid_ballots" integer, -- недействителни гласове
  "party25_id" integer,              -- № П/К/ИК
  "party25_valid_ballots" integer,   -- действителни гласове
  "party25_invalid_ballots" integer, -- недействителни гласове
  "party26_id" integer,              -- № П/К/ИК
  "party26_valid_ballots" integer,   -- действителни гласове
  "party26_invalid_ballots" integer, -- недействителни гласове
  "party27_id" integer,              -- № П/К/ИК
  "party27_valid_ballots" integer,   -- действителни гласове
  "party27_invalid_ballots" integer, -- недействителни гласове
  "party28_id" integer,              -- № П/К/ИК
  "party28_valid_ballots" integer,   -- действителни гласове
  "party28_invalid_ballots" integer, -- недействителни гласове
  "party29_id" integer,              -- № П/К/ИК
  "party29_valid_ballots" integer,   -- действителни гласове
  "party29_invalid_ballots" integer, -- недействителни гласове
  "party30_id" integer,              -- № П/К/ИК
  "party30_valid_ballots" integer,   -- действителни гласове
  "party30_invalid_ballots" integer, -- недействителни гласове
  "party31_id" integer,              -- № П/К/ИК
  "party31_valid_ballots" integer,   -- действителни гласове
  "party31_invalid_ballots" integer, -- недействителни гласове
  "party32_id" integer,              -- № П/К/ИК
  "party32_valid_ballots" integer,   -- действителни гласове
  "party32_invalid_ballots" integer -- недействителни гласове
);



CREATE TABLE mayor_2015_2_votes(
  "section_id" text,                -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" text,               -- 2) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "party1_id" integer,              -- № П/К/ИК
  "party1_valid_ballots" integer,   -- действителни гласове
  "party1_invalid_ballots" integer, -- недействителни гласове
  "party2_id" integer,              -- № П/К/ИК
  "party2_valid_ballots" integer,   -- действителни гласове
  "party2_invalid_ballots" integer, -- недействителни гласове
  "party3_id" integer,              -- № П/К/ИК
  "party3_valid_ballots" integer,   -- действителни гласове
  "party3_invalid_ballots" integer  -- недействителни гласове
);


CREATE TABLE mayor_municipality_2015_2_votes(
  "section_id" text,                -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" text,               -- 2) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "party1_id" integer,              -- № П/К/ИК
  "party1_valid_ballots" integer,   -- действителни гласове
  "party1_invalid_ballots" integer, -- недействителни гласове
  "party2_id" integer,              -- № П/К/ИК
  "party2_valid_ballots" integer,   -- действителни гласове
  "party2_invalid_ballots" integer  -- недействителни гласове
);


CREATE TABLE mayor_region_2015_2_votes(
  "section_id" text,                -- 1) Пълен код на секция(код на район(2), община(2), адм. район(2), секция(3));
  "district_id" text,               -- 2) Идентификатор на административна единица, за която се отнася протокола(община, кметство, район)
  "party1_id" integer,              -- № П/К/ИК
  "party1_valid_ballots" integer,   -- действителни гласове
  "party1_invalid_ballots" integer, -- недействителни гласове
  "party2_id" integer,              -- № П/К/ИК
  "party2_valid_ballots" integer,   -- действителни гласове
  "party2_invalid_ballots" integer  -- недействителни гласове
);
