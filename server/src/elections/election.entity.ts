import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm'

@Entity({ name: 'elections' })
export default class Election {
  @PrimaryGeneratedColumn()
  id: number

  @Column()
  name: string

  @Column()
  round1_date: Date

  @Column()
  round2_date: Date

  @Column()
  election_period_id: Date

  @Column()
  show: Date

  @Column()
  type: string
}
