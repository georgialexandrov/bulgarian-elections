import District from 'src/districts/district.entity'
import { Entity, Column, JoinColumn, PrimaryGeneratedColumn, ManyToOne } from 'typeorm'

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
}
