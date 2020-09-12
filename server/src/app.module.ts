import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { GraphQLModule } from '@nestjs/graphql'
import { join } from 'path'

import { AppController } from './app.controller'
import { AppService } from './app.service'
import Election from './elections/election.entity'
import District from './districts/district.entity'
import Candidate from './results/entities/candidate.entity'
import ElectionPeriod from './results/entities/election_period.entity'
import LocationNeighborhood from './results/entities/location_neighborhood.entity'
import Location from './results/entities/location.entity'
import MunicipalityRegion from './results/entities/municipality_region.entity'
import Party from './results/entities/party.entity'
import Protocol from './results/entities/protocol.entity'
import Section from './results/entities/section.entity'
import Vote from './results/entities/vote.entity'
import VotingLocatione from './results/entities/voting_location.entity'

import ElectionsService from './elections/elections.service'
import DistrictsService from './districts/districts.service'
import MunicipalitiesService from './municipality/municipalities.service'
import MayorMunicipalityService from './results/mayor_municipality.service'
import Municipality from './municipality/municipality.entity'

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'sqlite',
      database: '../db/regional_2019.db',
      entities: [
        Election,
        District,
        Municipality,
        Candidate,
        ElectionPeriod,
        LocationNeighborhood,
        Location,
        MunicipalityRegion,
        Party,
        Protocol,
        Section,
        Vote,
        VotingLocatione,
      ],
      logging: true,
    }),
    GraphQLModule.forRoot({
      context: ({ req }) => ({ req }),
      typePaths: ['./**/*.graphql'],
      definitions: {
        path: join(process.cwd(), 'src/graphql.ts'),
      },
      playground: true,
    }),
    TypeOrmModule.forFeature([
      Election,
      District,
      Municipality,
      Candidate,
      ElectionPeriod,
      LocationNeighborhood,
      Location,
      MunicipalityRegion,
      Party,
      Protocol,
      Section,
      Vote,
      VotingLocatione,
    ]),
  ],
  controllers: [AppController],
  providers: [AppService, ElectionsService, DistrictsService, MunicipalitiesService, MayorMunicipalityService],
})
export class AppModule {}
