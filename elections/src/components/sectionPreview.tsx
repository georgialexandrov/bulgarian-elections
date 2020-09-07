import React, { useEffect, useState } from "react"
import { SectionsResponse } from './map'

type SectionDataResult = {
  candidate_name: string
  party_name: string
  valid_votes: number
  invalid_votes: number
  ballot_number: number
  percent: number
}
export default function SectionPreview(props: { section: SectionsResponse, election_id: number, locationId: number, round?: number, lat: number, lng: number}) {
  const [sectionData, setSectionData] = useState([])
  useEffect(() => {
    // mayor_municipality_region_section_result
    // fetch(`/api/mayor_municipality_section_result?election_id=${props.election_id}&municipality_id=${props.municipality_id}&round=${props.round}&lat=${props.lat}&lng=${props.lng}`)
    // fetch(`/api/mayor_municipality_region_section_result?election_id=${props.election_id}&municipality_region_id=${props.municipality_region_id}&round=${props.round}&lat=${props.lat}&lng=${props.lng}`)
    fetch(`/api/mayor_section_result?election_id=${props.election_id}&location_id=${props.locationId}&round=${props.round}&lat=${props.lat}&lng=${props.lng}`)
    .then(response => response.json()).then(resultData => setSectionData(resultData))
  }, [])

  return <>
    <h1>Секции с номера {props.section.section_codes.split(',').join(', ')}</h1>
    <p>Адрес от ЦИК: {props.section.cik_address}</p>
    <p>Адрес върнат от Google maps: {props.section.address}</p>
    <p>Имащи право на глас {props.section.total_voters}</p>
    <p>Гласували според подписите в протоколите {props.section.voters_by_signature} ({(props.section.voters_by_signature / props.section.total_voters * 100).toFixed(2)}%)</p>
    <p>Общо намерени в кутията бюлетини {props.section.ballots_in_box}</p>
    <p>Общо намерени в кутията валидни бюлетини {props.section.valid_ballots_in_box} ({(props.section.valid_ballots_in_box / props.section.ballots_in_box * 100).toFixed(2)}%)</p>
    <p>Общо намерени в кутията невалидни бюлетини {props.section.invalid_ballots_in_box} ({(props.section.invalid_ballots_in_box / props.section.ballots_in_box * 100).toFixed(2)}%)</p>
    <p>Гласували с опцията "Не подкрепям никого" {props.section.no_one} ({(props.section.no_one / props.section.valid_ballots_in_box * 100).toFixed(2)}%)</p>

    <div className="flex flex-col">
      <div className={`-my-2 `}>
        <div className="py-2 align-middle inline-block min-w-full">
          <div className="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
            <table className="min-w-full divide-y divide-gray-200">
              <thead>
                <tr>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase">Кандидат</th>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase">Процент</th>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase">Валидни гласове</th>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase">Невалидни гласове</th>
                </tr>
              </thead>
              <tbody className="bg-white divide-y divide-gray-200">
                {sectionData.map((result: SectionDataResult) => (
                  <tr key={result.ballot_number}>
                    <td className="px-6 py-4 whitespace-no-wrap">
                      <div className="text-xs text-gray-900">{result.ballot_number}. {result.candidate_name}</div>
                      <div className="text-xs text-gray-500">{result.party_name}</div>
                    </td>
                    <td className="px-6 py-4 whitespace-no-wrap">
                      <span className="px-2 inline-flex text-xs font-semibold rounded-full">
                        {(result.valid_votes / props.section.ballots_in_box * 100).toFixed(2)}%
                      </span>
                    </td>
                    <td className="px-6 py-4 whitespace-no-wrap">
                      <span className="px-2 inline-flex text-xs font-semibold rounded-full text-green-800">
                        {result.valid_votes}
                      </span>
                    </td>
                    <td className="px-6 py-4 whitespace-no-wrap text-xs text-red-500">
                      {result.invalid_votes}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </>
}
