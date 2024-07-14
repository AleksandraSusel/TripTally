import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
import 'package:trip_tally/data/dto/user/create_account_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/entities/user/create_account_entity.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';

const mockedCreateAccountDto = CreateAccountDto(
  email: 'example@example.com',
  password: 'Password1!',
);
const mockedCreateAccountEntity = CreateAccountEntity(
  email: 'example@example.com',
  password: 'Password1!',
);
const mockedLoginEntity = LoginEntity(
  email: 'example@example4.com',
  password: 'Password1!',
);
const mockedLoginDto = LoginDto(
  email: 'example@example4.com',
  password: 'Password1!',
);

const mockedCreateTripDto = CreateTripDto(
  cityName: 'Wrocław',
  transportType: 'Samolot',
  countryCode: 'PL',
  dateFrom: '2024-08-12',
  dateTo: '2024-08-13',
  plannedCost: 3000,
);

const mockedCreateTripEntity = CreateTripEntity(
  cityName: 'Wrocław',
  transportType: 'Samolot',
  countryCode: 'PL',
  dateFrom: '2024-08-12',
  dateTo: '2024-08-13',
  plannedCost: 3000,
);
const testToken = 'eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ';
