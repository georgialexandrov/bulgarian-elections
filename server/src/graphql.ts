
/** ------------------------------------------------------
 * THIS FILE WAS AUTOMATICALLY GENERATED (DO NOT MODIFY)
 * -------------------------------------------------------
 */

/* tslint:disable */
/* eslint-disable */
export interface District {
    id: string;
    district_code: string;
    district_name: string;
}

export interface IQuery {
    district(id: string): District | Promise<District>;
    election_districts(electionId: string): District[] | Promise<District[]>;
    district_municipalities(districtId: string): Municipality[] | Promise<Municipality[]>;
    districts(): District[] | Promise<District[]>;
    election(id: string): Election | Promise<Election>;
    elections(): Election[] | Promise<Election[]>;
    municipality(id: string): Municipality | Promise<Municipality>;
    municipalities(): Municipality[] | Promise<Municipality[]>;
    mayor_municipality_results(electionId: string, municipalityId: string, round: number): ElectionResult[] | Promise<ElectionResult[]>;
    mayor_municipality_sections(electionId: string, municipalityId: string, round: number): ElectionResultSections[] | Promise<ElectionResultSections[]>;
    mayor_municipality_section_result(electionId: string, municipalityId: string, round: number, lat: number, lng: number): ElectionResultSectionResult[] | Promise<ElectionResultSectionResult[]>;
}

export interface Election {
    id: string;
    name: string;
    round1_date: string;
    round2_date?: string;
    show: boolean;
    type: string;
}

export interface Municipality {
    id: string;
    municipality_code: string;
    municipality_name: string;
}

export interface ElectionResult {
    party_ballot?: number;
    party_name?: string;
    candidate_name?: string;
    total_voters?: number;
    voters_by_signature?: number;
    ballots_in_box?: number;
    valid_ballots_in_box?: number;
    invalid_ballots_in_box?: number;
    no_one?: number;
    valid_votes?: number;
    invalid_votes?: number;
    ballot_number?: number;
    percent?: number;
}

export interface ElectionResultSections {
    id?: number;
    lat?: number;
    lng?: number;
    cik_address?: string;
    address?: string;
    section_codes?: string;
    total_voters?: number;
    voters_by_signature?: number;
    ballots_in_box?: number;
    valid_ballots_in_box?: number;
    invalid_ballots_in_box?: number;
    no_one?: number;
}

export interface ElectionResultSectionResult {
    lat?: number;
    lng?: number;
    cik_address?: string;
    address?: string;
    valid_votes?: number;
    invalid_votes?: number;
    party_ballot?: number;
    party_name?: string;
    candidate_name?: string;
    total_voters?: number;
    voters_by_signature?: number;
    ballots_in_box?: number;
    valid_ballots_in_box?: number;
    invalid_ballots_in_box?: number;
    no_one?: number;
    ballot_number?: number;
    percent?: number;
}
