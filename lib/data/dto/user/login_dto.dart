import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
abstract class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String email,
    required String password,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);

  factory LoginDto.fromEntity(LoginEntity entity) {
    return LoginDto(
      email: entity.email,
      password: entity.password,
    );
  }
}
