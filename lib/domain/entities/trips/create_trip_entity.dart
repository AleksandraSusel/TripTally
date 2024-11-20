import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/entities/location/create_location_entity.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';

part 'create_trip_entity.freezed.dart';

@freezed
class CreateTripEntity with _$CreateTripEntity {
  const factory CreateTripEntity({
    required String transportType,
    required CreateLocationEntity location,
    required String dateFrom,
    required String dateTo,
    required PriceEntity plannedCost,
    required List<ExpenseEntity> expenses,
  }) = _CreateTripEntity;
}
