import { Entity, Column, JoinColumn, PrimaryGeneratedColumn, ManyToOne } from 'typeorm'

import Location from './location.entity'

@Entity({ name: 'location_neighborhoods' })
export default class LocationNeighborhood {
  @PrimaryGeneratedColumn()
  id: number

  @ManyToOne(_ => Location)
  @JoinColumn({ name: 'location_id' })
  location: Location

  @Column()
  neighborhoods: string
}
