import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_location_entity.freezed.dart';

@freezed
class CreateLocationEntity with _$CreateLocationEntity {
  const factory CreateLocationEntity({
    required String countryCode,
    required String cityName,
  }) = _CreateLocationEntity;
}
