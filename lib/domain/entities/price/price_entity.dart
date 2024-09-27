import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:trip_tally/data/dto/price/price_dto.dart';

part 'price_entity.freezed.dart';

@freezed
class PriceEntity with _$PriceEntity {
  const factory PriceEntity({
    required String currency,
    required String amount,
  }) = _PriceEntity;

  factory PriceEntity.fromDto(PriceDto dto) {
    return PriceEntity(
      currency: dto.currency,
      amount: dto.amount,
    );
  }
}
