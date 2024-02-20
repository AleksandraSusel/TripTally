// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:trip_tally/data/api/api_client.dart' as _i12;
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart' as _i6;
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart' as _i9;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart' as _i5;
import 'package:trip_tally/domain/repositories/authentication_repo.dart' as _i8;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i14;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i13;
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart' as _i3;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i11;
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
    gh.factory<_i5.AuthenticationRemoteSource>(() => _i6.AuthenticationRemoteSourceImpl(gh<_i7.FirebaseAuth>()));
    gh.factory<_i8.AuthenticationRepo>(() => _i9.AuthenticationRepoImpl(gh<_i5.AuthenticationRemoteSource>()));
    gh.singleton<_i10.Dio>(apiModule.client);
    gh.singleton<_i11.ThemeManager>(_i11.ThemeManager());
    gh.factory<_i12.ApiClient>(() => _i12.ApiClient(gh<_i10.Dio>()));
    return this;
  }
}

class _$AppRouterModule extends _i13.AppRouterModule {}

class _$ApiModule extends _i14.ApiModule {}
