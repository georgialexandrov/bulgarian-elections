import { Args, Resolver, Query } from '@nestjs/graphql'
import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'

import Municipality from './municipality.entity'

@Injectable()
@Resolver('municipalities')
export default class MunicipalitiesService {
  constructor(
    @InjectRepository(Municipality)
    private municipalitiesRepository: Repository<Municipality>,
  ) {}

  @Query(() => [Municipality], { name: 'municipalities' })
  findAll(): Promise<Municipality[]> {
    console.log('123')
    return this.municipalitiesRepository.find()
  }

  @Query(() => Municipality, { name: 'municipality' })
  find(@Args('id') id: number): Promise<Municipality> {
    console.log('321')
    return this.municipalitiesRepository.findOne({ id })
  }

  @Query(() => [Municipality], { name: 'district_municipalities' })
  district_municipalities(@Args('districtId') districtId: number): Promise<Municipality[]> {
    console.log('sleect')
    // return this.municipalitiesRepository.find({ 'district.id': districtId });
    return this.municipalitiesRepository.find({ where: { districtId } })
    // .innerJoinAndSelect('municipality.district', 'district')
    // .where('district.id = :id', { id: districtId })
    // .getMany();
  }
}

//   @Query(() => [District], { name: 'election_districts' })
//   election_districts(
//     @Args('electionId') electionId: number,
//   ): Promise<District[]> {
//     return this.districtsRepository.find();
//   }
// }
