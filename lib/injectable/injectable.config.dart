// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:trip_tally/data/api/api_client.dart' as _i276;
import 'package:trip_tally/data/api/osm_client.dart' as _i866;
import 'package:trip_tally/data/data_source/authentication_remote_source_impl.dart' as _i768;
import 'package:trip_tally/data/data_source/expenses_remote_source_impl.dart' as _i505;
import 'package:trip_tally/data/data_source/osm_map_data_source_impl.dart' as _i286;
import 'package:trip_tally/data/data_source/trips_data_source_impl.dart' as _i242;
import 'package:trip_tally/data/repositories/authentication_repo_impl.dart' as _i877;
import 'package:trip_tally/data/repositories/expenses_repo_impl.dart' as _i704;
import 'package:trip_tally/data/repositories/osm_map_repository_impl.dart' as _i153;
import 'package:trip_tally/data/repositories/trips_repo_impl.dart' as _i914;
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart' as _i970;
import 'package:trip_tally/domain/data_source/expenses_remote_source.dart' as _i586;
import 'package:trip_tally/domain/data_source/osm_map_data_source.dart' as _i747;
import 'package:trip_tally/domain/data_source/trips_data_source.dart' as _i967;
import 'package:trip_tally/domain/repositories/authentication_repo.dart' as _i78;
import 'package:trip_tally/domain/repositories/expenses_repo.dart' as _i720;
import 'package:trip_tally/domain/repositories/osm_map_repository.dart' as _i270;
import 'package:trip_tally/domain/repositories/trips_repo.dart' as _i128;
import 'package:trip_tally/domain/use_case/create_account_use_case.dart' as _i205;
import 'package:trip_tally/domain/use_case/create_expense_use_case.dart' as _i468;
import 'package:trip_tally/domain/use_case/create_trip_use_case.dart' as _i684;
import 'package:trip_tally/domain/use_case/delete_trip_use_case.dart' as _i1055;
import 'package:trip_tally/domain/use_case/get_all_user_trips_use_case.dart' as _i571;
import 'package:trip_tally/domain/use_case/get_expense_categories_use_case.dart' as _i434;
import 'package:trip_tally/domain/use_case/get_today_trips_use_case.dart' as _i795;
import 'package:trip_tally/domain/use_case/get_trip_use_case.dart' as _i277;
import 'package:trip_tally/domain/use_case/location_suggestions_use_case.dart' as _i740;
import 'package:trip_tally/domain/use_case/login_use_case.dart' as _i258;
import 'package:trip_tally/domain/use_case/sign_out_use_case.dart' as _i985;
import 'package:trip_tally/domain/use_case/update_trip_use_case.dart' as _i533;
import 'package:trip_tally/domain/use_case/update_user_profile_use_case.dart' as _i523;
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart' as _i746;
import 'package:trip_tally/injectable/modules/api_module.dart' as _i56;
import 'package:trip_tally/injectable/modules/app_router_module.dart' as _i437;
import 'package:trip_tally/injectable/modules/firebase_auth_module.dart' as _i483;
import 'package:trip_tally/injectable/modules/osm_module.dart' as _i539;
import 'package:trip_tally/injectable/modules/shared_preferences_module.dart' as _i201;
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart' as _i376;
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart' as _i67;
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_bloc.dart' as _i868;
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/get_expense_categories_bloc.dart' as _i40;
import 'package:trip_tally/presentation/pages/create_trip_page/bloc/create_trip_bloc.dart' as _i191;
import 'package:trip_tally/presentation/pages/home_page/bloc/get_today_trips_bloc.dart' as _i287;
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/delete_trip_bloc.dart' as _i576;
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/get_all_user_trips_bloc.dart' as _i447;
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/update_trip_bloc.dart' as _i810;
import 'package:trip_tally/presentation/pages/welcome_page/bloc/update_user_profile_bloc.dart' as _i705;
import 'package:trip_tally/presentation/theme/theme_manager.dart' as _i458;
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart' as _i0;
import 'package:trip_tally/presentation/utils/permissions/permission_service.dart' as _i400;
import 'package:trip_tally/presentation/utils/router/app_router.dart' as _i390;
import 'package:trip_tally/presentation/utils/test_manager.dart' as _i1069;
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/osm_bloc/osm_suggestions_cubit.dart' as _i250;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final firebaseAuthModule = _$FirebaseAuthModule();
    final apiModule = _$ApiModule();
    final appRouterModule = _$AppRouterModule();
    final osmModule = _$OsmModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.factory<_i59.FirebaseAuth>(() => firebaseAuthModule.instance);
    gh.factory<_i1069.TestsManager>(() => _i1069.TestsManager());
    gh.singleton<_i361.Dio>(() => apiModule.client);
    gh.singleton<_i458.ThemeManager>(() => _i458.ThemeManager());
    gh.lazySingleton<_i390.AppRouter>(() => appRouterModule.instance);
    gh.lazySingleton<_i400.PermissionsService>(() => _i400.PermissionsService());
    gh.factory<_i746.SharedPrefsUtils>(() => _i746.SharedPrefsUtils(gh<_i460.SharedPreferences>()));
    gh.singleton<_i361.Dio>(
      () => osmModule.client,
      instanceName: 'OsmDio',
    );
    gh.factory<_i276.ApiClient>(() => _i276.ApiClient(gh<_i361.Dio>()));
    gh.factory<_i0.PermissionsBloc>(() => _i0.PermissionsBloc(gh<_i400.PermissionsService>()));
    gh.factory<_i586.ExpensesRemoteSource>(() => _i505.ExpensesRemoteSourceImpl(gh<_i276.ApiClient>()));
    gh.factory<_i866.OsmClient>(() => _i866.OsmClient(gh<_i361.Dio>(instanceName: 'OsmDio')));
    gh.factory<_i720.ExpensesRepo>(() => _i704.ExpensesRepoImpl(gh<_i586.ExpensesRemoteSource>()));
    gh.factory<_i747.OsmMapDataSource>(() => _i286.OsmMapDataSourceImpl(gh<_i866.OsmClient>()));
    gh.factory<_i970.AuthenticationRemoteSource>(() => _i768.AuthenticationRemoteSourceImpl(
          gh<_i276.ApiClient>(),
          gh<_i746.SharedPrefsUtils>(),
        ));
    gh.factory<_i967.TripsDataSource>(() => _i242.TripsDataSourceImpl(gh<_i276.ApiClient>()));
    gh.factory<_i468.CreateExpensesUseCase>(() => _i468.CreateExpensesUseCase(gh<_i720.ExpensesRepo>()));
    gh.factory<_i434.GetExpenseCategoriesUseCase>(() => _i434.GetExpenseCategoriesUseCase(gh<_i720.ExpensesRepo>()));
    gh.factory<_i128.TripsRepo>(() => _i914.TripsRepoImpl(gh<_i967.TripsDataSource>()));
    gh.factory<_i78.AuthenticationRepo>(() => _i877.AuthenticationRepoImpl(gh<_i970.AuthenticationRemoteSource>()));
    gh.factory<_i270.OsmMapRepository>(() => _i153.OsmMapRepositoryImpl(gh<_i747.OsmMapDataSource>()));
    gh.factory<_i868.CreateExpensesBloc>(() => _i868.CreateExpensesBloc(gh<_i468.CreateExpensesUseCase>()));
    gh.factory<_i205.CreateAccountUseCase>(() => _i205.CreateAccountUseCase(gh<_i78.AuthenticationRepo>()));
    gh.factory<_i985.SignOutUseCase>(() => _i985.SignOutUseCase(gh<_i78.AuthenticationRepo>()));
    gh.factory<_i523.UpdateUserProfileUseCase>(() => _i523.UpdateUserProfileUseCase(gh<_i78.AuthenticationRepo>()));
    gh.factory<_i258.LoginUseCase>(() => _i258.LoginUseCase(gh<_i78.AuthenticationRepo>()));
    gh.factory<_i40.GetExpenseCategoriesBloc>(
        () => _i40.GetExpenseCategoriesBloc(gh<_i434.GetExpenseCategoriesUseCase>()));
    gh.factory<_i684.CreateTripUseCase>(() => _i684.CreateTripUseCase(gh<_i128.TripsRepo>()));
    gh.factory<_i1055.DeleteTripUseCase>(() => _i1055.DeleteTripUseCase(gh<_i128.TripsRepo>()));
    gh.factory<_i571.GetAllUserTripsUseCase>(() => _i571.GetAllUserTripsUseCase(gh<_i128.TripsRepo>()));
    gh.factory<_i277.GetTripUseCase>(() => _i277.GetTripUseCase(gh<_i128.TripsRepo>()));
    gh.factory<_i533.UpdateTripUseCase>(() => _i533.UpdateTripUseCase(gh<_i128.TripsRepo>()));
    gh.factory<_i795.GetTodayTripsUseCase>(() => _i795.GetTodayTripsUseCase(gh<_i128.TripsRepo>()));
    gh.factory<_i376.AuthenticationBloc>(() => _i376.AuthenticationBloc(
          gh<_i258.LoginUseCase>(),
          gh<_i205.CreateAccountUseCase>(),
        ));
    gh.factory<_i705.UpdateUserProfileBloc>(() => _i705.UpdateUserProfileBloc(gh<_i523.UpdateUserProfileUseCase>()));
    gh.factory<_i67.AppBloc>(() => _i67.AppBloc(
          gh<_i746.SharedPrefsUtils>(),
          gh<_i985.SignOutUseCase>(),
        ));
    gh.factory<_i191.CreateTripBloc>(() => _i191.CreateTripBloc(gh<_i684.CreateTripUseCase>()));
    gh.factory<_i576.DeleteTripBloc>(() => _i576.DeleteTripBloc(gh<_i1055.DeleteTripUseCase>()));
    gh.factory<_i447.GetAllUserTripsBloc>(() => _i447.GetAllUserTripsBloc(gh<_i571.GetAllUserTripsUseCase>()));
    gh.factory<_i740.LocationSuggestionsUseCase>(() => _i740.LocationSuggestionsUseCase(gh<_i270.OsmMapRepository>()));
    gh.factory<_i287.GetTodayTripsBloc>(() => _i287.GetTodayTripsBloc(gh<_i795.GetTodayTripsUseCase>()));
    gh.factory<_i810.UpdateTripBloc>(() => _i810.UpdateTripBloc(gh<_i533.UpdateTripUseCase>()));
    gh.factory<_i250.OsmSuggestionsCubit>(() => _i250.OsmSuggestionsCubit(gh<_i740.LocationSuggestionsUseCase>()));
    return this;
  }
}

class _$SharedPreferencesModule extends _i201.SharedPreferencesModule {}

class _$FirebaseAuthModule extends _i483.FirebaseAuthModule {}

class _$ApiModule extends _i56.ApiModule {}

class _$AppRouterModule extends _i437.AppRouterModule {}

class _$OsmModule extends _i539.OsmModule {}
