import { Entity, Column, JoinColumn, PrimaryGeneratedColumn, ManyToOne } from 'typeorm'

import LocationNeighborhood from './location_neighborhood.entity'
import Location from './location.entity'

@Entity({ name: 'voting_locations' })
export default class VotingLocation {
  @PrimaryGeneratedColumn()
  id: number

  @ManyToOne(_ => Location)
  @JoinColumn({ name: 'location_id' })
  location: Location

  @Column()
  cik_address: string

  @Column()
  address: string

  @Column()
  lat: number

  @Column()
  lng: number

  @ManyToOne(_ => LocationNeighborhood)
  @JoinColumn({ name: 'location_neighborhood_id' })
  location_neighborhood: LocationNeighborhood

  @Column()
  postcode: string
}
