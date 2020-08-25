#!/bin/bash

# https://portal.cik.bg

## Парламентарни избори:





## Европейски избори

# https://results.cik.bg/ep2019/mandati/index.html






# https://ep2007.cik.bg

## Президентски избори



# https://pvr2006.cik.bg/results_2/
# http://www.math.bas.bg/izbori/iz2001.html

## Местни избори







# https://mi2007.cik.bg - TODO: Scrape results
# http://mi2003.cik.bg 


## Адреси на изборни секции
curl https://www.cik.bg/upload/112038/Sekcii-08.09.2019-KM-0.xlsx --output ./files/section_addresses_2019_fall.xlsx
curl https://www.cik.bg/upload/83178/Sekcii-IS-05.04.2019-Ep0-BezDop-01.xlsx --output ./files/section_addresses_2019_spring.xlsx
curl https://www.cik.bg/upload/69121/predvaritelen+spisak+sekcii+v+stranata.xlsx --output ./files/section_addresses_2017.xlsx
curl https://www.cik.bg/upload/59143/sik_p.xlsx --output ./files/section_addresses_2016.xlsx
curl https://www.cik.bg/upload/14300/Номера_и_адреси_на_избирателни_сек.xlsx --output ./files/section_addresses_2015.xlsx

# Scrape european 2014: https://old.cik.bg/ajax/siks2014.php?rik=3&obs=2
# Scrape https://old.cik.bg/siks_pi2014? parliament 2014:  https://old.cik.bg/ajax/siks_pi2014.php?rik=1&obs=1
# Scrape https://old.cik.bg/616? 2013 parliament: https://old.cik.bg/ajax/siks.php?rik=1&obs=2








####################################################################################################################################

# unzip is unable to uncompress mayor elections files because of encoding issues.
# for MacOS uncompress with The Unarchiver by chosing manually Cyrilic (MacOS).




