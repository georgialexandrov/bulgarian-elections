import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm'

@Entity({ name: 'parties' })
export default class Party {
  @PrimaryGeneratedColumn()
  id: number

  @Column()
  name: string
}
