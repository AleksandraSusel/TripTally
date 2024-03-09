import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart';

import '../../../../mocked_data.dart';
import '../../../../mocks.mocks.dart';

void main() {
  late MockCreateUserUseCase mockCreateUserUseCase;
  setUpAll(() {
    mockCreateUserUseCase = MockCreateUserUseCase();
  });

  RegistrationBloc createBloc() => RegistrationBloc(mockCreateUserUseCase);
  blocTest<RegistrationBloc, RegistrationState>('RegistrationBloc sends the email and the passwords success',
      setUp: () {
        when(mockCreateUserUseCase.call(mockedCreateUserEntity)).thenAnswer((_) async => const Right(Success()));
      },
      build: createBloc,
      act: (bloc) => bloc
          .add(OnTapRegistrationEvent(mockedCreateUserEntity.email, mockedCreateUserEntity.password, mockedCreateUserEntity.password)),
      verify: (_) {
        verify(mockCreateUserUseCase.call(mockedCreateUserEntity));
        verifyNoMoreInteractions(mockCreateUserUseCase);
      });
}
