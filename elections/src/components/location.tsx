import React, { useEffect, useState } from "react"
import Municipality from "./municipality"
import { Link } from "gatsby"

type ElectionItem = {
  id: number
  name: string
  election_period_id: number
}

export default function Location(props: {electionType: string, districtId: number, municipalityId: number, electionId: number, locationId?: number}) {
  const [locations, setLocations] = useState([] as ElectionItem[])

  useEffect(() => {
    fetch(`/api/locations/${props.municipalityId}`)
      .then(response => response.json())
      .then(resultData => {
        setLocations(resultData)
      })
  }, [props.municipalityId])

  return <>
    <Municipality electionType={props.electionType} electionId={props.electionId} districtId={props.districtId} municipalityId={props.municipalityId} />

    <div className="py-6">
    {locations.map(location => <span key={location.id} className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${props.locationId == location.id && 'text-white' || 'text-black'}`}>
      <span aria-hidden className={`absolute inset-0 ${props.locationId == location.id && 'bg-gray-900' || 'bg-gray-500'} rounded-full`}></span>
      <span className="relative cursor-pointer"><Link to={`/elections/m/${props.electionId}/${props.districtId}/${props.municipalityId}/${location.id}`}>{location.name}</Link></span>
    </span>)}
    </div>
  </>
}
