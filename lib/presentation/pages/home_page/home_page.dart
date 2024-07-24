import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_info_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/outlined_trip_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_drawer.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/profile_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBar(isDashboard: true),
      endDrawer: const CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgAsset(AppPaths.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: SvgAsset(AppPaths.luggage),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: SvgAsset(AppPaths.statistic),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: SvgAsset(AppPaths.community),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: AppDimensions.d16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppDimensions.d52,
              ),
              Padding(
                padding: const EdgeInsets.all(AppDimensions.d8),
                child: Text(
                  context.tr.homePage_youAreCurrentlyOnATrip,
                  style: context.tht.labelSmall,
                ),
              ),
              const OutlinedTripCard(
                country: 'Italy',
                dateFrom: '10-02-2023',
                dateTo: '10-02-2023',
                transportType: TransportType.airplane,
                totalExpensesAmount: 1300,
                totalExpensesCurrency: r'$',
                countryCode: 'PL',
                imagePath: AppPaths.italy,
              ),
              const Divider(thickness: 1),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppDimensions.d20,
                  left: AppDimensions.d8,
                  bottom: AppDimensions.d8,
                ),
                child: Text(context.tr.homePage_yourPlannedTrips, style: context.tht.labelSmall),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) => const ElevatedInfoCard(
                    country: 'Greece',
                    dateFrom: '2024-30-07',
                    dateTo: '2024-30-08',
                    transportType: TransportType.airplane,
                    totalExpensesAmount: 10000,
                    totalExpensesCurrency: '€',
                    countryCode: 'GR',
                  ),
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
