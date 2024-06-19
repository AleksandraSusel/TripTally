import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trip_tally/data/api/api_client.dart';
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/use_case/create_account_use_case.dart';
import 'package:trip_tally/domain/use_case/login_use_case.dart';
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart';
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart';
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart';

@GenerateMocks([
  AuthenticationRepo,
  AuthenticationRemoteSource,
  LoginUseCase,
  RegistrationBloc,
  LoginBloc,
  ApiClient,
  SharedPreferences,
  CreateAccountUseCase,
  SharedPrefsUtils
])
void main() {}

class MockUser extends Mock implements User {
  MockUser({required this.uid});

  @override
  final String uid;
}

class MockUserCredential extends Mock implements UserCredential {
  MockUserCredential({this.user});

  @override
  final User? user;
}


