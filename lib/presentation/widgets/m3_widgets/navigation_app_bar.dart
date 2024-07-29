import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({
    required this.title,
    super.key,
    this.onBackPressed,
    this.actions,
  });

  final String title;
  final List<Widget>? actions;
  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: actions,
      centerTitle: true,
      leading: BackButton(
        onPressed: onBackPressed,
      ),
      title: Text(
        title,
        style: context.tht.titleLarge?.copyWith(fontSize: AppDimensions.d22),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
