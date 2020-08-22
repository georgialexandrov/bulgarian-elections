#!/bin/bash
source ./.env

REQUEST=`sqlite3 db/all_elections.db "select region_name, municipality_name, location_name, address from ${1} where formatted_address is null limit 1;"`

while [[ $REQUEST != '' ]]
do
  REQUEST=`sqlite3 db/all_elections.db "select region_name, municipality_name, location_name, address from ${1} where formatted_address is null limit 1;"`
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
  echo $REGION,$MUNICIPALITY,$LOCATION,$ADDRESS $LAT, $LNG, $NEIGHBORHOOD, $FORMATTED_ADDRESS, $POSTCODE

  STATUS=`sqlite3 db/all_elections.db "update ${1} set google_response='${GOOGLE_RESPONSE}', lat=${LAT}, lng=${LNG}, formatted_address='${FORMATTED_ADDRESS}', postcode='${postcode}' where region_name='${REGION}' and municipality_name='${MUNICIPALITY}' and location_name='${LOCATION}' and address='${ADDRESS}';"`

  sleep 0.1

done
