import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/domain/utils/use_case.dart';

@injectable
class SignOutUseCase implements NoParamsUseCaseWithFailure<Success> {
  const SignOutUseCase(this._authenticationRepo);

  final AuthenticationRepo _authenticationRepo;

  @override
  Future<Either<Failure, Success>> call() async {
    return (await _authenticationRepo.signOut()).fold(
      (l) => Left(l),
      (r) => Right(r),
    );
  }
}
