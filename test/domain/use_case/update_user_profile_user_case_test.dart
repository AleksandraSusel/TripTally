import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/use_case/update_user_profile_use_case.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../generate_mocks.mocks.dart';
import '../../mocked_data.dart';

void main() {
  late MockAuthenticationRepo mockAuthenticationRepo;
  late UpdateUserProfileUseCase updateUserProfileUseCase;

  setUp(() {
    mockAuthenticationRepo = MockAuthenticationRepo();
    updateUserProfileUseCase = UpdateUserProfileUseCase(mockAuthenticationRepo);
  });

  test('UpdateUserProfileUseCase to update user profile success', () async {
    when(mockAuthenticationRepo.updateUserProfile(mockedUpdateUserProfileEntity))
        .thenAnswer((_) async => const Right(Success()));

    final result = await updateUserProfileUseCase.call(mockedUpdateUserProfileEntity);

    Success? success;
    result.fold((l) => null, (r) => success = r);
    expect(success, const Success());

    verify(mockAuthenticationRepo.updateUserProfile(mockedUpdateUserProfileEntity));
    verifyNoMoreInteractions(mockAuthenticationRepo);
  });

  test('UpdateUserProfileUseCase to update user profile failure', () async {
    when(mockAuthenticationRepo.updateUserProfile(mockedUpdateUserProfileEntity))
        .thenAnswer((_) async => const Left(Failure(error: Errors.somethingWentWrong)));

    final result = await updateUserProfileUseCase.call(mockedUpdateUserProfileEntity);

    Errors? error;
    result.fold((l) => error = l.error, (r) => null);
    expect(error, Errors.somethingWentWrong);

    verify(mockAuthenticationRepo.updateUserProfile(mockedUpdateUserProfileEntity));
    verifyNoMoreInteractions(mockAuthenticationRepo);
  });
}
