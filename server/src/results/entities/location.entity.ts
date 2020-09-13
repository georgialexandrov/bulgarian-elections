import { Entity, Column, JoinColumn, PrimaryGeneratedColumn, ManyToOne } from 'typeorm'

import District from '../../location_filter/district.entity'
import Municipality from '../../location_filter/municipality.entity'

@Entity({ name: 'locations' })
export default class Location {
  @PrimaryGeneratedColumn()
  id: number

  @ManyToOne(_ => District)
  @JoinColumn({ name: 'district_id' })
  district: District

  @ManyToOne(_ => Municipality)
  @JoinColumn({ name: 'municipality_id' })
  municipality: Municipality

  @Column()
  location_type: string

  @Column()
  location_name: string

  @Column()
  ekatte: string
}
