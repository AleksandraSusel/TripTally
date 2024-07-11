import 'package:trip_tally/data/dto/expenses/expense_dto.dart';
import 'package:trip_tally/data/dto/user/create_account_dto.dart';
import 'package:trip_tally/data/dto/user/login_dto.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/entities/user/create_account_entity.dart';
import 'package:trip_tally/domain/entities/user/login_entity.dart';

const mockedCreateAccountDto = CreateAccountDto(
  email: 'example@example.com',
  password: 'Password1!',
);
const mockedCreateAccountEntity = CreateAccountEntity(
  email: 'example@example.com',
  password: 'Password1!',
);
const mockedLoginEntity = LoginEntity(
  email: 'example@example4.com',
  password: 'Password1!',
);
const mockedLoginDto = LoginDto(
  email: 'example@example4.com',
  password: 'Password1!',
);

const mockedExpenseDto = ExpenseDto(
  name: 'Wrocław',
  date: '2022-02-20',
  amount: 300,
  currency: 'USD',
  tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
  userId: 'userId',
);
const mockedExpenseEntity = ExpenseEntity(
  name: 'Wrocław',
  date: '2022-02-20',
  amount: 300,
  currency: 'USD',
  tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
);

const testToken = 'eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ';
