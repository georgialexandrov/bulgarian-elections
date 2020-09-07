import React, { useEffect, useState } from "react"
import District from "./districts"
import { Link } from "gatsby"

type ElectionItem = {
  id: number
  name: string
  election_period_id: number
}

export default function Municipality(props: {electionType: string, districtId: number, electionId: number, municipalityId?: number}) {
  const [municipalities, setMunicipalities] = useState([] as ElectionItem[])

  useEffect(() => {
    fetch(`/api/municipalities/${props.districtId}`)
      .then(response => response.json())
      .then(resultData => {
        setMunicipalities(resultData)
      })
  }, [props.districtId])

  return <>
    <District electionType={props.electionType} electionId={props.electionId} districtId={props.districtId} />

    <div className="py-6">
    {municipalities.map(municipality => <span key={municipality.id} className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${props.municipalityId == municipality.id && 'text-white' || 'text-black'}`}>
      <span aria-hidden className={`absolute inset-0 ${props.municipalityId == municipality.id && 'bg-gray-900' || 'bg-gray-500'} rounded-full`}></span>
      <span className="relative cursor-pointer"><Link to={`/elections/${props.electionType}/${props.electionId}/${props.districtId}/${municipality.id}`}>{municipality.name}</Link></span>
    </span>)}
    </div>
  </>
}
