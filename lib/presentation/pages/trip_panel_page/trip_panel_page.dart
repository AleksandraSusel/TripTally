import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/pages/home_page/page_view/dashboard.dart';
import 'package:trip_tally/presentation/pages/home_page/page_view/trips.dart';
import 'package:trip_tally/presentation/pages/trip_panel_page/page_view/expenses.dart';
import 'package:trip_tally/presentation/pages/trip_panel_page/widgets/expense_tile_list.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/bottom_navigation_bar/bottom_nav_items.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/bottom_navigation_bar/custom_bottom_nav_bar.dart';

@RoutePage()
class TripPanelPage extends StatefulWidget {
  const TripPanelPage({super.key});

  @override
  State<TripPanelPage> createState() => _TripPanelPageState();
}

class _TripPanelPageState extends State<TripPanelPage> {
  late final PageController _pageController;
  int _initialPageViewIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const navItems = BottomNavItems.tripPanelItems;

    return Scaffold(
      floatingActionButton: CustomBottomNavBar(
        initialIndex: _initialPageViewIndex,
        onItemSelected: (index, item) {
          setState(() {
            _pageController.animateToPage(
              index,
              duration: 400.ms,
              curve: Curves.easeInOut,
            );
          });
        },
        items: navItems,
      ),
      appBar: AppBar(
        title: const Text('Greece'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        onPageChanged: (index) => setState(() {
          _initialPageViewIndex = index;
        }),
        controller: _pageController,
        children: [
          Expenses(
            expenseTile: getExpenseTiles(),
          ),
          const Trips(),
          const Dashboard(),
        ],
      ),
    );
  }
}
