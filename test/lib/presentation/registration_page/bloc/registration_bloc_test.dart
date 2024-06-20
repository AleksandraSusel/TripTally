import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../mocked_data.dart';
import '../../../../mocks.mocks.dart';

void main() {
  late MockCreateAccountUseCase mockCreateAccountUseCase;
  setUpAll(() {
    mockCreateAccountUseCase = MockCreateAccountUseCase();
  });

  RegistrationBloc createBloc() => RegistrationBloc(mockCreateAccountUseCase);

  blocTest<RegistrationBloc, RegistrationState>('RegistrationBloc sends the email and the passwords success',
      setUp: () {
        when(mockCreateAccountUseCase.call(mockedCreateAccountEntity)).thenAnswer((_) async => const Right(Success()));
      },
      build: createBloc,
      expect: () => const [
            RegistrationState.loading(),
            RegistrationState.success(),
          ],
      act: (bloc) => bloc.add(OnTapRegistrationEvent(
          mockedCreateAccountEntity.email, mockedCreateAccountEntity.password, mockedCreateAccountEntity.password)),
      verify: (_) {
        verify(mockCreateAccountUseCase.call(mockedCreateAccountEntity));
        verifyNoMoreInteractions(mockCreateAccountUseCase);
      });

  blocTest<RegistrationBloc, RegistrationState>('RegistrationBloc sends the email and the passwords failure',
      setUp: () {
        when(mockCreateAccountUseCase.call(mockedCreateAccountEntity))
            .thenAnswer((_) async => const Left(Failure(error: Errors.somethingWentWrong)));
      },
      build: createBloc,
      expect: () => const [
            RegistrationState.loading(),
            RegistrationState.failure(Errors.somethingWentWrong),
          ],
      act: (bloc) => bloc.add(
            OnTapRegistrationEvent(
              mockedCreateAccountEntity.email,
              mockedCreateAccountEntity.password,
              mockedCreateAccountEntity.password,
            ),
          ),
      verify: (_) {
        verify(mockCreateAccountUseCase.call(mockedCreateAccountEntity));
        verifyNoMoreInteractions(mockCreateAccountUseCase);
      });
}
