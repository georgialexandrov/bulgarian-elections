#!/bin/bash
source ./.env
sqlite3 db/sections.db '
CREATE TABLE voting_locations_2019(
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
);'


sqlite3 db/sections.db ".mode csv" ".separator ';'" ".import ./files/voting_sections_2019.csv voting_locations_2019"
sqlite3 db/sections.db "update voting_locations_2019 set section_id=CASE WHEN region_id < 10 THEN '0' || region_id ELSE region_id END ||
       CASE WHEN municipality_id < 10 THEN '0' || municipality_id ELSE municipality_id END ||
       CASE WHEN municipality_region_code = '' THEN '00' ELSE municipality_region_code END ||
       section;"
sqlite3 db/sections.db "delete from voting_locations_2019 where region_id='Област код';"
REQUEST=`sqlite3 db/sections.db "select region_name, municipality_name, location_name, address from voting_locations_2019 where lat is null limit 1;"`

while [[ $REQUEST != '' ]]
do
  REQUEST=`sqlite3 db/sections.db "select region_name, municipality_name, location_name, address from voting_locations_2019 where lat is null limit 1;"`
  REGION=`cut -d'|' -f1 <<<"$REQUEST"`
  MUNICIPALITY=`cut -d'|' -f2 <<<"$REQUEST"`
  LOCATION=`cut -d'|' -f3 <<<"$REQUEST"`
  ADDRESS=`cut -d'|' -f4 <<<"$REQUEST"`

  GOOGLE_RESPONSE=`curl -s -G -H "Accept-language: bg" --data-urlencode "address='$REGION,$LOCATION,$ADDRESS'" --data "key=$GOOGLE_GEOLOCATION_API_KEY" https://maps.googleapis.com/maps/api/geocode/json`

  LAT=`echo $GOOGLE_RESPONSE | jq .results[0].geometry.location.lat`
  LNG=`echo $GOOGLE_RESPONSE | jq .results[0].geometry.location.lng`
  FORMATTED_ADDRESS=`echo ${GOOGLE_RESPONSE} | jq .results[0].formatted_address`
  NEIGHBORHOOD=`echo ${GOOGLE_RESPONSE} | jq '.results[0].address_components[] | select(.types[] | test("neighborhood"; "i")) | .short_name'`
  POSTCODE=`echo ${GOOGLE_RESPONSE} | jq '.results[0].address_components[] | select(.types[] | test("postal_code"; "i")) | .short_name'`
  echo $REGION,$MUNICIPALITY,$LOCATION,$ADDRESS $LAT, $LNG

  STATUS=`sqlite3 db/sections.db "update voting_locations_2019 set google_response='${GOOGLE_RESPONSE}', lat=${LAT}, lng=${LNG},  where region_name='${REGION}' and municipality_name='${MUNICIPALITY}' and location_name='${LOCATION}' and address='${ADDRESS}';"`

  sleep 0.1

done


