import 'package:freezed_annotation/freezed_annotation.dart';

part 'geometry_dto.freezed.dart';

part 'geometry_dto.g.dart';

@freezed
class GeometryDto with _$GeometryDto {
  const factory GeometryDto({
    required List<double> coordinates,
  }) = _GeometryDto;

  factory GeometryDto.fromJson(Map<String, dynamic> json) => _$GeometryDtoFromJson(json);
}
