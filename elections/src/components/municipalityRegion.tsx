import React, { useEffect, useState } from "react"
import { Link } from "gatsby"
import Municipality from "./municipality"

type ElectionItem = {
  id: number
  name: string
  election_period_id: number
}

export default function MunicipalityRegion(props: {electionType: string, districtId: number, electionId: number, municipalityId: number, regionId: number}) {
  const [regions, setRegions] = useState([] as ElectionItem[])

  useEffect(() => {
    fetch(`/api/regions/${props.municipalityId}`)
      .then(response => response.json())
      .then(resultData => {
        setRegions(resultData)
      })
  }, [props.municipalityId])

  return <>
    <Municipality electionType={props.electionType} electionId={props.electionId} districtId={props.districtId} municipalityId={props.municipalityId} />

    <div className="py-6">
    {regions.map(region => <span key={region.id} className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${props.regionId == region.id && 'text-white' || 'text-black'}`}>
      <span aria-hidden className={`absolute inset-0 ${props.regionId == region.id && 'bg-gray-900' || 'bg-gray-500'} rounded-full`}></span>
      <span className="relative cursor-pointer"><Link to={`/elections/mr/${props.electionId}/${props.districtId}/${props.municipalityId}/${region.id}/1`}>{region.name}</Link></span>
    </span>)}
    </div>
  </>
}
