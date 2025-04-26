import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/data/dto/location/location_dto.dart';
import 'package:trip_tally/data/dto/price/price_dto.dart';

part 'trip_dto.freezed.dart';
part 'trip_dto.g.dart';

@freezed
abstract class TripDto with _$TripDto {
  const factory TripDto({
    required String id,
    required String status,
    required LocationDto location,
    required String userId,
    required String dateFrom,
    required String dateTo,
    required List<ExpenseDto> expenses,
    required String transportType,
    required PriceDto plannedCost,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? totalExpenses,
  }) = _TripDto;

  factory TripDto.fromJson(Map<String, dynamic> json) => _$TripDtoFromJson(json);
}
