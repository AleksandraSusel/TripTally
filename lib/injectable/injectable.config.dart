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
import 'package:shared_preferences/shared_preferences.dart' as _i6;
import 'package:trip_tally/data/api/api_client.dart' as _i8;
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart' as _i11;
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart' as _i13;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart' as _i10;
import 'package:trip_tally/domain/repositories/authentication_repo.dart' as _i12;
import 'package:trip_tally/domain/use_case/create_account_use_case.dart' as _i14;
import 'package:trip_tally/domain/use_case/login_use_case.dart' as _i15;
import 'package:trip_tally/domain/use_case/sign_out_use_case.dart' as _i17;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i20;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i19;
import 'package:trip_tally/injectable/modules/firebase_auth_module.dart' as _i21;
import 'package:trip_tally/injectable/modules/shared_preferences_module.dart' as _i22;
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart' as _i9;
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart' as _i18;
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart' as _i16;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i7;
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
    await gh.factoryAsync<_i6.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i7.ThemeManager>(() => _i7.ThemeManager());
    gh.factory<_i8.ApiClient>(() => _i8.ApiClient(gh<_i4.Dio>()));
    gh.factory<_i9.AppBloc>(() => _i9.AppBloc(gh<_i6.SharedPreferences>()));
    gh.factory<_i10.AuthenticationRemoteSource>(() => _i11.AuthenticationRemoteSourceImpl(
          gh<_i5.FirebaseAuth>(),
          gh<_i8.ApiClient>(),
          gh<_i6.SharedPreferences>(),
        ));
    gh.factory<_i12.AuthenticationRepo>(() => _i13.AuthenticationRepoImpl(gh<_i10.AuthenticationRemoteSource>()));
    gh.factory<_i14.CreateAccountUseCase>(() => _i14.CreateAccountUseCase(gh<_i12.AuthenticationRepo>()));
    gh.factory<_i15.LoginUseCase>(() => _i15.LoginUseCase(gh<_i12.AuthenticationRepo>()));
    gh.factory<_i16.RegistrationBloc>(() => _i16.RegistrationBloc(gh<_i14.CreateAccountUseCase>()));
    gh.factory<_i17.SignOutUseCase>(() => _i17.SignOutUseCase(gh<_i12.AuthenticationRepo>()));
    gh.factory<_i18.LoginBloc>(() => _i18.LoginBloc(gh<_i15.LoginUseCase>()));
    return this;
  }
}

class _$AppRouterModule extends _i19.AppRouterModule {}

class _$ApiModule extends _i20.ApiModule {}

class _$FirebaseAuthModule extends _i21.FirebaseAuthModule {}

class _$SharedPreferencesModule extends _i22.SharedPreferencesModule {}
