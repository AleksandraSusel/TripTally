import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/domain/entities/user/create_account_entity.dart';

part 'create_account_dto.freezed.dart';
part 'create_account_dto.g.dart';

@freezed
abstract class CreateAccountDto with _$CreateAccountDto {
  const factory CreateAccountDto({
    required String email,
    required String password,
  }) = _CreateAccountDto;

  factory CreateAccountDto.fromJson(Map<String, dynamic> json) => _$CreateAccountDtoFromJson(json);

  factory CreateAccountDto.fromEntity(CreateAccountEntity entity) {
    return CreateAccountDto(
      email: entity.email,
      password: entity.password,
    );
  }
}
