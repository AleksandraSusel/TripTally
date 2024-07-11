import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/data/dto/user/create_account_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';

part 'api_client.g.dart';

@injectable
@RestApi()
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio) => _ApiClient(dio);

  ///Post
  @POST('users/log_in')
  Future<String> login(@Queries() LoginDto dto);

  @POST('users/register')
  Future<String> createAccount(@Queries() CreateAccountDto dto);

  @POST('expenses')
  Future<void> addExpense(@Queries() ExpenseDto dto);

  ///Delete
  @DELETE('')
  Future<String> exampleDelete();
}
