import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/welcome_page/bloc/update_user_profile_bloc.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../generate_mocks.mocks.dart';
import '../../../../mocked_data.dart';

void main() {
  late MockUpdateUserProfileUseCase mockUpdateUserProfileUseCase;

  setUpAll(() {
    mockUpdateUserProfileUseCase = MockUpdateUserProfileUseCase();
  });

  UpdateUserProfileBloc createBloc() => UpdateUserProfileBloc(mockUpdateUserProfileUseCase);

  blocTest<UpdateUserProfileBloc, UpdateUserProfileState>(
    'OnUpdateUserProfileEvent updates user profile successfully',
    setUp: () {
      when(mockUpdateUserProfileUseCase(any)).thenAnswer((_) async => const Right(Success()));
    },
    build: createBloc,
    act: (bloc) => bloc.add(
      OnUpdateUserProfileEvent(
        username: mockedUpdateUserProfileEntity.username,
        country: mockedUpdateUserProfileEntity.country,
        currencyCode: mockedUpdateUserProfileEntity.defaultCurrencyCode,
        profilePicture: mockedUpdateUserProfileEntity.profilePicture,
      ),
    ),
    expect: () => const [
      UpdateUserProfileState.success(),
    ],
    verify: (_) {
      verify(mockUpdateUserProfileUseCase(any)).called(1);
      verifyNoMoreInteractions(mockUpdateUserProfileUseCase);
    },
  );

  blocTest<UpdateUserProfileBloc, UpdateUserProfileState>(
    'OnUpdateUserProfileEvent fails to update user profile',
    setUp: () {
      when(mockUpdateUserProfileUseCase.call(any)).thenAnswer(
        (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
      );
    },
    build: createBloc,
    act: (bloc) => bloc.add(
      const OnUpdateUserProfileEvent(
        username: 'TestUser',
        country: 'United States',
        currencyCode: 'USD',
      ),
    ),
    expect: () => const [
      UpdateUserProfileState.failure(Errors.somethingWentWrong),
    ],
    verify: (_) {
      verify(mockUpdateUserProfileUseCase.call(any)).called(1);
      verifyNoMoreInteractions(mockUpdateUserProfileUseCase);
    },
  );
}
