#!/bin/bash

# https://portal.cik.bg

## Парламентарни избори:

# https://results.cik.bg/pi2017/aktivnost/index.html
curl https://results.cik.bg/pi2017/export.zip --output ./raw/parliament2017.zip

# https://results.cik.bg/pi2014/rezultati/index.html
curl https://results.cik.bg/pi2014/csv.zip --output ./raw/parliament2014.zip

# https://results.cik.bg/pi2013/rezultati/index.html
curl https://results.cik.bg/pi2013/export.zip --output ./raw/parliament2013.zip

# https://pi2009.cik.bg/results/proportional/index.html
curl https://pi2009.cik.bg/results/exports.zip --output ./raw/parliament2009.zip

## Европейски избори

# https://results.cik.bg/ep2019/mandati/index.html
curl https://results.cik.bg/ep2019/csv.zip --output ./raw/european2019.zip

# https://results.cik.bg/ep2014/rezultati/index.html
curl https://results.cik.bg/ep2014/export.zip --output ./raw/european2014.zip

# https://ep2009.cik.bg/results/
curl https://ep2009.cik.bg/exports.zip --output ./raw/european2009.zip

# https://ep2007.cik.bg

## Президентски избори

# https://results.cik.bg/pvrnr2016/tur1/president/
curl https://results.cik.bg/pvrnr2016/tur1/export.zip --output ./raw/president2016.zip

# https://results.cik.bg/mipvr2011/tur2/prezidentski/index.html
curl https://results.cik.bg/mipvr2011/el2011_t1.zip --output ./raw/president2011_1.zip
curl https://results.cik.bg/mipvr2011/el2011_t2.zip --output ./raw/president2011_2.zip

# https://pvr2006.cik.bg/results_2/
# http://www.math.bas.bg/izbori/iz2001.html

## Местни избори

# https://www.cik.bg/bg/mi2019
curl https://results.cik.bg/mi2019/csv.zip --output ./raw/mayor2019.zip

# https://results.cik.bg/minr2015/tur1/mestni/0101.html
curl https://results.cik.bg/minr2015/tur1/mi2015.zip --output ./raw/mayor2015.zip

# https://results.cik.bg/mipvr2011/tur1/mestni/0103.html
curl https://results.cik.bg/mipvr2011/el2011_t1.zip --output ./raw/mayor2011_1.zip
curl https://results.cik.bg/mipvr2011/el2011_t2.zip --output ./raw/mayor2011_2.zip

# https://mi2007.cik.bg - TODO: Scrape results
# http://mi2003.cik.bg 