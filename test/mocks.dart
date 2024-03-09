import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/use_case/create_user_use_case.dart';
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart';

@GenerateMocks([
  FirebaseAuth,
  AuthenticationRepo,
  AuthenticationRemoteSource,
  CreateUserUseCase,
  RegistrationBloc,
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

class MockFirebaseException extends Fake implements FirebaseAuthException {
  MockFirebaseException(this.code);

  @override
  final String code;
}
