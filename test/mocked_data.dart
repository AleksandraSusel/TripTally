import 'package:trip_tally/data/dto/user/create_user_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/entities/user/create_user_entity.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';

const mockedCreateUserDto = CreateUserDto(
  email: 'email',
  password: 'password',
);
const mockedCreateUserEntity = CreateUserEntity(
  email: 'email',
  password: 'password',
);
const mockedLoginEntity = LoginEntity(
  email: 'email',
  password: 'password',
);
const mockedLoginDto = LoginDto(
  email: 'email',
  password: 'password',
);
