import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trip_tally/data/dto/expenses/create_expenses_dto.dart';
import 'package:trip_tally/data/dto/expenses/expense_categories_dto.dart';
import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
import 'package:trip_tally/data/dto/trips/get_trips_dto.dart';
import 'package:trip_tally/data/dto/trips/trip_dto.dart';
import 'package:trip_tally/data/dto/user/create_account_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';

part 'api_client.g.dart';

@injectable
@RestApi()
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio) => _ApiClient(dio);

  ///Get
  @GET('expenses_categories')
  Future<ExpenseCategoriesDto> getExpensesCategories();

  @GET('trips')
  Future<GetTripsDto> getAllUserTrips();

  @GET('trips/{id}')
  Future<TripDto> getTripById(@Path('id') String tripId);

  @GET('trips/today')
  Future<TripDto> getTodayTrips();

  ///Post
  @POST('users/log_in')
  Future<String> login(@Queries() LoginDto dto);

  @POST('users/register')
  Future<String> createAccount(@Queries() CreateAccountDto dto);

  @POST('expenses')
  Future<void> createExpenses(@Body() CreateExpensesDto dto);

  @POST('trips')
  Future<TripDto> createTrip(@Queries() CreateTripDto dto);

  ///Put
  @PUT('users/update_profile')
  @MultiPart()
  Future<void> updateUserProfile({
    @Part() required String username,
    @Part() required String country,
    @Part(name: 'default_currency_code') required String defaultCurrencyCode,
    @Part(name: 'profile_picture') File? profilePicture,
  });

  @PUT('trips/{id}')
  Future<void> updateTrip(@Path('id') String tripId, @Body() CreateTripDto dto);

  ///Delete
  @DELETE('trips/{id}')
  Future<void> deleteTrip(@Path('id') String tripId);
}
