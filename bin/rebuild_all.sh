#!/bin/bash

rm ./db/${1}.db
./bin/rebuild_regional_2019.sh ${1}
./bin/rebuild_european_2019.sh ${1}
./bin/rebuild_parliament_2017.sh ${1}
./bin/rebuild_president_2016.sh ${1}
./bin/rebuild_regional_2015.sh ${1}
./bin/rebuild_parliament_2014.sh ${1}
./bin/rebuild_european_2014.sh ${1}
./bin/rebuild_parliament_2013.sh ${1}
./bin/rebuild_regional_2011.sh ${1}
./bin/rebuild_president_2011.sh ${1}
./bin/rebuild_parliament_2009.sh ${1}
./bin/rebuild_european_2009.sh ${1}