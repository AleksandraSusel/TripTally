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
import 'package:trip_tally/data/api/api_client.dart' as _i9;
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart' as _i12;
import 'package:trip_tally/data/data_source/expenses_remote_source_impl.dart' as _i17;
import 'package:trip_tally/data/data_source/trips_data_source_impl.dart' as _i24;
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart' as _i14;
import 'package:trip_tally/data/repositories/expenses_repo_impl.dart' as _i19;
import 'package:trip_tally/data/repositories/trips_repo_impl.dart' as _i26;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart' as _i11;
import 'package:trip_tally/domain/data_source/expenses_remote_source.dart' as _i16;
import 'package:trip_tally/domain/data_source/trips_data_source.dart' as _i23;
import 'package:trip_tally/domain/repositories/authentication_repo.dart' as _i13;
import 'package:trip_tally/domain/repositories/expenses_repo.dart' as _i18;
import 'package:trip_tally/domain/repositories/trips_repo.dart' as _i25;
import 'package:trip_tally/domain/use_case/add_expense_use_case.dart' as _i27;
import 'package:trip_tally/domain/use_case/create_account_use_case.dart' as _i15;
import 'package:trip_tally/domain/use_case/create_trip_use_case.dart' as _i29;
import 'package:trip_tally/domain/use_case/login_use_case.dart' as _i20;
import 'package:trip_tally/domain/use_case/sign_out_use_case.dart' as _i22;
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart' as _i7;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i33;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i32;
import 'package:trip_tally/injectable/modules/firebase_auth_module.dart' as _i34;
import 'package:trip_tally/injectable/modules/shared_preferences_module.dart' as _i35;
import 'package:trip_tally/presentation/pages/add_expenses_page/bloc/add_expenses_bloc.dart' as _i28;
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart' as _i10;
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart' as _i30;
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_bloc.dart' as _i31;
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart' as _i21;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i8;
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
    gh.factory<_i7.SharedPrefsUtils>(() => _i7.SharedPrefsUtils(gh<_i6.SharedPreferences>()));
    gh.singleton<_i8.ThemeManager>(() => _i8.ThemeManager());
    gh.factory<_i9.ApiClient>(() => _i9.ApiClient(gh<_i4.Dio>()));
    gh.factory<_i10.AppBloc>(() => _i10.AppBloc(gh<_i7.SharedPrefsUtils>()));
    gh.factory<_i11.AuthenticationRemoteSource>(() => _i12.AuthenticationRemoteSourceImpl(
          gh<_i9.ApiClient>(),
          gh<_i7.SharedPrefsUtils>(),
        ));
    gh.factory<_i13.AuthenticationRepo>(() => _i14.AuthenticationRepoImpl(gh<_i11.AuthenticationRemoteSource>()));
    gh.factory<_i15.CreateAccountUseCase>(() => _i15.CreateAccountUseCase(gh<_i13.AuthenticationRepo>()));
    gh.factory<_i16.ExpensesRemoteSource>(() => _i17.ExpensesRemoteSourceImpl(gh<_i9.ApiClient>()));
    gh.factory<_i18.ExpensesRepo>(() => _i19.ExpensesRepoImpl(gh<_i16.ExpensesRemoteSource>()));
    gh.factory<_i20.LoginUseCase>(() => _i20.LoginUseCase(gh<_i13.AuthenticationRepo>()));
    gh.factory<_i21.RegistrationBloc>(() => _i21.RegistrationBloc(gh<_i15.CreateAccountUseCase>()));
    gh.factory<_i22.SignOutUseCase>(() => _i22.SignOutUseCase(gh<_i13.AuthenticationRepo>()));
    gh.factory<_i23.TripsDataSource>(() => _i24.TripsDataSourceImpl(gh<_i9.ApiClient>()));
    gh.factory<_i25.TripsRepo>(() => _i26.TripsRepoImpl(gh<_i23.TripsDataSource>()));
    gh.factory<_i27.AddExpenseUseCase>(() => _i27.AddExpenseUseCase(gh<_i18.ExpensesRepo>()));
    gh.factory<_i28.AddExpensesBloc>(() => _i28.AddExpensesBloc(gh<_i27.AddExpenseUseCase>()));
    gh.factory<_i29.CreateTripUseCase>(() => _i29.CreateTripUseCase(gh<_i25.TripsRepo>()));
    gh.factory<_i30.LoginBloc>(() => _i30.LoginBloc(gh<_i20.LoginUseCase>()));
    gh.factory<_i31.NewTripBloc>(() => _i31.NewTripBloc(gh<_i29.CreateTripUseCase>()));
    return this;
  }
}

class _$AppRouterModule extends _i32.AppRouterModule {}

class _$ApiModule extends _i33.ApiModule {}

class _$FirebaseAuthModule extends _i34.FirebaseAuthModule {}

class _$SharedPreferencesModule extends _i35.SharedPreferencesModule {}
