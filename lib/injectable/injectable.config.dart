// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:trip_tally/data/api/api_client.dart' as _i8;
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart' as _i10;
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart' as _i12;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart' as _i9;
import 'package:trip_tally/domain/repositories/authentication_repo.dart' as _i11;
import 'package:trip_tally/domain/use_case/create_user_use_case.dart' as _i13;
import 'package:trip_tally/domain/use_case/login_use_case.dart' as _i14;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i18;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i17;
import 'package:trip_tally/injectable/modules/firebase_auth_module.dart' as _i19;
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart' as _i3;
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart' as _i16;
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart' as _i15;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i7;
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
    final firebaseAuthModule = _$FirebaseAuthModule();
    gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
    gh.lazySingleton<_i4.AppRouter>(() => appRouterModule.instance);
    gh.singleton<_i5.Dio>(apiModule.client);
    gh.factory<_i6.FirebaseAuth>(() => firebaseAuthModule.instance);
    gh.singleton<_i7.ThemeManager>(_i7.ThemeManager());
    gh.factory<_i8.ApiClient>(() => _i8.ApiClient(gh<_i5.Dio>()));
    gh.factory<_i9.AuthenticationRemoteSource>(() => _i10.AuthenticationRemoteSourceImpl(gh<_i6.FirebaseAuth>()));
    gh.factory<_i11.AuthenticationRepo>(() => _i12.AuthenticationRepoImpl(gh<_i9.AuthenticationRemoteSource>()));
    gh.factory<_i13.CreateUserUseCase>(() => _i13.CreateUserUseCase(gh<_i11.AuthenticationRepo>()));
    gh.factory<_i14.LoginUseCase>(() => _i14.LoginUseCase(gh<_i11.AuthenticationRepo>()));
    gh.factory<_i15.RegistrationBloc>(() => _i15.RegistrationBloc(gh<_i13.CreateUserUseCase>()));
    gh.factory<_i16.LoginBloc>(() => _i16.LoginBloc(gh<_i14.LoginUseCase>()));
    return this;
  }
}

class _$AppRouterModule extends _i17.AppRouterModule {}

class _$ApiModule extends _i18.ApiModule {}

class _$FirebaseAuthModule extends _i19.FirebaseAuthModule {}
