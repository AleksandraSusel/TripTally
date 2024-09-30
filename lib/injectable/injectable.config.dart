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
import 'package:shared_preferences/shared_preferences.dart' as _i12;
import 'package:trip_tally/data/api/api_client.dart' as _i16;
import 'package:trip_tally/data/api/osm_client.dart' as _i6;
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart' as _i19;
import 'package:trip_tally/data/data_source/expenses_remote_source_impl.dart' as _i24;
import 'package:trip_tally/data/data_source/osm_map_data_source_impl.dart' as _i8;
import 'package:trip_tally/data/data_source/trips_data_source_impl.dart' as _i34;
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart' as _i21;
import 'package:trip_tally/data/repositories/expenses_repo_impl.dart' as _i26;
import 'package:trip_tally/data/repositories/osm_map_repository_impl.dart' as _i10;
import 'package:trip_tally/data/repositories/trips_repo_impl.dart' as _i36;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart' as _i18;
import 'package:trip_tally/domain/data_source/expenses_remote_source.dart' as _i23;
import 'package:trip_tally/domain/data_source/osm_map_data_source.dart' as _i7;
import 'package:trip_tally/domain/data_source/trips_data_source.dart' as _i33;
import 'package:trip_tally/domain/repositories/authentication_repo.dart' as _i20;
import 'package:trip_tally/domain/repositories/expenses_repo.dart' as _i25;
import 'package:trip_tally/domain/repositories/osm_map_repository.dart' as _i9;
import 'package:trip_tally/domain/repositories/trips_repo.dart' as _i35;
import 'package:trip_tally/domain/use_case/create_account_use_case.dart' as _i22;
import 'package:trip_tally/domain/use_case/create_expense_use_case.dart' as _i39;
import 'package:trip_tally/domain/use_case/create_trip_use_case.dart' as _i40;
import 'package:trip_tally/domain/use_case/get_expense_categories_use_case.dart' as _i27;
import 'package:trip_tally/domain/use_case/location_suggestions_use_case.dart' as _i28;
import 'package:trip_tally/domain/use_case/login_use_case.dart' as _i29;
import 'package:trip_tally/domain/use_case/sign_out_use_case.dart' as _i32;
import 'package:trip_tally/domain/use_case/update_user_profile_use_case.dart' as _i37;
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart' as _i13;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i47;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i46;
import 'package:trip_tally/injectable/modules/firebase_auth_module.dart' as _i49;
import 'package:trip_tally/injectable/modules/osm_module.dart' as _i48;
import 'package:trip_tally/injectable/modules/shared_preferences_module.dart' as _i50;
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart' as _i38;
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart' as _i17;
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_bloc.dart' as _i44;
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/get_expense_categories_bloc.dart' as _i41;
import 'package:trip_tally/presentation/pages/create_trip_page/bloc/create_trip_bloc.dart' as _i45;
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_bloc.dart' as _i42;
import 'package:trip_tally/presentation/pages/welcome_page/bloc/update_user_profile_bloc.dart' as _i43;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i15;
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart' as _i31;
import 'package:trip_tally/presentation/utils/permissions/permission_service.dart' as _i11;
import 'package:trip_tally/presentation/utils/router/app_router.dart' as _i3;
import 'package:trip_tally/presentation/utils/test_manager.dart' as _i14;
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/osm_bloc/osm_suggestions_cubit.dart' as _i30;

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
    gh.lazySingleton<_i11.PermissionsService>(() => _i11.PermissionsService());
    await gh.factoryAsync<_i12.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.factory<_i13.SharedPrefsUtils>(() => _i13.SharedPrefsUtils(gh<_i12.SharedPreferences>()));
    gh.factory<_i14.TestsManager>(() => _i14.TestsManager());
    gh.singleton<_i15.ThemeManager>(() => _i15.ThemeManager());
    gh.factory<_i16.ApiClient>(() => _i16.ApiClient(gh<_i4.Dio>()));
    gh.factory<_i17.AppBloc>(() => _i17.AppBloc(gh<_i13.SharedPrefsUtils>()));
    gh.factory<_i18.AuthenticationRemoteSource>(() => _i19.AuthenticationRemoteSourceImpl(
          gh<_i16.ApiClient>(),
          gh<_i13.SharedPrefsUtils>(),
        ));
    gh.factory<_i20.AuthenticationRepo>(() => _i21.AuthenticationRepoImpl(gh<_i18.AuthenticationRemoteSource>()));
    gh.factory<_i22.CreateAccountUseCase>(() => _i22.CreateAccountUseCase(gh<_i20.AuthenticationRepo>()));
    gh.factory<_i23.ExpensesRemoteSource>(() => _i24.ExpensesRemoteSourceImpl(gh<_i16.ApiClient>()));
    gh.factory<_i25.ExpensesRepo>(() => _i26.ExpensesRepoImpl(gh<_i23.ExpensesRemoteSource>()));
    gh.factory<_i27.GetExpenseCategoriesUseCase>(() => _i27.GetExpenseCategoriesUseCase(gh<_i25.ExpensesRepo>()));
    gh.factory<_i28.LocationSuggestionsUseCase>(() => _i28.LocationSuggestionsUseCase(gh<_i9.OsmMapRepository>()));
    gh.factory<_i29.LoginUseCase>(() => _i29.LoginUseCase(gh<_i20.AuthenticationRepo>()));
    gh.factory<_i30.OsmSuggestionsCubit>(() => _i30.OsmSuggestionsCubit(gh<_i28.LocationSuggestionsUseCase>()));
    gh.factory<_i31.PermissionsBloc>(() => _i31.PermissionsBloc(gh<_i11.PermissionsService>()));
    gh.factory<_i32.SignOutUseCase>(() => _i32.SignOutUseCase(gh<_i20.AuthenticationRepo>()));
    gh.factory<_i33.TripsDataSource>(() => _i34.TripsDataSourceImpl(gh<_i16.ApiClient>()));
    gh.factory<_i35.TripsRepo>(() => _i36.TripsRepoImpl(gh<_i33.TripsDataSource>()));
    gh.factory<_i37.UpdateUserProfileUseCase>(() => _i37.UpdateUserProfileUseCase(gh<_i20.AuthenticationRepo>()));
    gh.factory<_i38.AuthenticationBloc>(() => _i38.AuthenticationBloc(
          gh<_i29.LoginUseCase>(),
          gh<_i22.CreateAccountUseCase>(),
        ));
    gh.factory<_i39.CreateExpensesUseCase>(() => _i39.CreateExpensesUseCase(gh<_i25.ExpensesRepo>()));
    gh.factory<_i40.CreateTripUseCase>(() => _i40.CreateTripUseCase(gh<_i35.TripsRepo>()));
    gh.factory<_i41.GetExpenseCategoriesBloc>(
        () => _i41.GetExpenseCategoriesBloc(gh<_i27.GetExpenseCategoriesUseCase>()));
    gh.factory<_i42.NewTripBloc>(() => _i42.NewTripBloc(gh<_i40.CreateTripUseCase>()));
    gh.factory<_i43.UpdateUserProfileBloc>(() => _i43.UpdateUserProfileBloc(gh<_i37.UpdateUserProfileUseCase>()));
    gh.factory<_i44.CreateExpensesBloc>(() => _i44.CreateExpensesBloc(gh<_i39.CreateExpensesUseCase>()));
    gh.factory<_i45.CreateTripBloc>(() => _i45.CreateTripBloc(gh<_i40.CreateTripUseCase>()));
    return this;
  }
}

class _$AppRouterModule extends _i46.AppRouterModule {}

class _$ApiModule extends _i47.ApiModule {}

class _$OsmModule extends _i48.OsmModule {}

class _$FirebaseAuthModule extends _i49.FirebaseAuthModule {}

class _$SharedPreferencesModule extends _i50.SharedPreferencesModule {}
