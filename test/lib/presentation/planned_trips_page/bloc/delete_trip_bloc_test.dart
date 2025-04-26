import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/delete_trip_bloc.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

import '../../../../generate_mocks.mocks.dart';
import '../../../../mocked_data.dart';

void main() {
  late MockDeleteTripUseCase mockDeleteTripUseCase;

  setUp(() {
    mockDeleteTripUseCase = MockDeleteTripUseCase();
  });

  DeleteTripBloc deleteTripBloc() => DeleteTripBloc(mockDeleteTripUseCase);

  group('DeleteTripBloc', () {
    blocTest<DeleteTripBloc, BasicState<void>>(
      'emits [LoadingState, SuccessState] when DeleteTripEvent is successful',
      setUp: () => when(mockDeleteTripUseCase(any)).thenAnswer(
        (_) async => const Right(Success()),
      ),
      build: deleteTripBloc,
      act: (bloc) => bloc.add(DeleteTripEvent(mockedTripEntityV1.id)),
      expect: () => [
        const LoadingState<void>(),
        const SuccessState<void>(),
      ],
    );

    blocTest<DeleteTripBloc, BasicState<void>>(
      'emits [LoadingState, FailureState] when DeleteTripEvent fails',
      setUp: () => when(mockDeleteTripUseCase(any)).thenAnswer(
        (_) async => const Left(Failure(error: Errors.somethingWentWrong)),
      ),
      build: deleteTripBloc,
      act: (bloc) => bloc.add(DeleteTripEvent(mockedTripEntityV1.id)),
      expect: () => [
        const LoadingState<void>(),
        const FailureState<void>(Errors.somethingWentWrong),
      ],
    );
  });
}
