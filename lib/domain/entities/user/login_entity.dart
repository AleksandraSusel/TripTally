import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';

part 'login_entity.freezed.dart';

@freezed
abstract class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    required String email,
    required String password,
  }) = _LoginEntity;

  factory LoginEntity.fromDto(LoginDto dto) => LoginEntity(email: dto.email, password: dto.password);
}
