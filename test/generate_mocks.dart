import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trip_tally/data/api/api_client.dart';
import 'package:trip_tally/data/api/osm_client.dart';
import 'package:trip_tally/domain/data_source/authentication_remote_source.dart';
import 'package:trip_tally/domain/data_source/expenses_remote_source.dart';
import 'package:trip_tally/domain/data_source/osm_map_data_source.dart';
import 'package:trip_tally/domain/data_source/trips_data_source.dart';
import 'package:trip_tally/domain/repositories/authentication_repo.dart';
import 'package:trip_tally/domain/repositories/expenses_repo.dart';
import 'package:trip_tally/domain/repositories/osm_map_repository.dart';
import 'package:trip_tally/domain/repositories/trips_repo.dart';
import 'package:trip_tally/domain/use_case/create_account_use_case.dart';
import 'package:trip_tally/domain/use_case/create_expense_use_case.dart';
import 'package:trip_tally/domain/use_case/create_trip_use_case.dart';
import 'package:trip_tally/domain/use_case/delete_trip_use_case.dart';
import 'package:trip_tally/domain/use_case/get_all_user_trips_use_case.dart';
import 'package:trip_tally/domain/use_case/get_today_trips_use_case.dart';
import 'package:trip_tally/domain/use_case/location_suggestions_use_case.dart';
import 'package:trip_tally/domain/use_case/login_use_case.dart';
import 'package:trip_tally/domain/use_case/sign_out_use_case.dart';
import 'package:trip_tally/domain/use_case/update_trip_use_case.dart';
import 'package:trip_tally/domain/use_case/update_user_profile_use_case.dart';
import 'package:trip_tally/domain/utils/shared_prefs_utils.dart';
import 'package:trip_tally/presentation/pages/authentication_page/authentication_page.dart';
import 'package:trip_tally/presentation/pages/authentication_page/bloc/authentication_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/get_expense_categories_bloc.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/bloc/create_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/home_page/bloc/get_today_trips_bloc.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/delete_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/get_all_user_trips_bloc.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/update_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/welcome_page/bloc/update_user_profile_bloc.dart';
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart';
import 'package:trip_tally/presentation/utils/permissions/permission_service.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/osm_bloc/osm_suggestions_cubit.dart';

@GenerateMocks([
  AuthenticationRepo,
  AuthenticationRemoteSource,
  LoginUseCase,
  AuthenticationBloc,
  ApiClient,
  SharedPreferences,
  CreateAccountUseCase,
  SharedPrefsUtils,
  TripsDataSource,
  AuthenticationPage,
  TripsRepo,
  CreateTripUseCase,
  PermissionsService,
  PermissionsBloc,
  LocationSuggestionsUseCase,
  OsmSuggestionsCubit,
  OsmMapRepository,
  OsmMapDataSource,
  OsmClient,
  UpdateUserProfileUseCase,
  UpdateUserProfileBloc,
  ExpensesRemoteSource,
  CreateExpensesUseCase,
  ExpensesRepo,
  CreateExpensesBloc,
  CreateTripBloc,
  GetExpenseCategoriesBloc,
  GetAllUserTripsBloc,
  GetAllUserTripsUseCase,
  DeleteTripBloc,
  DeleteTripUseCase,
  UpdateTripUseCase,
  UpdateTripBloc,
  SignOutUseCase,
  GetTodayTripsUseCase,
  GetTodayTripsBloc,
])
void main() {}

class MockUser extends Mock implements User {
  MockUser({required this.uid});

  @override
  final String uid;
}

class MockUserCredential extends Mock implements UserCredential {
  MockUserCredential({this.user});

  @override
  final User? user;
}
