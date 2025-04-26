import 'dart:io';

import 'package:flutter/foundation.dart';

void main(List<String> arguments) {
  if (arguments.length < 3) {
    debugPrint(
      'Usage: dart generate.dart <file_name> <entity_name> <dto_name>',
    );
    return;
  }
  const appName = 'trip_tally';
  final fileName = arguments[0];
  final pascalFileName = toPascalCase(arguments[0]);
  final pascalEntityName = toPascalCase(arguments[1]);
  final pascalDtoName = toPascalCase(arguments[2]);

  final dataSourceImplContent = '''
import 'package:injectable/injectable.dart';
import 'package:$appName/domain/data_source/${fileName}_data_source.dart';

@Injectable(as: ${pascalFileName}DataSource)
class ${pascalFileName}DataSourceImpl extends ${pascalFileName}DataSource {
  @override
  Future<$pascalDtoName> get() async {
    throw UnimplementedError();
  }
}
''';

  final repositoryImplContent = '''
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:$appName/domain/repositories/${fileName}_repository.dart';
import 'package:trip_tally/domain/utils/failure.dart';

@Injectable(as: ${pascalFileName}Repository)
class ${pascalFileName}RepositoryImpl extends ${pascalFileName}Repository {
  @override
  Future<Either<Failure, $pascalEntityName>> get() async {
    throw UnimplementedError();
  }
}
''';

  final dataSourceContent = '''
abstract class ${pascalFileName}DataSource {
  Future<$pascalDtoName> get();
}
''';

  final repositoryContent = '''
import 'package:dartz/dartz.dart';
import 'package:trip_tally/domain/utils/failure.dart';

abstract class ${pascalFileName}Repository {
  Future<Either<Failure, $pascalEntityName>> get();
}
''';

  final useCaseContent = '''
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/domain/repositories/${fileName}_repository.dart';
import 'package:trip_tally/domain/utils/failure.dart';
import 'package:trip_tally/domain/utils/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class ${pascalFileName}UseCase implements UseCase<$pascalEntityName, String> {
  const ${pascalFileName}UseCase(this._${lowerCapitalize(pascalFileName)}Repository);

  final ${pascalFileName}Repository _${lowerCapitalize(pascalFileName)}Repository;

  @override
  Future<Either<Failure, $pascalEntityName>> call(String query) async {
    return (await _${lowerCapitalize(pascalFileName)}Repository.get()).fold(
      (failure) => Left(failure),
      (entity) => Right(entity),
    );
  }
}
''';

  final dataSourceImplPath = 'lib/data/data_source/${fileName}_data_source_impl.dart';
  final repositoryImplPath = 'lib/data/repositories/${fileName}_repository_impl.dart';
  final dataSourcePath = 'lib/domain/data_source/${fileName}_data_source.dart';
  final repositoryPath = 'lib/domain/repositories/${fileName}_repository.dart';
  final useCasePath = 'lib/domain/use_case/${fileName}_use_case.dart';

  createFile(dataSourceImplPath, dataSourceImplContent);
  createFile(repositoryImplPath, repositoryImplContent);
  createFile(dataSourcePath, dataSourceContent);
  createFile(repositoryPath, repositoryContent);
  createFile(useCasePath, useCaseContent);

  debugPrint('Files generated successfully!');
}

String toPascalCase(String input) {
  return input.split('_').map((word) => word[0].toUpperCase() + word.substring(1)).join();
}

String lowerCapitalize(String word) {
  return word[0].toLowerCase() + word.substring(1);
}

void createFile(String path, String content) {
  File(path)
    ..createSync(recursive: true)
    ..writeAsStringSync(content);
}
