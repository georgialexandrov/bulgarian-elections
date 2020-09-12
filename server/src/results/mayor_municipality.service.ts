import { Args, Resolver, Query } from '@nestjs/graphql'
import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'

import Location from './entities/location.entity'
import Vote from './entities/vote.entity'
import ElectionResult from './election_result.interface'
import ElectionResultSections from './election_result_sections.interface'
import ElectionResultSectionsResult from './election_result_section_result.interface'
import Section from './entities/section.entity'

@Injectable()
@Resolver('MunicipalitiesService')
export default class MunicipalitiesService {
  constructor(
    @InjectRepository(Vote)
    private candidatesRepository: Repository<Vote>,
    @InjectRepository(Location)
    private locationsRepository: Repository<Location>,
    @InjectRepository(Section)
    private sectionsRepository: Repository<Section>,
  ) {}

  @Query(() => [], { name: 'mayor_municipality_results' })
  async mayorMunicipalityResults(
    @Args('electionId') electionId: number,
    @Args('round') round: number,
    @Args('municipalityId') municipalityId: number,
  ): Promise<ElectionResult[]> {
    const locationIds = (
      await this.locationsRepository
        .createQueryBuilder('location')
        .select('location.id')
        .where('location.municipality_id = :municipalityId')
        .setParameter('municipalityId', municipalityId)
        .getMany()
    ).map(location => location.id)

    return await this.candidatesRepository
      .createQueryBuilder('Vote')
      .select('sum(Vote.valid_votes)', 'valid_votes')
      .addSelect('sum(Vote.invalid_votes)', 'invalid_votes')
      .addSelect('candidate.party_ballot', 'party_ballot')
      .addSelect('party.name', 'party_name')
      .addSelect('candidate.candidate_name', 'candidate_name')
      .addSelect('sum(total_voters)', 'total_voters')
      .addSelect('sum(voters_by_signature)', 'voters_by_signature')
      .addSelect('sum(ballots_in_box)', 'ballots_in_box')
      .addSelect('sum(valid_ballots_in_box)', 'valid_ballots_in_box')
      .addSelect('sum(invalid_ballots_in_box)', 'invalid_ballots_in_box')
      .addSelect('sum(no_one)', 'no_one')
      .addSelect('Vote.ballot_number', 'ballot_number')
      .addSelect('((cast(valid_votes as float) / cast(valid_ballots_in_box as float)) * 100) ', 'percent')
      .innerJoinAndSelect(
        'candidates',
        'candidate',
        `Vote.ballot_number=candidate.party_ballot and candidate.election_id=:electionId and candidate.location_id in (:...locationIds)`,
        { electionId, locationIds },
      )
      .innerJoinAndSelect(
        'protocols',
        'protocol',
        'protocol.section_id = Vote.section_id and protocol.election_id = :electionId and protocol.round= :round',
        { round, electionId },
      )
      .innerJoin('sections', 'section', 'section.id = protocol.section_id and section.location_id in (:...locationIds)', { locationIds })
      .innerJoinAndSelect('parties', 'party', 'party.id=candidate.party_id')
      .where('Vote.election_id = :electionId and Vote.round= :round', {
        electionId,
        round,
      })
      .groupBy('Vote.ballot_number')
      .orderBy('valid_votes', 'DESC')
      .getRawMany()
  }

  @Query(() => [], { name: 'mayor_municipality_sections' })
  mayorMunicipalitySections(
    @Args('electionId') electionId: number,
    @Args('round') round: number,
    @Args('municipalityId') municipalityId: number,
  ): Promise<ElectionResultSections[]> {
    return this.sectionsRepository
      .createQueryBuilder('Section')
      .select('Section.id', 'id')
      .addSelect('voting_location.lat', 'lat')
      .addSelect('voting_location.lng', 'lng')
      .addSelect('voting_location.address', 'address')
      .addSelect('voting_location.cik_address', 'cik_address')
      .addSelect('sum(total_voters)', 'total_voters')
      .addSelect('sum(voters_by_signature)', 'voters_by_signature')
      .addSelect('sum(ballots_in_box)', 'ballots_in_box')
      .addSelect('sum(valid_ballots_in_box)', 'valid_ballots_in_box')
      .addSelect('sum(invalid_ballots_in_box)', 'invalid_ballots_in_box')
      .addSelect('sum(no_one)', 'no_one')
      .addSelect('group_concat(Section.section_code)', 'section_codes')
      .innerJoinAndSelect('Section.location', 'location')
      .innerJoinAndSelect('Section.voting_location', 'voting_location')
      .innerJoinAndSelect('protocols', 'protocol', 'protocol.section_id = Section.id and protocol.round=:round', { round, electionId })
      .where('location.municipality_id = :municipalityId', { municipalityId })
      .andWhere('lat is not null')
      .andWhere('lng is not null')
      .groupBy('voting_location.address')
      .getRawMany()
  }

