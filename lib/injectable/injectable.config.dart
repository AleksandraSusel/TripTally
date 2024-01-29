// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:trip_tally/data/api/api_client.dart' as _i6;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i8;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i7;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i5;
import 'package:trip_tally/presentation/utils/router/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appRouterModule = _$AppRouterModule();
    final apiModule = _$ApiModule();
    gh.lazySingleton<_i3.AppRouter>(() => appRouterModule.instance);
    gh.singleton<_i4.Dio>(apiModule.client);
    gh.singleton<_i5.ThemeManager>(_i5.ThemeManager());
    gh.factory<_i6.ApiClient>(() => _i6.ApiClient(gh<_i4.Dio>()));
    return this;
  }
}

class _$AppRouterModule extends _i7.AppRouterModule {}

class _$ApiModule extends _i8.ApiModule {}
