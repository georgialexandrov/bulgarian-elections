import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm'

@Entity({ name: 'election_periods' })
export default class ElectionPeriod {
  @PrimaryGeneratedColumn()
  id: number

  @Column()
  name: string
}
