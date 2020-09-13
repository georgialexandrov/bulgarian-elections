import { Entity, Column, JoinColumn, PrimaryGeneratedColumn, ManyToOne, OneToMany } from 'typeorm'

import District from './district.entity'
import Location from '../results/entities/location.entity'
import MunicipalityRegion from '../results/entities/municipality_region.entity'

@Entity({ name: 'municipalities' })
export default class Municipality {
  @PrimaryGeneratedColumn()
  id: number

  @ManyToOne(_ => District)
  @JoinColumn({ name: 'district_id' })
  district: District

  @Column()
  municipality_code: string

  @Column()
  municipality_name: string

  @OneToMany(
    type => MunicipalityRegion,
    region => region.municipality,
  )
  regions: MunicipalityRegion[]

  @OneToMany(
    type => Location,
    location => location.municipality,
  )
  locations: Location[]
}
