# Преобразуване на изборните резултати от ЦИК

Форма̀та на данните на ЦИК е с леки разлики или напълно различен за различните избори. Поради това import-а е разделен на 2 части:
- import на всички таблици в sqlite
- преобразуване на таблиците към по-нормализирана база данни

Първата стъпка е необходима за да направи mapping между колоните в CSV файловете и смислено име на колоната. За тази цел има по един `structure.sql` файл за всички избори в папка `db/elections`

# Визуализация

В момента е ранен WIP. За да се стартира е необходим node.js:

- server (прост express) работи на порт 3000 - `node index`
- UI (gatsby) работи на порт 8000 - `gatsby develop`

# Връзка между избирателни секции и адрес

`./bin/build_locations` се грижи да направи по един request към Google Geolocation API за да вземе координати по адрес.

За да работи е необходим jq (https://stedolan.github.io/jq/)

За MacOS е наличен в homebrew:
```
brew install jq
```

# Линкове към ЦИК
https://portal.cik.bg

## Адреси на изборни секции

```
curl https://www.cik.bg/upload/112038/Sekcii-08.09.2019-KM-0.xlsx --output ./files/section_addresses_2019_fall.xlsx
curl https://www.cik.bg/upload/83178/Sekcii-IS-05.04.2019-Ep0-BezDop-01.xlsx --output ./files/section_addresses_2019_spring.xlsx
curl https://www.cik.bg/upload/69121/predvaritelen+spisak+sekcii+v+stranata.xlsx --output ./files/section_addresses_2017.xlsx
curl https://www.cik.bg/upload/59143/sik_p.xlsx --output ./files/section_addresses_2016.xlsx
curl https://www.cik.bg/upload/14300/Номера_и_адреси_на_избирателни_сек.xlsx --output ./files/section_addresses_2015.xlsx
```

На сайта на ЦИК има данни за адресите на изборните секции, които могат лесно да се scrape-нат:
- Европейски парламент 2014: https://old.cik.bg/ajax/siks2014.php?rik=3&obs=2
- Парламентарни избори 2014: https://old.cik.bg/siks_pi2014? (https://old.cik.bg/ajax/siks_pi2014.php?rik=1&obs=1)
- Парламентарни избори 2013: https://old.cik.bg/616? (https://old.cik.bg/ajax/siks.php?rik=1&obs=2)

## Портали за избори
- Местни избори 2019 https://www.cik.bg/bg/mi2019
- Европейски парламент 2019 https://results.cik.bg/ep2019/rezultati/
- Парламентарни избори 2017 https://results.cik.bg/pi2017/aktivnost/index.html
- Президентски избори 2016 https://results.cik.bg/pvrnr2016/tur1/president/
- Местни избори 2015 https://results.cik.bg/minr2015/tur1/mestni/0101.html
- Парламентарни избори 2014 https://results.cik.bg/pi2014/rezultati/index.html
- Европейски парламент 2014 https://results.cik.bg/ep2014/rezultati/index.html
- Парламентарни избори 2013 https://results.cik.bg/pi2013/rezultati/index.html
- Президентски и местни избори 2011 https://results.cik.bg/mipvr2011/tur1/mestni/0103.html
- Европейски парламент 2009 https://ep2009.cik.bg/results/
- Парламентарни избори 2009 https://pi2009.cik.bg/results/proportional/index.html

