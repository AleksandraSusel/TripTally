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
import 'package:shared_preferences/shared_preferences.dart' as _i7;
import 'package:trip_tally/data/api/api_client.dart' as _i10;
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart' as _i13;
import 'package:trip_tally/data/data_source/trips_data_source_impl.dart' as _i22;
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart' as _i15;
import 'package:trip_tally/data/repositories/trips_repo_impl.dart' as _i24;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart' as _i12;
import 'package:trip_tally/domain/data_source/trips_data_source.dart' as _i21;
import 'package:trip_tally/domain/repositories/authentication_repo.dart' as _i14;
import 'package:trip_tally/domain/repositories/trips_repo.dart' as _i23;
import 'package:trip_tally/domain/use_case/create_account_use_case.dart' as _i16;
import 'package:trip_tally/domain/use_case/create_trip_use_case.dart' as _i26;
import 'package:trip_tally/domain/use_case/login_use_case.dart' as _i17;
import 'package:trip_tally/domain/use_case/sign_out_use_case.dart' as _i20;
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart' as _i8;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i29;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i28;
import 'package:trip_tally/injectable/modules/firebase_auth_module.dart' as _i30;
import 'package:trip_tally/injectable/modules/shared_preferences_module.dart' as _i31;
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart' as _i25;
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart' as _i11;
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_bloc.dart' as _i27;
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart' as _i19;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i9;
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart' as _i18;
import 'package:trip_tally/presentation/utils/permissions/permission_service.dart' as _i6;
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
    final firebaseAuthModule = _$FirebaseAuthModule();
    final sharedPreferencesModule = _$SharedPreferencesModule();
    gh.lazySingleton<_i3.AppRouter>(() => appRouterModule.instance);
    gh.singleton<_i4.Dio>(() => apiModule.client);
    gh.factory<_i5.FirebaseAuth>(() => firebaseAuthModule.instance);
    gh.lazySingleton<_i6.PermissionsService>(() => _i6.PermissionsService());
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.factory<_i8.SharedPrefsUtils>(() => _i8.SharedPrefsUtils(gh<_i7.SharedPreferences>()));
    gh.singleton<_i9.ThemeManager>(() => _i9.ThemeManager());
    gh.factory<_i10.ApiClient>(() => _i10.ApiClient(gh<_i4.Dio>()));
    gh.factory<_i11.AppBloc>(() => _i11.AppBloc(gh<_i8.SharedPrefsUtils>()));
    gh.factory<_i12.AuthenticationRemoteSource>(() => _i13.AuthenticationRemoteSourceImpl(
          gh<_i10.ApiClient>(),
          gh<_i8.SharedPrefsUtils>(),
        ));
    gh.factory<_i14.AuthenticationRepo>(() => _i15.AuthenticationRepoImpl(gh<_i12.AuthenticationRemoteSource>()));
    gh.factory<_i16.CreateAccountUseCase>(() => _i16.CreateAccountUseCase(gh<_i14.AuthenticationRepo>()));
    gh.factory<_i17.LoginUseCase>(() => _i17.LoginUseCase(gh<_i14.AuthenticationRepo>()));
    gh.factory<_i18.PermissionsBloc>(() => _i18.PermissionsBloc(gh<_i6.PermissionsService>()));
    gh.factory<_i19.RegistrationBloc>(() => _i19.RegistrationBloc(gh<_i16.CreateAccountUseCase>()));
    gh.factory<_i20.SignOutUseCase>(() => _i20.SignOutUseCase(gh<_i14.AuthenticationRepo>()));
    gh.factory<_i21.TripsDataSource>(() => _i22.TripsDataSourceImpl(gh<_i10.ApiClient>()));
    gh.factory<_i23.TripsRepo>(() => _i24.TripsRepoImpl(gh<_i21.TripsDataSource>()));
    gh.factory<_i25.AuthenticationBloc>(() => _i25.AuthenticationBloc(gh<_i17.LoginUseCase>()));
    gh.factory<_i26.CreateTripUseCase>(() => _i26.CreateTripUseCase(gh<_i23.TripsRepo>()));
    gh.factory<_i27.NewTripBloc>(() => _i27.NewTripBloc(gh<_i26.CreateTripUseCase>()));
    return this;
  }
}

class _$AppRouterModule extends _i28.AppRouterModule {}

class _$ApiModule extends _i29.ApiModule {}

class _$FirebaseAuthModule extends _i30.FirebaseAuthModule {}

class _$SharedPreferencesModule extends _i31.SharedPreferencesModule {}
