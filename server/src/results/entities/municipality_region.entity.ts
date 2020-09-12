import District from 'src/districts/district.entity'
import Municipality from 'src/municipality/municipality.entity'
import { Entity, Column, JoinColumn, PrimaryGeneratedColumn, ManyToOne } from 'typeorm'

@Entity({ name: 'municipality_regions' })
export default class MunicipalityRegion {
  @PrimaryGeneratedColumn()
  id: number

  @ManyToOne(_ => Municipality)
  @JoinColumn({ name: 'municipality_id' })
  municipality: Municipality

  @Column()
  region_code: string

  @Column()
  region_name: string
}
