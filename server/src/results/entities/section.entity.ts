import { Entity, Column, JoinColumn, PrimaryGeneratedColumn, ManyToOne } from 'typeorm'

import ElectionPeriod from './election_period.entity'
import Location from './location.entity'
import MunicipalityRegion from './municipality_region.entity'
import VotingLocation from './voting_location.entity'

@Entity({ name: 'sections' })
export default class Section {
  @PrimaryGeneratedColumn()
  id: number

  @ManyToOne(_ => ElectionPeriod)
  @JoinColumn({ name: 'election_period_id' })
  election_period: ElectionPeriod

  @ManyToOne(_ => Location)
  @JoinColumn({ name: 'location_id' })
  location: Location

  @Column()
  section_code: string

  @ManyToOne(_ => MunicipalityRegion)
  @JoinColumn({ name: 'municipality_region_id' })
  municipality_region: MunicipalityRegion

  @ManyToOne(_ => VotingLocation)
  @JoinColumn({ name: 'address_id' })
  voting_location: VotingLocation

  @Column()
  mobile_section: boolean

  @Column()
  ship_section: boolean

  @Column()
  machine_voting: boolean
}
