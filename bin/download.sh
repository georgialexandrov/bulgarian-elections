#!/bin/bash

# https://portal.cik.bg

## Парламентарни избори:

# https://results.cik.bg/pi2017/aktivnost/index.html
curl https://results.cik.bg/pi2017/export.zip --output ./files/parliament2017.zip

# https://results.cik.bg/pi2014/rezultati/index.html
curl https://results.cik.bg/pi2014/csv.zip --output ./files/parliament2014.zip

# https://results.cik.bg/pi2013/rezultati/index.html
curl https://results.cik.bg/pi2013/export.zip --output ./files/parliament2013.zip

# https://pi2009.cik.bg/results/proportional/index.html
curl https://pi2009.cik.bg/results/exports.zip --output ./files/parliament2009.zip

## Европейски избори

# https://results.cik.bg/ep2019/mandati/index.html
curl https://results.cik.bg/ep2019/csv.zip --output ./files/european2019.zip

# https://results.cik.bg/ep2014/rezultati/index.html
curl https://results.cik.bg/ep2014/export.zip --output ./files/european2014.zip

# https://ep2009.cik.bg/results/
curl https://ep2009.cik.bg/exports.zip --output ./files/european2009.zip

# https://ep2007.cik.bg

## Президентски избори

# https://results.cik.bg/pvrnr2016/tur1/president/
curl https://results.cik.bg/pvrnr2016/tur1/export.zip --output ./files/president2016.zip

# https://results.cik.bg/mipvr2011/tur2/prezidentski/index.html
curl https://results.cik.bg/mipvr2011/el2011_t1.zip --output ./files/president2011_1.zip
curl https://results.cik.bg/mipvr2011/el2011_t2.zip --output ./files/president2011_2.zip

# https://pvr2006.cik.bg/results_2/
# http://www.math.bas.bg/izbori/iz2001.html

## Местни избори

# https://www.cik.bg/bg/mi2019
curl https://results.cik.bg/mi2019/csv.zip --output ./files/mayor2019.zip

# https://results.cik.bg/minr2015/tur1/mestni/0101.html
curl https://results.cik.bg/minr2015/tur1/mi2015.zip --output ./files/mayor2015_1.zip
curl https://results.cik.bg/minr2015/tur2/mi2015.zip --output ./files/mayor2015_2.zip


# https://results.cik.bg/mipvr2011/tur1/mestni/0103.html
curl https://results.cik.bg/mipvr2011/el2011_t1.zip --output ./files/mayor2011_1.zip
curl https://results.cik.bg/mipvr2011/el2011_t2.zip --output ./files/mayor2011_2.zip

# https://mi2007.cik.bg - TODO: Scrape results
# http://mi2003.cik.bg 


## Адреси на изборни секции
curl https://www.cik.bg/upload/112038/Sekcii-08.09.2019-KM-0.xlsx --output ./files/section_addresses_2019.xlsx



rm -rf ./files/parliament_2017
unzip ./files/parliament2017.zip -d ./files/parliament_2017

rm -rf ./files/parliament_2014
unzip ./files/parliament2014.zip -d ./files/parliament_2014

rm -rf ./files/parliament_2013
unzip ./files/parliament2013.zip -d ./files/parliament_2013
mv ./files/parliament_2013/export/* ./files/parliament_2013/
rm -rf ./files/parliament_2013/export

rm -rf ./files/parliament_2009
unzip ./files/parliament2009.zip -d ./files/parliament_2009
iconv -f windows-1251 -t utf8 ./files/parliament_2009/pe2009_sections.txt  > /tmp/pe2009_sections.txt
mv /tmp/pe2009_sections.txt ./files/parliament_2009/pe2009_sections.txt
iconv -f windows-1251 -t utf8 ./files/parliament_2009/ReadMe.txt > /tmp/ReadMe.txt
mv /tmp/ReadMe.txt ./files/parliament_2009/ReadMe.txt

unzip ./files/european2019.zip -d ./files/european_2019
unzip ./files/european2014.zip -d ./files/european_2014
unzip ./files/european2009.zip -d ./files/european_2009
iconv -f windows-1251 -t utf-8 ./files/european_2009/euro2009_sections.txt > /tmp/euro2009_sections.txt
mv /tmp/euro2009_sections.txt ./files/european_2009/euro2009_sections.txt
iconv -f windows-1251 -t utf-8 ./files/european_2009/ReadMe.txt > /tmp/ReadMe.txt
mv /tmp/ReadMe.txt ./files/european_2009/ReadMe.txt

####################################################################################################################################

# unzip is unable to uncompress mayor elections files because of encoding issues.
# for macos uncompress with The Unarchiver and chosing manually Cyrilic (MacOS) works fine.

unzip ./files/president2016.zip -d ./files/president_2016