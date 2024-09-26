import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

void initializeMockEnvironmentWithBlocs(
  List<Object> blocInstances,
) {
  SharedPreferences.setMockInitialValues({});

  for (final blocInstance in blocInstances) {
    if (!GetIt.instance.isRegistered(instance: blocInstance)) {
      GetIt.instance.registerFactory(() => blocInstance);
    }
  }
}

void initializeMockEnvironmentWithBloc<T extends Object>(
  T blocInstance,
) {
  SharedPreferences.setMockInitialValues({});

  if (!GetIt.instance.isRegistered<T>()) {
    GetIt.instance.registerFactory<T>(() => blocInstance);
  }
}
