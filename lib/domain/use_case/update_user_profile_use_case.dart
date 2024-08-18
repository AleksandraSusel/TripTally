import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:trip_tally/domain/entities/user/update_user_profile_entity.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class UpdateUserProfileUseCase implements UseCase<Success, UpdateUserProfileEntity> {
  const UpdateUserProfileUseCase(this._authenticationRepo);

  final AuthenticationRepo _authenticationRepo;

  @override
  Future<Either<Failure, Success>> call(UpdateUserProfileEntity entity) async {
    return (await _authenticationRepo.updateUserProfile(entity)).fold(
      Left.new,
      Right.new,
    );
  }
}
