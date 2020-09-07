import React, { useState, useEffect } from "react"
import { Map as LeafletMap, Marker, Popup, TileLayer } from 'react-leaflet'
import { LatLng } from "leaflet"

import SectionPreview from "./sectionPreview"

type Props = {
  election_id: number
  municipality_id?: number
  municipality_region_id?: number
  location_id?: number
  round?: number
}
export type SectionsResponse = {
  id: number
  lat: number
  lng: number
  cik_address: string
  address: string
  section_codes: string
  total_voters: number
  voters_by_signature: number
  ballots_in_box: number
  valid_ballots_in_box: number
  invalid_ballots_in_box: number
  no_one: number
}

const mapboxTiles = 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoiZ2VvcmdpYWxleGFuZHJvdiIsImEiOiJja2U3YWwxaHoxa3loMnRvYmhhNGRqZnR5In0.sNcQcg56g3FC1st1AcD6fA';
const mapboxAttr = 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>';

export default function(props: Props) {
  const [coordinates, setCoordinates] = useState([] as SectionsResponse[])
  useEffect(() => {
    // fetch(`/api/sections?election_id=${props.election_id}&municipality_id=${props.municipality_id}&round=${props.round}`)
    // fetch(`/api/municipality_region_sections?election_id=${props.election_id}&municipality_region_id=${props.municipality_region_id}&round=${props.round}`)
    fetch(`/api/municipality_sections?election_id=${props.election_id}&location_id=${props.location_id}&round=${props.round}`)
      .then(response => response.json())
      .then(resultData => setCoordinates(resultData))
  }, [props.municipality_region_id])
// }, [props.municipality_id, props.round])

  if (!coordinates.length) return <h1>Waiting</h1>

  const mapSettings = {
    center: { lat: coordinates[0].lat, lng: coordinates[0].lng } as LatLng,
    defaultBaseMap: 'OpenStreetMap',
    zoom: 12,

  };
  return <LeafletMap style={{ maxWidth: 1200, height: 800, zIndex: 10}} {...mapSettings}>
    <TileLayer attribution={mapboxAttr} url={mapboxTiles} />
    {coordinates.map(coordinate => (
        <Marker key={coordinate.id} position={{ lat: coordinate.lat, lng: coordinate.lng }}>
        <Popup minWidth={900}><SectionPreview section={coordinate} election_id={props.election_id} locationId={props.location_id || 0} round={props.round} lat={coordinate.lat} lng={coordinate.lng} /></Popup>
        </Marker>
    ))}
  </LeafletMap>
}
