import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/data/dto/osm_map/geometry_dto.dart';
import 'package:trip_tally/data/dto/osm_map/osm_response_dto.dart';
import 'package:trip_tally/data/dto/osm_map/place_address_dto.dart';
import 'package:trip_tally/data/dto/osm_map/place_dto.dart';
import 'package:trip_tally/data/dto/osm_map/place_extra_tags_dto.dart';
import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
import 'package:trip_tally/data/dto/user/create_account_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/data/dto/user/update_user_profile_dto.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/coordinates_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_address_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_extra_tags_entity.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/entities/user/create_account_entity.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';
import 'package:trip_tally/domain/entities/user/update_user_profile_entity.dart';

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

const mockedExpenseDto = ExpenseDto(
  name: 'Wrocław',
  date: '2022-02-20',
  amount: 300,
  currency: 'USD',
  tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
);
const mockedExpenseEntity = ExpenseEntity(
  name: 'Wrocław',
  date: '2022-02-20',
  amount: 300,
  currency: 'USD',
  tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
);

const mockedCreateTripDto = CreateTripDto(
  cityName: 'Wrocław',
  transportType: 'Samolot',
  countryCode: 'PL',
  dateFrom: '2024-08-12',
  dateTo: '2024-08-13',
  amount: 3000,
  currency: 'USD',
);

const mockedCreateTripEntity = CreateTripEntity(
  cityName: 'Wrocław',
  transportType: 'Samolot',
  countryCode: 'PL',
  dateFrom: '2024-08-12',
  dateTo: '2024-08-13',
  plannedCost: 3000,
  currency: 'USD',
);
const testToken = 'eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ';

const mockedPlaceAddressEntityV1 = PlaceAddressEntity(
  houseNumber: '123',
  road: 'Elm Street',
  quarter: 'Downtown',
  suburb: 'Central',
  city: 'Springfield',
  state: 'Illinois',
  postcode: '62704',
  country: 'United States',
  countryCode: 'US',
);

const mockedPlaceAddressEntityV2 = PlaceAddressEntity(
  houseNumber: '456',
  road: 'Maple Avenue',
  quarter: 'West End',
  suburb: 'Westville',
  city: 'Los Angeles',
  state: 'California',
  postcode: '90001',
  country: 'United States',
  countryCode: 'US',
);

const mockedCoordinatesEntityV1 = CoordinatesEntity(lat: 39.7817, lon: -89.6501); // Springfield, IL
const mockedCoordinatesEntityV2 = CoordinatesEntity(lat: 34.0522, lon: -118.2437); // Los Angeles, CA

const mockedPlaceEntityV1 = PlaceEntity(
  name: 'Springfield Central Library',
  displayName: 'Springfield Central Library, Elm Street, Springfield, IL',
  category: 'Library',
  type: 'Public',
  address: mockedPlaceAddressEntityV1,
  coordinates: mockedCoordinatesEntityV1,
  extraTags: PlaceExtraTagsEntity(),
);

const mockedPlaceEntityV2 = PlaceEntity(
  name: 'Westville Community Park',
  displayName: 'Westville Community Park, Maple Avenue, Los Angeles, CA',
  category: 'Park',
  type: 'Public',
  address: mockedPlaceAddressEntityV2,
  coordinates: mockedCoordinatesEntityV2,
  extraTags: PlaceExtraTagsEntity(),
);

const mockedPlaceAddressDtoV1 = PlaceAddressDto(
  houseNumber: '123',
  road: 'Elm Street',
  quarter: 'Downtown',
  suburb: 'Central',
  city: 'Springfield',
  state: 'Illinois',
  postcode: '62704',
  country: 'United States',
  countryCode: 'US',
);

const mockPlaceDtoV1 = PlaceDto(
  name: 'Springfield Central Library',
  displayName: 'Springfield Central Library, Elm Street, Springfield, IL',
  category: 'Library',
  type: 'Public',
  address: mockedPlaceAddressDtoV1,
  extratags: PlaceExtraTagsDto(),
);

const mockedFeatureDto = FeatureDto(
  properties: mockPlaceDtoV1,
  geometry: GeometryDto(coordinates: [-89.6501, 39.7817]),
);

final xFile = XFile('/example/image.jpg');
final mockedUpdateUserProfileEntity = UpdateUserProfileEntity(
  username: 'username',
  country: 'country',
  defaultCurrencyCode: 'USD',
  profilePicture: xFile,
);
final file = File(XFile('/example/image.jpg').path);
final mockedUpdateUserProfileDto = UpdateUserProfileDto(
  username: 'username',
  country: 'country',
  defaultCurrencyCode: 'USD',
  profilePicture: file,
);
