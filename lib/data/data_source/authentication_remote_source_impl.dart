import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart';
import 'package:trip_tally/domain/utils/success.dart';

import '../../domain/utils/exception.dart';
import '../../presentation/utils/enums/errors.dart';
import '../dto/user/create_user_dto.dart';

@Injectable(as: AuthenticationRemoteSource)
class AuthenticationRemoteSourceImpl implements AuthenticationRemoteSource {
  AuthenticationRemoteSourceImpl(this.firebaseAuth);

  final FirebaseAuth firebaseAuth;

  String? get userId => firebaseAuth.currentUser?.uid;

  @override
  Future<UserCredential> createUser(CreateUserDto dto) async {
    try {
      final user = await firebaseAuth.createUserWithEmailAndPassword(email: dto.email, password: dto.password);
      return user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          throw ApiException(Errors.weakPassword);
        case 'email-already-in-use':
          throw ApiException(Errors.emailInUse);
        case 'invalid-email':
          throw ApiException(Errors.invalidEmail);
        case 'operation-not-allowed':
          throw ApiException(Errors.operationNotAllowed);
        case 'unknown':
          throw ApiException(Errors.unknownError);
        default:
          throw Errors.somethingWentWrong;
      }
    } catch (e) {
      debugPrint('The error was: $e');
      throw ApiException(Errors.unknownError);
    }
  }

  @override
  Future<Success> login(LoginDto loginDto) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(email: loginDto.email, password: loginDto.password);
      return const Success();
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-disabled':
          throw ApiException(Errors.userDisabled);
        case 'user-not-found':
          throw ApiException(Errors.userNotFound);
        case 'invalid-email':
          throw ApiException(Errors.invalidEmail);
        case 'wrong-password':
          throw ApiException(Errors.wrongPassword);
        case 'unknown':
          throw ApiException(Errors.unknownError);
        default:
          throw Errors.somethingWentWrong;
      }
    } catch (e) {
      debugPrint('The error was: $e');
      throw ApiException(Errors.unknownError);
    }
  }
}
