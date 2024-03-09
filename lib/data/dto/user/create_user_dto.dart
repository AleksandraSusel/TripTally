import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user/create_user_entity.dart';

part 'create_user_dto.freezed.dart';

part 'create_user_dto.g.dart';

@freezed
class CreateUserDto with _$CreateUserDto {
  const factory CreateUserDto({
    required String email,
    required String password,
  }) = _CreateUserDto;

  factory CreateUserDto.fromJson(Map<String, dynamic> json) => _$CreateUserDtoFromJson(json);

  factory CreateUserDto.fromEntity(CreateUserEntity entity) {
    return CreateUserDto(email: entity.email, password: entity.password);
  }
}
