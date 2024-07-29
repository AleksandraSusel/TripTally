import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_info_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_selection_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_trip_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/expandable_info_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/outlined_info_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/outlined_trip_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_drawer.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/profile_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/trip_tally_progress_indicator.dart';

@RoutePage()
class TestM3Page extends StatefulWidget {
  const TestM3Page({super.key});

  @override
  TestM3PageState createState() => TestM3PageState();
}

class TestM3PageState extends State<TestM3Page> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('This is a snackbar'),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Dialog'),
          content: const Text('This is a dialog'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          height: 200,
          child: const Center(
            child: Text('This is a bottom sheet'),
          ),
        );
      },
    );
  }

  void _showDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now()) {}
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: const ProfileAppBar(isDashboard: true),
      endDrawer: const CustomDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(AppDimensions.d16),
        children: [
          const ExpandableInfoCard(
            country: 'Greece',
            dateFrom: '2024-30-07',
            dateTo: '2026-30-08',
            transportType: TransportType.flight,
            totalExpensesAmount: 49000,
            totalExpensesCurrency: '€',
            countryCode: 'GR',
            expectedBudgetCurrency: '€',
            expectedBudgetAmount: 16000.9,
            imagePath: AppPaths.italy,
          ),
          ElevatedSelectionCard(
            title: 'Plan new',
            subtitle: 'Plan your next trip!',
            iconBGColor: context.thc.tertiaryContainer,
            iconAsset: AppPaths.edit,
          ),
          const OutlinedInfoCard(
            country: 'Greece',
            dateFrom: '2024-30-07',
            dateTo: '2026-30-08',
            transportType: TransportType.flight,
            totalExpensesAmount: 49000,
            totalExpensesCurrency: '€',
            countryCode: 'GR',
          ),
          SizedBox(
            height: AppDimensions.d88,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) => const ElevatedInfoCard(
                country: 'Greece',
                dateFrom: '2024-30-07',
                dateTo: '2026-30-08',
                transportType: TransportType.flight,
                totalExpensesAmount: 10000,
                totalExpensesCurrency: '€',
                countryCode: 'GR',
              ),
            ),
          ),
          const ElevatedTripCard(
            country: 'Greece',
            dateFrom: 'dateFrom',
            dateTo: 'dateTo',
            transportType: TransportType.flight,
            totalExpensesAmount: 60000,
            expectedBudgetAmount: 16000.9,
            totalExpensesCurrency: '€',
            expectedBudgetCurrency: '€',
            imagePath: AppPaths.italy,
            countryCode: 'GR',
          ),
          const OutlinedTripCard(
            country: 'Italy',
            dateFrom: 'dateFrom',
            dateTo: 'dateTo',
            transportType: TransportType.train,
            totalExpensesAmount: 1300,
            totalExpensesCurrency: '€',
            imagePath: AppPaths.italy,
            countryCode: 'IT',
          ),
          const TripTallyProgressIndicator(),
          Text(
            'Material 3 Widgets',
            style: theme.textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          Card(
            elevation: 3,
            margin: const EdgeInsets.all(16),
            child: SizedBox(
              height: 200,
              width: 200,
              child: Center(
                child: Text(
                  'This is a test card',
                  style: theme.textTheme.displayLarge,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _showSnackbar(context),
            child: const Text('Show Snackbar'),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () => _showDialog(context),
            child: const Text('Show Dialog'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () => _showDrawer(context),
            child: const Text('Open Drawer'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () => _showBottomSheet(context),
            child: const Text('Show Bottom Sheet'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () => _selectDate(context),
            child: const Text('Show Date Picker'),
          ),
          const SizedBox(height: 16),
          const Icon(
            Icons.heart_broken,
            size: 40,
          ),
          const SizedBox(height: 16),
          Switch(
            value: true,
            onChanged: (bool value) {},
          ),
          const SizedBox(height: 16),
          Checkbox(
            value: true,
            onChanged: (bool? value) {},
          ),
          const SizedBox(height: 16),
          const Center(child: CircularProgressIndicator()),
          const SizedBox(height: 16),
          const Center(child: LinearProgressIndicator()),
          const SizedBox(height: 16),
          const Center(child: RefreshProgressIndicator()),
          const SizedBox(height: 16),
          const Divider(),
          // Text examples
          Text(
            'displayLarge: Roboto, 22, bold',
            style: theme.textTheme.displayLarge,
          ),
          Text(
            'displayMedium: Roboto, 16, bold',
            style: theme.textTheme.displayMedium,
          ),
          Text(
            'displaySmall: Roboto, 14, light',
            style: theme.textTheme.displaySmall,
          ),
          const Divider(),
          Text(
            'titleLarge: Roboto, 24, regular',
            style: theme.textTheme.titleLarge,
          ),
          Text(
            'titleMedium: Roboto, 16, regular',
            style: theme.textTheme.titleMedium,
          ),
          Text(
            'titleSmall: Roboto, 14, regular',
            style: theme.textTheme.titleSmall,
          ),
          const Divider(),
          Text(
            'labelLarge: Roboto, 22, medium',
            style: theme.textTheme.labelLarge,
          ),
          Text(
            'labelMedium: Roboto, 16, medium',
            style: theme.textTheme.labelMedium,
          ),
          Text(
            'labelSmall: Roboto, 14, medium',
            style: theme.textTheme.labelSmall,
          ),
          const Divider(),
          Text(
            'headlineLarge: Sail, 32, regular',
            style: theme.textTheme.headlineLarge,
          ),
          Text(
            'headlineMedium: Sail, 24, regular',
            style: theme.textTheme.headlineMedium,
          ),
          Text(
            'headlineSmall: Sail, 16, regular',
            style: theme.textTheme.headlineSmall,
          ),
          const Divider(),
          Text(
            'bodyLarge: Roboto, 16, regular',
            style: theme.textTheme.bodyLarge,
          ),
          Text(
            'bodyMedium: Roboto, 14, regular',
            style: theme.textTheme.bodyMedium,
          ),
          Text(
            'bodySmall: Roboto, 14, thin',
            style: theme.textTheme.bodySmall,
          ),
          const Divider(),
          const Wrap(
            spacing: 8,
            children: [
              Chip(
                label: Text('Chip 1'),
              ),
              Chip(
                label: Text('Chip 2'),
              ),
              Chip(
                label: Text('Chip 3'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Text Field',
            ),
          ),
          const SizedBox(height: 16),
          SegmentedButton<int>(
            segments: const [
              ButtonSegment(
                value: 0,
                label: Text('One'),
              ),
              ButtonSegment(
                value: 1,
                label: Text('Two'),
              ),
            ],
            selected: const {1},
            onSelectionChanged: (Set<int> newSelection) {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
