import { Entity, Column, OneToMany, PrimaryGeneratedColumn } from 'typeorm'
import Municipality from 'src/municipality/municipality.entity'

@Entity({ name: 'districts' })
export default class District {
  @PrimaryGeneratedColumn()
  id: number

  @Column()
  district_code: string

  @Column()
  district_name: string

  @OneToMany(
    type => Municipality,
    municipality => municipality.district,
  )
  municipalities: Municipality[]
}
