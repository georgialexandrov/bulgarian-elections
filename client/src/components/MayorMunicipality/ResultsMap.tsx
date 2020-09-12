import React from 'react'
import gql from 'graphql-tag'
import { useQuery } from '@apollo/client'
import { Map as LeafletMap, Marker, Popup, TileLayer } from 'react-leaflet'
import { LatLng, Marker as LeafletMarker, Icon as LeafletIcon } from 'leaflet'

import 'leaflet/dist/leaflet.css'
import icon from 'leaflet/dist/images/marker-icon.png'
import iconShadow from 'leaflet/dist/images/marker-shadow.png'
import SectionPreview from './SectionPreview'

LeafletMarker.prototype.options.icon = new LeafletIcon({ iconUrl: icon, shadowUrl: iconShadow })

type Props = {
  electionId: number
  municipalityId: number
  round: number
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

const MAYOR_MUNICIPALITY_RESULTS_MAP = gql`
  query results($electionId: ID!, $municipalityId: ID!, $round: Int!) {
    mayor_municipality_sections(electionId: $electionId, municipalityId: $municipalityId, round: $round) {
      id
      lat
      lng
      cik_address
      address
      section_codes
      total_voters
      voters_by_signature
      ballots_in_box
      valid_ballots_in_box
      invalid_ballots_in_box
      no_one
    }
  }
`

const mapboxTiles =
  'https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoiZ2VvcmdpYWxleGFuZHJvdiIsImEiOiJja2U3YWwxaHoxa3loMnRvYmhhNGRqZnR5In0.sNcQcg56g3FC1st1AcD6fA'
const mapboxAttr =
  'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>'

export default function ResultsMap(props: Props) {
  const { data, loading } = useQuery<
    { mayor_municipality_sections: SectionsResponse[] },
    { electionId: number; municipalityId: number; round: number }
  >(MAYOR_MUNICIPALITY_RESULTS_MAP, {
    variables: { electionId: props.electionId, municipalityId: props.municipalityId, round: props.round },
  })

  if (loading) return <h1>Loading</h1>
  if (!data || !data.mayor_municipality_sections) return <h1>No data</h1>
  const coordinates = data.mayor_municipality_sections
  console.log(coordinates)
  const mapSettings = {
    center: { lat: coordinates[0].lat, lng: coordinates[0].lng } as LatLng,
    defaultBaseMap: 'OpenStreetMap',
    zoom: 12,
  }
  return (
    <LeafletMap style={{ maxWidth: 1200, height: 800, zIndex: 10 }} {...mapSettings} key="1">
      <TileLayer attribution={mapboxAttr} url={mapboxTiles} key="1" />
      {coordinates.map(coordinate => (
        <Marker key={coordinate.lat + coordinate.lng} position={{ lat: coordinate.lat, lng: coordinate.lng }}>
          <Popup minWidth={900}>
            <SectionPreview
              section={coordinate}
              electionId={props.electionId}
              municipalityId={props.municipalityId || 0}
              round={props.round}
              lat={coordinate.lat}
              lng={coordinate.lng}
            />
          </Popup>
        </Marker>
      ))}
    </LeafletMap>
  )
}
