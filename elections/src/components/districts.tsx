import React, { useEffect, useState } from "react"
import Election from "./elections"
import { Link } from "gatsby"

type DistrictItem = {
  id: number
  name: string
}

export default function District(props: {electionType: string, electionId: number, districtId?: number}) {
  const [districts, setDistricts] = useState([] as DistrictItem[])
  useEffect(() => {
    fetch(`/api/districts/${props.electionId}`)
      .then(response => response.json())
      .then(resultData => setDistricts(resultData))
  }, [props.electionId])

  return <>
    <Election electionId={props.electionId} />
    <div className="py-6">
      {districts.map(district =>
        <span key={district.id} className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${props.districtId == district.id && 'text-white' || 'text-black'}`}>
          <span aria-hidden className={`absolute inset-0 ${props.districtId == district.id && 'bg-gray-900' || 'bg-gray-500'} rounded-full`}></span>
          <span className="relative cursor-pointer"><Link to={`/elections/${props.electionType}/${props.electionId}/${district.id}`}>{district.name}</Link></span>
        </span>
      )}
    </div>
  </>
}
