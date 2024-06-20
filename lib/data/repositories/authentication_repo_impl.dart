import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/dto/user/create_user_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart';
import 'package:trip_tally/domain/entities/user/create_account_entity.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';

import '../../presentation/utils/enums/errors.dart';
import '../dto/user/create_account_dto.dart';

@Injectable(as: AuthenticationRepo)
class AuthenticationRepoImpl implements AuthenticationRepo {
  AuthenticationRepoImpl(this._remoteSource);

  final AuthenticationRemoteSource _remoteSource;

  @override
  Future<Either<Failure, Success>> login(LoginEntity loginEntity) async {
    try {
      final result = await _remoteSource.login(LoginDto.fromEntity(loginEntity));
      return Right(result);
    } on ApiException catch (e) {
      return Left(Failure(error: e.failure));
    }
  }

  @override
  Future<Either<Failure, Success>> createAccount(CreateAccountEntity entity) async {
    try {
      final result = await _remoteSource.createAccount(CreateAccountDto.fromEntity(entity));
      return Right(result);
    } on ApiException catch (e) {
      return Left(Failure(error: e.failure));
    }
  }

  @override
  Future<Either<Failure, Success>> signOut() async {
    try {
      await _remoteSource.signOut();
      return const Right(Success());
    } catch (e) {
      return const Left(Failure(error: Errors.somethingWentWrong));
    }
  }
}
