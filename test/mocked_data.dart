import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:trip_tally/data/dto/expenses/create_expenses_dto.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/data/dto/location/location_dto.dart';
import 'package:trip_tally/data/dto/osm_map/geometry_dto.dart';
import 'package:trip_tally/data/dto/osm_map/osm_response_dto.dart';
import 'package:trip_tally/data/dto/osm_map/place_address_dto.dart';
import 'package:trip_tally/data/dto/osm_map/place_dto.dart';
import 'package:trip_tally/data/dto/osm_map/place_extra_tags_dto.dart';
import 'package:trip_tally/data/dto/price/price_dto.dart';
import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
import 'package:trip_tally/data/dto/trips/get_trips_dto.dart';
import 'package:trip_tally/data/dto/trips/trip_dto.dart';
import 'package:trip_tally/data/dto/user/create_account_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/data/dto/user/update_user_profile_dto.dart';
import 'package:trip_tally/domain/entities/expenses/expense_categories_entity.dart';
import 'package:trip_tally/domain/entities/expenses/expense_category_entity.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/entities/location/location_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/coordinates_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_address_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_extra_tags_entity.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
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
  price: PriceDto(
    amount: '300',
    currency: 'USD',
  ),
  tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
  categoryId: '9690386d-e0b5-46e5-98a1-a9cf5fb545f90',
);

const mockedCreateExpensesDto = CreateExpensesDto(expenses: [mockedExpenseDto, mockedExpenseDto]);

const mockedExpenseEntity = ExpenseEntity(
  name: 'Wrocław',
  date: '2022-02-20',
  price: PriceEntity(
    amount: '300',
    currency: 'USD',
  ),
  tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
  categoryId: '9690386d-e0b5-46e5-98a1-a9cf5fb545f90',
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

const mockedExpenseCategoriesEntities = ExpenseCategoriesEntity(
  categories: [
    ExpenseCategoryEntity(id: '1-2-3', name: 'Food', translationKey: 'Expense.food'),
    ExpenseCategoryEntity(id: '2-3-4', name: 'Transport', translationKey: 'Expense.transport'),
    ExpenseCategoryEntity(id: '3-4-5', name: 'Accommodation', translationKey: 'Expense.accommodation'),
  ],
);

final TripDto mockedTripDtoV1 = TripDto(
  id: '123',
  status: 'planned',
  location: LocationDto(
    id: 'loc123',
    userId: 'user123',
    countryCode: 'US',
    cityName: 'New York',
    insertedAt: DateTime(2024),
    updatedAt: DateTime(2024),
  ),
  userId: 'user123',
  dateFrom: '2024-10-29',
  dateTo: '2024-10-30',
  expenses: [],
  transportType: 'Airplane',
  plannedCost: const PriceDto(currency: 'USD', amount: '1200.57'),
  insertedAt: DateTime(2024),
  updatedAt: DateTime(2024),
);
final TripDto mockedTripDtoV2 = TripDto(
  id: '123',
  status: 'planned',
  location: LocationDto(
    id: 'loc123',
    userId: 'user123',
    countryCode: 'PL',
    cityName: 'Warszaw',
    insertedAt: DateTime(2024),
    updatedAt: DateTime(2024),
  ),
  userId: 'user123',
  dateFrom: '2024-10-05',
  dateTo: '2024-10-10',
  expenses: [],
  transportType: 'Bus',
  plannedCost: const PriceDto(currency: 'PLN', amount: '2400'),
  insertedAt: DateTime(2024),
  updatedAt: DateTime(2024),
);
final TripDto mockedTripDtoV3 = TripDto(
  id: '123',
  status: 'planned',
  location: LocationDto(
    id: 'loc123',
    userId: 'user123',
    countryCode: 'GB',
    cityName: 'Big Ben',
    insertedAt: DateTime(2024),
    updatedAt: DateTime(2024),
  ),
  userId: 'user123',
  dateFrom: '2024-11-10',
  dateTo: '2024-11-15',
  expenses: [],
  transportType: 'car',
  plannedCost: const PriceDto(currency: 'GBP', amount: '2000'),
  insertedAt: DateTime(2024),
  updatedAt: DateTime(2024),
);

final List<TripDto> mockedTripDtoList = [
  mockedTripDtoV1,
  mockedTripDtoV2,
  mockedTripDtoV3,
];

final TripEntity mockedTripEntityV1 = TripEntity(
  id: '123',
  status: 'planned',
  location: LocationEntity(
    id: 'loc123',
    userId: 'user123',
    countryCode: 'US',
    cityName: 'New York',
    insertedAt: DateTime(2024),
    updatedAt: DateTime(2024),
  ),
  userId: 'user123',
  dateFrom: '2024-10-29',
  dateTo: '2024-10-30',
  expenses: [],
  transportType: 'Airplane',
  plannedCost: const PriceEntity(currency: 'USD', amount: '1200.57'),
  insertedAt: DateTime(2024),
  updatedAt: DateTime(2024),
);
final TripEntity mockedTripEntityV2 = TripEntity(
  id: '123',
  status: 'planned',
  location: LocationEntity(
    id: 'loc123',
    userId: 'user123',
    countryCode: 'PL',
    cityName: 'Warszaw',
    insertedAt: DateTime(2024),
    updatedAt: DateTime(2024),
  ),
  userId: 'user123',
  dateFrom: '2024-10-05',
  dateTo: '2024-10-10',
  expenses: [],
  transportType: 'Bus',
  plannedCost: const PriceEntity(currency: 'PLN', amount: '2400'),
  insertedAt: DateTime(2024),
  updatedAt: DateTime(2024),
);
final TripEntity mockedTripEntityV3 = TripEntity(
  id: '123',
  status: 'planned',
  location: LocationEntity(
    id: 'loc123',
    userId: 'user123',
    countryCode: 'GB',
    cityName: 'Big Ben',
    insertedAt: DateTime(2024),
    updatedAt: DateTime(2024),
  ),
  userId: 'user123',
  dateFrom: '2024-11-10',
  dateTo: '2024-11-15',
  expenses: [],
  transportType: 'car',
  plannedCost: const PriceEntity(currency: 'GBP', amount: '2000'),
  insertedAt: DateTime(2024),
  updatedAt: DateTime(2024),
);

final List<TripEntity> mockedTripEntityList = [
  mockedTripEntityV1,
  mockedTripEntityV2,
  mockedTripEntityV3,
];

final mockedGetTripsDto = GetTripsDto(trips: mockedTripDtoList);
