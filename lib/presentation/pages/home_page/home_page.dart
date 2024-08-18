import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/pages/home_page/page_view/dashboard.dart';
import 'package:trip_tally/presentation/pages/home_page/page_view/trips.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/bottom_navigation_bar/custom_bottom_nav_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_drawer.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/profile_app_bar.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PageController _pageController;
  int _initialPageViewIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBar(isDashboard: true),
      endDrawer: const CustomDrawer(),
      floatingActionButton: CustomBottomNavBar(
        initialIndex: _initialPageViewIndex,
        onItemSelected: (index) {
          setState(() {
            _pageController.animateToPage(
              index,
              duration: 400.ms,
              curve: Curves.easeInOut,
            );
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        onPageChanged: (index) => setState(() {
          _initialPageViewIndex = index;
        }),
        controller: _pageController,
        children: const [
          Dashboard(),
          Trips(),
        ],
      ),
    );
  }
}
