import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';

part 'price_dto.freezed.dart';

part 'price_dto.g.dart';

@freezed
class PriceDto with _$PriceDto {
  const factory PriceDto({
    required String currency,
    required String amount,
  }) = _PriceDto;

  factory PriceDto.fromJson(Map<String, dynamic> json) => _$PriceDtoFromJson(json);

  factory PriceDto.fromEntity(PriceEntity entity) {
    return PriceDto(
      currency: entity.currency,
      amount: entity.amount,
    );
  }
}
