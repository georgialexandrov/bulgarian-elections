import { Entity, Column, JoinColumn, PrimaryGeneratedColumn, ManyToOne } from 'typeorm'

import District from '../../location_filter/district.entity'
import Election from 'src/elections/election.entity'
import Location from './location.entity'
import MunicipalityRegion from './municipality_region.entity'
import Party from './party.entity'

@Entity({ name: 'candidates' })
export default class Candidate {
  @PrimaryGeneratedColumn()
  id: number

  @ManyToOne(_ => Election)
  @JoinColumn({ name: 'election_id' })
  election: Election

  @ManyToOne(_ => Location)
  @JoinColumn({ name: 'location_id' })
  location: Location

  @ManyToOne(_ => District)
  @JoinColumn({ name: 'district_id' })
  district: District

  @ManyToOne(_ => MunicipalityRegion)
  @JoinColumn({ name: 'municipality_region_id' })
  municipalityRegion: MunicipalityRegion

  @ManyToOne(_ => Party)
  @JoinColumn({ name: 'party_id' })
  party: Party

  @Column()
  party_ballot: number

  @Column()
  candidate_id: number

  @Column()
  candidate_name: string
}