  @Query(() => [], { name: 'mayor_municipality_section_result' })
  async mayorMunicipalitySectionsResult(
    @Args('electionId') electionId: number,
    @Args('round') round: number,
    @Args('municipalityId') municipalityId: number,
    @Args('lat') lat: number,
    @Args('lng') lng: number,
  ): Promise<ElectionResultSectionsResult[]> {
    const locationIds = (
      await this.locationsRepository
        .createQueryBuilder('location')
        .select('location.id')
        .where('location.municipality_id = :municipalityId')
        .setParameter('municipalityId', municipalityId)
        .getMany()
    ).map(location => location.id)

    return await this.candidatesRepository
      .createQueryBuilder('Vote')
      .select('voting_location.lat', 'lat')
      .addSelect('voting_location.lng', 'lng')
      .addSelect('voting_location.cik_address', 'cik_address')
      .addSelect('voting_location.address', 'address')
      .addSelect('sum(Vote.valid_votes)', 'valid_votes')
      .addSelect('sum(Vote.invalid_votes)', 'invalid_votes')
      .addSelect('candidate.party_ballot', 'party_ballot')
      .addSelect('party.name', 'party_name')
      .addSelect('candidate.candidate_name', 'candidate_name')
      .addSelect('sum(total_voters)', 'total_voters')
      .addSelect('sum(voters_by_signature)', 'voters_by_signature')
      .addSelect('sum(ballots_in_box)', 'ballots_in_box')
      .addSelect('sum(valid_ballots_in_box)', 'valid_ballots_in_box')
      .addSelect('sum(invalid_ballots_in_box)', 'invalid_ballots_in_box')
      .addSelect('sum(no_one)', 'no_one')
      .addSelect('Vote.ballot_number', 'ballot_number')
      .addSelect('((cast(valid_votes as float) / cast(valid_ballots_in_box as float)) * 100) ', 'percent')
      .innerJoinAndSelect(
        'candidates',
        'candidate',
        `Vote.ballot_number=candidate.party_ballot and candidate.election_id=:electionId and candidate.location_id in (:...locationIds)`,
        { electionId, locationIds },
      )
      .innerJoinAndSelect(
        'protocols',
        'protocol',
        'protocol.section_id = Vote.section_id and protocol.election_id = :electionId and protocol.round= :round',
        { round, electionId },
      )
      .innerJoin('sections', 'section', 'section.id = protocol.section_id and section.location_id in (:...locationIds)', { locationIds })
      .innerJoinAndSelect('parties', 'party', 'party.id=candidate.party_id')
      .innerJoinAndSelect('voting_locations', 'voting_location', 'section.address_id=voting_location.id')
      .where('Vote.election_id = :electionId and Vote.round= :round and voting_location.lat = :lat and voting_location.lng = :lng', {
        electionId,
        round,
        lat,
        lng,
      })
      .groupBy('Vote.ballot_number')
      .orderBy('valid_votes', 'DESC')
      .getRawMany()
  }

  //   mayor_municipality_section_result = ({ election_id, municipality_id, round, lat, lng }) =>
  //     query(`
  // select lat, lng, cik_address, address, candidates.party_ballot,
  //     parties.name as party_name,
  //     candidates.candidate_name,
  //     sum(votes.valid_votes) as valid_votes,
  //     sum(votes.invalid_votes) as invalid_votes,
  //     votes.ballot_number,
  //     cast(valid_votes as float) / cast(protocols.valid_ballots_in_box as float) * 100 as percent
  //   from candidates
  //   join votes on votes.ballot_number = candidates.party_ballot and votes.election_id = ${election_id} and votes.round=${round}
  //   join protocols on protocols.section_id = votes.section_id and protocols.election_id = ${election_id} and protocols.round=${round}
  //   join sections on sections.id = protocols.section_id and sections.location_id in (select id from locations where municipality_id = ${municipality_id})
  //   join parties on parties.id=candidates.party_id
  //   join voting_locations on voting_locations.id=sections.address_id
  //   where candidates.election_id = ${election_id} and candidates.location_id in (select id from locations where municipality_id = ${municipality_id}) and lat =${lat} and lng =${lng}
  //   group by party_id
  //   order by valid_votes desc
  // `)
}
