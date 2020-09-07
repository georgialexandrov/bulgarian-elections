import React, { useEffect, useState } from "react"
import { navigate } from "gatsby"
import Map from '../map'
import Location from "../location"
import Dropdown from "../dropdown"

type Result = {
    candidate_name: string
    party_name: string
    valid_votes: number
    invalid_votes: number
    ballot_number: number
    percent: number
    total_voters: number
    voters_by_signature: number
    ballots_in_box: number
    valid_ballots_in_box: number
    invalid_ballots_in_box: number
    no_one: number
}
export default function MunicipalityResults(props: {electionType: string, electionId: number, districtId: number, municipalityId: number, locationId: number, round: number}) {
  const [results, setResults] = useState([] as Result[])

  useEffect(() => {
    fetch(
      `/api/mayor_results?election_id=${props.electionId}&municipality_id=${props.municipalityId}&location_id=${props.locationId}&round=${props.round || 1}`)
      .then(response => response.json())
      .then(resultData => {
        setResults(resultData)
      })
    }, [props.municipalityId, props.locationId, props.round])


  if (!results.length) return <div>Loading...</div>
  return <>
    <Location electionType={props.electionType} electionId={props.electionId} districtId={props.districtId} municipalityId={props.municipalityId} locationId={props.locationId} />

    <Dropdown elements={[{id: 1, name: 'Тур I'}, {id: 2, name: 'Тур II'}]} selectedValue={props.round} onChange={(newRound: number) => navigate(`/elections/m/${props.electionId}/${props.districtId}/${props.municipalityId}/${props.locationId}/${newRound}`)} title="Тур" />
    <p>Имащи право на глас {results[0].total_voters}</p>
    <p>Гласували според подписите в протоколите {results[0].voters_by_signature} ({(results[0].voters_by_signature / results[0].total_voters * 100).toFixed(2)}%)</p>
    <p>Общо намерени в кутията бюлетини {results[0].ballots_in_box}</p>
    <p>Общо намерени в кутията валидни бюлетини {results[0].valid_ballots_in_box} ({(results[0].valid_ballots_in_box / results[0].ballots_in_box * 100).toFixed(2)}%)</p>
    <p>Общо намерени в кутията невалидни бюлетини {results[0].invalid_ballots_in_box} ({(results[0].invalid_ballots_in_box / results[0].ballots_in_box * 100).toFixed(2)}%)</p>
    <p>Гласували с опцията "Не подкрепям никого" {results[0].no_one} ({(results[0].no_one / results[0].valid_ballots_in_box * 100).toFixed(2)}%)</p>

    <div className="flex flex-col">
      <div className={`-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8`}>
        <div className="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
          <div className="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
            <table className="min-w-full divide-y divide-gray-200">
              <thead>
                <tr>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                  № Бюлетина
                  </th>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                  Кандидат
                  </th>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                  Процент
                  </th>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                  Валидни гласове
                  </th>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                  Невалидни гласове
                  </th>
                </tr>
              </thead>
                  <tbody className="bg-white divide-y divide-gray-200">
                  {results.map((result: Result) => (
                    <tr key={result.ballot_number}>
                      <td className="px-6 py-4 whitespace-no-wrap">
                        <div className="flex items-center">
                          <div className="flex-shrink-0 h-10 w-10">
                          {result.ballot_number}
                          </div>
                        </div>
                      </td>
                      <td className="px-6 py-4 whitespace-no-wrap">
                        <div className="text-sm text-gray-900">{result.candidate_name}</div>
                        <div className="text-sm text-gray-500">{result.party_name}</div>
                      </td>
                      <td className="px-6 py-4 whitespace-no-wrap">
                        <span className="px-2 inline-flex text-xl font-semibold rounded-full">
                            {(result.valid_votes / result.valid_ballots_in_box * 100).toFixed(2)}% ({(result.valid_votes / result.total_voters * 100).toFixed(2)}%)

                        </span>
                      </td>
                      <td className="px-6 py-4 whitespace-no-wrap">
                        <span className="px-2 inline-flex text-xl font-semibold rounded-full text-green-800">
                            {result.valid_votes}
                        </span>
                      </td>
                      <td className="px-6 py-4 whitespace-no-wrap text-xl text-red-500">
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
      <table className="table">
        <thead>
          <tr>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
          </tr>
        </thead>

        <tbody>

          </tbody>
      </table>

    <Map election_id={props.electionId} municipality_region_id={props.locationId} location_id={props.locationId} round={props.round} />
  </>
}
