import React, { useEffect, useState } from "react"
import Map from '../map'
import Municipality from "../municipality"

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

type PreferenceResult = {
  party_ballot: number
  party_name: string
  candidate_ballot: number
  candidate_name: string
  valid_votes: number
}
export default function CouncilResults(props: {electionType: string, electionId: number, districtId: number, municipalityId: number}) {
  const [parties, setParties] = useState([] as Result[])
  const [preferences, setPreferences] = useState([] as PreferenceResult[])

  useEffect(() => {
    fetch(
      `/api/council_party_result?election_id=${props.electionId}&municipality_id=${props.municipalityId}`)
      .then(response => response.json())
      .then(resultData => {
        setParties(resultData)
      })

    fetch(
      `/api/council_preferences_result?election_id=${props.electionId}&municipality_id=${props.municipalityId}`)
      .then(response => response.json())
      .then(resultData => {
        setPreferences(resultData)
      })
    }, [props.municipalityId])


  if (!parties.length) return <div>Loading...</div>
  return <>
    <Municipality electionType={props.electionType} electionId={props.electionId} districtId={props.districtId} municipalityId={props.municipalityId} />

    <p>Имащи право на глас {parties[0].total_voters}</p>
    <p>Гласували според подписите в протоколите {parties[0].voters_by_signature} ({(parties[0].voters_by_signature / parties[0].total_voters * 100).toFixed(2)}%)</p>
    <p>Общо намерени в кутията бюлетини {parties[0].ballots_in_box}</p>
    <p>Общо намерени в кутията валидни бюлетини {parties[0].valid_ballots_in_box} ({(parties[0].valid_ballots_in_box / parties[0].ballots_in_box * 100).toFixed(2)}%)</p>
    <p>Общо намерени в кутията невалидни бюлетини {parties[0].invalid_ballots_in_box} ({(parties[0].invalid_ballots_in_box / parties[0].ballots_in_box * 100).toFixed(2)}%)</p>
    <p>Гласували с опцията "Не подкрепям никого" {parties[0].no_one} ({(parties[0].no_one / parties[0].total_voters * 100).toFixed(2)}%)</p>

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
                </tr>
              </thead>
                  <tbody className="bg-white divide-y divide-gray-200">
                  {parties.map((result: Result) => (
                    <tr key={result.ballot_number}>
                      <td className="px-6 py-4 whitespace-no-wrap">
                        <div className="flex items-center">
                          <div className="flex-shrink-0 h-10 w-10">
                          {result.ballot_number}
                          </div>
                        </div>
                      </td>
                      <td className="px-6 py-4 whitespace-no-wrap">
                        <div className="text-sm text-black">{result.party_name}</div>
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
                    </tr>
                  ))}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>


    <h1>Преференции</h1>
    <div className="flex flex-col">
      <div className={`-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8`}>
        <div className="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
          <div className="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
            <table className="min-w-full divide-y divide-gray-200">
              <thead>
                <tr>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                  Кандидат
                  </th>
                  <th className="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                  Валидни гласове
                  </th>
                </tr>
              </thead>
                  <tbody className="bg-white divide-y divide-gray-200">
                  {preferences.map((result: PreferenceResult) => (
                    <tr key={result.party_ballot + result.candidate_ballot}>

                      <td className="px-6 py-4 whitespace-no-wrap">
                        <div className="text-sm text-gray-900">{result.candidate_ballot}. {result.candidate_name}</div>
                        <div className="text-sm text-gray-500">{result.party_ballot}. {result.party_name}</div>
                      </td>

                      <td className="px-6 py-4 whitespace-no-wrap">
                        <span className="px-2 inline-flex text-xl font-semibold rounded-full text-green-800">
                            {result.valid_votes}
                        </span>
                      </td>
                    </tr>
                  ))}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>




  {/* <Map election_id={props.electionId} municipality_id={props.municipalityId}  /> */}
  </>
}
