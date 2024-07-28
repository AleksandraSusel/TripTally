// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;
import 'package:trip_tally/data/api/api_client.dart' as _i16;
import 'package:trip_tally/data/api/osm_client.dart' as _i6;
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart' as _i19;
import 'package:trip_tally/data/data_source/osm_map_data_source_impl.dart' as _i8;
import 'package:trip_tally/data/data_source/trips_data_source_impl.dart' as _i28;
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart' as _i21;
import 'package:trip_tally/data/repositories/osm_map_repository_impl.dart' as _i10;
import 'package:trip_tally/data/repositories/trips_repo_impl.dart' as _i30;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart' as _i18;
import 'package:trip_tally/domain/data_source/osm_map_data_source.dart' as _i7;
import 'package:trip_tally/domain/data_source/trips_data_source.dart' as _i27;
import 'package:trip_tally/domain/repositories/authentication_repo.dart' as _i20;
import 'package:trip_tally/domain/repositories/osm_map_repository.dart' as _i9;
import 'package:trip_tally/domain/repositories/trips_repo.dart' as _i29;
import 'package:trip_tally/domain/use_case/create_account_use_case.dart' as _i22;
import 'package:trip_tally/domain/use_case/create_trip_use_case.dart' as _i32;
import 'package:trip_tally/domain/use_case/login_use_case.dart' as _i23;
import 'package:trip_tally/domain/use_case/osm_map_use_case.dart' as _i11;
import 'package:trip_tally/domain/use_case/sign_out_use_case.dart' as _i26;
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart' as _i14;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i35;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i34;
import 'package:trip_tally/injectable/modules/firebase_auth_module.dart' as _i37;
import 'package:trip_tally/injectable/modules/osm_module.dart' as _i36;
import 'package:trip_tally/injectable/modules/shared_preferences_module.dart' as _i38;
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart' as _i31;
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart' as _i17;
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_bloc.dart' as _i33;
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart' as _i25;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i15;
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart' as _i24;
import 'package:trip_tally/presentation/utils/permissions/permission_service.dart' as _i12;
import 'package:trip_tally/presentation/utils/router/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appRouterModule = _$AppRouterModule();
    final apiModule = _$ApiModule();
    final osmModule = _$OsmModule();
    final firebaseAuthModule = _$FirebaseAuthModule();
    final sharedPreferencesModule = _$SharedPreferencesModule();
    gh.lazySingleton<_i3.AppRouter>(() => appRouterModule.instance);
    gh.singleton<_i4.Dio>(() => apiModule.client);
    gh.singleton<_i4.Dio>(
      () => osmModule.client,
      instanceName: 'OsmDio',
    );
    gh.factory<_i5.FirebaseAuth>(() => firebaseAuthModule.instance);
    gh.factory<_i6.OsmClient>(() => _i6.OsmClient(gh<_i4.Dio>(instanceName: 'OsmDio')));
    gh.factory<_i7.OsmMapDataSource>(() => _i8.OsmMapDataSourceImpl(gh<_i6.OsmClient>()));
    gh.factory<_i9.OsmMapRepository>(() => _i10.OsmMapRepositoryImpl(gh<_i7.OsmMapDataSource>()));
    gh.factory<_i11.OsmMapUseCase>(() => _i11.OsmMapUseCase(gh<_i9.OsmMapRepository>()));
    gh.lazySingleton<_i12.PermissionsService>(() => _i12.PermissionsService());
    await gh.factoryAsync<_i13.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.factory<_i14.SharedPrefsUtils>(() => _i14.SharedPrefsUtils(gh<_i13.SharedPreferences>()));
    gh.singleton<_i15.ThemeManager>(() => _i15.ThemeManager());
    gh.factory<_i16.ApiClient>(() => _i16.ApiClient(gh<_i4.Dio>()));
    gh.factory<_i17.AppBloc>(() => _i17.AppBloc(gh<_i14.SharedPrefsUtils>()));
    gh.factory<_i18.AuthenticationRemoteSource>(() => _i19.AuthenticationRemoteSourceImpl(
          gh<_i16.ApiClient>(),
          gh<_i14.SharedPrefsUtils>(),
        ));
    gh.factory<_i20.AuthenticationRepo>(() => _i21.AuthenticationRepoImpl(gh<_i18.AuthenticationRemoteSource>()));
    gh.factory<_i22.CreateAccountUseCase>(() => _i22.CreateAccountUseCase(gh<_i20.AuthenticationRepo>()));
    gh.factory<_i23.LoginUseCase>(() => _i23.LoginUseCase(gh<_i20.AuthenticationRepo>()));
    gh.factory<_i24.PermissionsBloc>(() => _i24.PermissionsBloc(gh<_i12.PermissionsService>()));
    gh.factory<_i25.RegistrationBloc>(() => _i25.RegistrationBloc(gh<_i22.CreateAccountUseCase>()));
    gh.factory<_i26.SignOutUseCase>(() => _i26.SignOutUseCase(gh<_i20.AuthenticationRepo>()));
    gh.factory<_i27.TripsDataSource>(() => _i28.TripsDataSourceImpl(gh<_i16.ApiClient>()));
    gh.factory<_i29.TripsRepo>(() => _i30.TripsRepoImpl(gh<_i27.TripsDataSource>()));
    gh.factory<_i31.AuthenticationBloc>(() => _i31.AuthenticationBloc(gh<_i23.LoginUseCase>()));
    gh.factory<_i32.CreateTripUseCase>(() => _i32.CreateTripUseCase(gh<_i29.TripsRepo>()));
    gh.factory<_i33.NewTripBloc>(() => _i33.NewTripBloc(gh<_i32.CreateTripUseCase>()));
    return this;
  }
}

class _$AppRouterModule extends _i34.AppRouterModule {}

class _$ApiModule extends _i35.ApiModule {}

class _$OsmModule extends _i36.OsmModule {}

class _$FirebaseAuthModule extends _i37.FirebaseAuthModule {}

class _$SharedPreferencesModule extends _i38.SharedPreferencesModule {}
