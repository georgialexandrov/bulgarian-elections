import React, { useState } from 'react'
import gql from 'graphql-tag'
import { useQuery } from '@apollo/client'
import ResultsMap from './ResultsMap'

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

const LOCATIONS = gql`
  query results($electionId: String, $municipalityId: String, $round: String) {
    results(electionId: $electionId, municipalityId: $municipalityId, round: $round)
    @rest(path: "mayor_municipality_results?election_id={args.electionId}&municipality_id={args.municipalityId}&round={args.round}", type: "Result") {
      candidate_name
      party_name
      valid_votes
      invalid_votes
      ballot_number
      percent
      total_voters
      voters_by_signature
      ballots_in_box
      valid_ballots_in_box
      invalid_ballots_in_box
      no_one
    }
  }
`

export default function Location(props: { electionId: number; municipalityId: number; round: number }) {
  const { data, loading } = useQuery<{ results: Result[] }, { electionId: number; municipalityId: number; round: number }>(LOCATIONS, {
    variables: { electionId: props.electionId, municipalityId: props.municipalityId, round: props.round },
  })

  if (loading) return <h1>Loading</h1>
  if (!data || !data.results) return <h1>No data</h1>

  const results = data?.results

  return (
    <>
      <p>Имащи право на глас {results[0].total_voters}</p>
      <p>
        Гласували според подписите в протоколите {results[0].voters_by_signature} (
        {((results[0].voters_by_signature / results[0].total_voters) * 100).toFixed(2)}%)
      </p>
      <p>Общо намерени в кутията бюлетини {results[0].ballots_in_box}</p>
      <p>
        Общо намерени в кутията валидни бюлетини {results[0].valid_ballots_in_box} (
        {((results[0].valid_ballots_in_box / results[0].ballots_in_box) * 100).toFixed(2)}%)
      </p>
      <p>
        Общо намерени в кутията невалидни бюлетини {results[0].invalid_ballots_in_box} (
        {((results[0].invalid_ballots_in_box / results[0].ballots_in_box) * 100).toFixed(2)}%)
      </p>
      <p>
        Гласували с опцията "Не подкрепям никого" {results[0].no_one} ({((results[0].no_one / results[0].total_voters) * 100).toFixed(2)}%)
      </p>

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
                    <th className="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">Кандидат</th>
                    <th className="px-6 py-3 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">Процент</th>
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
                          <div className="flex-shrink-0 h-10 w-10">{result.ballot_number}</div>
                        </div>
                      </td>
                      <td className="px-6 py-4 whitespace-no-wrap">
                        <div className="text-sm text-gray-900">{result.candidate_name}</div>
                        <div className="text-sm text-gray-500">{result.party_name}</div>
                      </td>
                      <td className="px-6 py-4 whitespace-no-wrap">
                        <span className="px-2 inline-flex text-xl font-semibold rounded-full">
                          {((result.valid_votes / result.valid_ballots_in_box) * 100).toFixed(2)}% (
                          {((result.valid_votes / result.total_voters) * 100).toFixed(2)}%)
                        </span>
                      </td>
                      <td className="px-6 py-4 whitespace-no-wrap">
                        <span className="px-2 inline-flex text-xl font-semibold rounded-full text-green-800">{result.valid_votes}</span>
                      </td>
                      <td className="px-6 py-4 whitespace-no-wrap text-xl text-red-500">{result.invalid_votes}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>

      <ResultsMap {...props} />
    </>
  )
}
