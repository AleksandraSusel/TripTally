import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/dto/user/create_account_dto.dart';

part 'create_account_entity.freezed.dart';

@freezed
class CreateAccountEntity with _$CreateAccountEntity {
  const factory CreateAccountEntity({
    required String email,
    required String password,
  }) = _CreateAccountEntity;

  factory CreateAccountEntity.fromDto(CreateAccountDto dto) => CreateAccountEntity(
        email: dto.email,
        password: dto.password,
      );
}
