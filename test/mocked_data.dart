import 'package:trip_tally/data/dto/user/create_user_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/entities/user/create_user_entity.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';

const mockedCreateUserDto = CreateUserDto(
  email: 'example@example.com',
  password: 'Password1!',
);
const mockedCreateUserEntity = CreateUserEntity(
  email: 'example@example.com',
  password: 'Password1!',
);
const mockedLoginEntity = LoginEntity(
  email: 'example@example.com',
  password: 'Password1!',
);
const mockedLoginDto = LoginDto(
  email: 'example@example.com',
  password: 'Password1!',
);
const testToken = 'eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ';
