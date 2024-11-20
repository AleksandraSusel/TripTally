import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/data/dto/location/create_location_dto.dart';
import 'package:trip_tally/data/dto/price/price_dto.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';

part 'create_trip_dto.freezed.dart';

part 'create_trip_dto.g.dart';

@freezed
class CreateTripDto with _$CreateTripDto {
  const factory CreateTripDto({
    required String transportType,
    required CreateLocationDto location,
    required String dateFrom,
    required String dateTo,
    required PriceDto plannedCost,
    required List<ExpenseDto> expenses,
  }) = _CreateAddTripDto;

  factory CreateTripDto.fromJson(Map<String, dynamic> json) => _$CreateTripDtoFromJson(json);

  factory CreateTripDto.fromEntity(CreateTripEntity entity) {
    return CreateTripDto(
      location: CreateLocationDto.fromEntity(entity.location),
      transportType: entity.transportType,
      dateFrom: entity.dateFrom,
      dateTo: entity.dateTo,
      plannedCost: PriceDto.fromEntity(entity.plannedCost),
      expenses: entity.expenses.map(ExpenseDto.fromEntity).toList(),
    );
  }
}
