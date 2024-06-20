// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:trip_tally/data/api/api_client.dart' as _i10;
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart' as _i9;
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart' as _i12;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart' as _i8;
import 'package:trip_tally/domain/repositories/authentication_repo.dart' as _i11;
import 'package:trip_tally/domain/use_case/create_user_use_case.dart' as _i15;
import 'package:trip_tally/domain/use_case/login_use_case.dart' as _i14;
import 'package:trip_tally/domain/use_case/sign_out_use_case.dart' as _i13;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i19;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i20;
import 'package:trip_tally/injectable/modules/firebase_auth_module.dart' as _i18;
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart' as _i4;
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart' as _i17;
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart' as _i16;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i6;
import 'package:trip_tally/presentation/utils/router/app_router.dart' as _i7;

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
    final firebaseAuthModule = _$FirebaseAuthModule();
    final apiModule = _$ApiModule();
    final appRouterModule = _$AppRouterModule();
    gh.factory<_i3.FirebaseAuth>(() => firebaseAuthModule.instance);
    gh.factory<_i4.AppBloc>(() => _i4.AppBloc());
    gh.singleton<_i5.Dio>(() => apiModule.client);
    gh.singleton<_i6.ThemeManager>(() => _i6.ThemeManager());
    gh.lazySingleton<_i7.AppRouter>(() => appRouterModule.instance);
    gh.factory<_i8.AuthenticationRemoteSource>(() => _i9.AuthenticationRemoteSourceImpl(gh<_i3.FirebaseAuth>()));
    gh.factory<_i10.ApiClient>(() => _i10.ApiClient(gh<_i5.Dio>()));
    gh.factory<_i11.AuthenticationRepo>(() => _i12.AuthenticationRepoImpl(gh<_i8.AuthenticationRemoteSource>()));
    gh.factory<_i13.SignOutUseCase>(() => _i13.SignOutUseCase(gh<_i11.AuthenticationRepo>()));
    gh.factory<_i14.LoginUseCase>(() => _i14.LoginUseCase(gh<_i11.AuthenticationRepo>()));
    gh.factory<_i15.CreateUserUseCase>(() => _i15.CreateUserUseCase(gh<_i11.AuthenticationRepo>()));
    gh.factory<_i16.RegistrationBloc>(() => _i16.RegistrationBloc(gh<_i15.CreateUserUseCase>()));
    gh.factory<_i17.LoginBloc>(() => _i17.LoginBloc(gh<_i14.LoginUseCase>()));
    return this;
  }
}

class _$FirebaseAuthModule extends _i18.FirebaseAuthModule {}

class _$ApiModule extends _i19.ApiModule {}

class _$AppRouterModule extends _i20.AppRouterModule {}
