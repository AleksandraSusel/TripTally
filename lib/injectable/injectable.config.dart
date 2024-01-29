// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:trip_tally/data/api/api_client.dart' as _i7;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i9;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i8;
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart' as _i3;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i6;
import 'package:trip_tally/presentation/utils/router/app_router.dart' as _i4;

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
    gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
    gh.lazySingleton<_i4.AppRouter>(() => appRouterModule.instance);
    gh.singleton<_i5.Dio>(apiModule.client);
    gh.singleton<_i6.ThemeManager>(_i6.ThemeManager());
    gh.factory<_i7.ApiClient>(() => _i7.ApiClient(gh<_i5.Dio>()));
    return this;
  }
}

class _$AppRouterModule extends _i8.AppRouterModule {}

class _$ApiModule extends _i9.ApiModule {}
