import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/trips/trip_dto.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/entities/location/location_entity.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';

part 'trip_entity.freezed.dart';

@freezed
class TripEntity with _$TripEntity {
  const factory TripEntity({
    required String id,
    required String status,
    required LocationEntity location,
    required String userId,
    required String dateFrom,
    required String dateTo,
    required List<ExpenseEntity> expenses,
    required String transportType,
    required PriceEntity plannedCost,
    required DateTime insertedAt,
    required DateTime updatedAt,
    double? totalExpenses,
  }) = _TripEntity;

  factory TripEntity.fromDto(TripDto dto) {
    return TripEntity(
      id: dto.id,
      status: dto.status,
      location: LocationEntity.fromDto(dto.location),
      userId: dto.userId,
      dateFrom: dto.dateFrom,
      dateTo: dto.dateTo,
      expenses: dto.expenses.map(ExpenseEntity.fromDto).toList(),
      transportType: dto.transportType,
      plannedCost: PriceEntity.fromDto(dto.plannedCost),
      insertedAt: dto.insertedAt,
      updatedAt: dto.updatedAt,
      totalExpenses: double.tryParse(dto.totalExpenses ?? '0'),
    );
  }
}
