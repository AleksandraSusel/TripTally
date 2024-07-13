import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/custom_drawer_action.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/profile_avatar.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({this.isDashboard = false, super.key});

  final bool isDashboard;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      actions: const [
        CustomDrawerAction(),
      ],
      title: Row(
        children: [
          const ProfileAvatar(),
          const SizedBox(width: AppDimensions.d12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back',
                style: context.tht.labelMedium?.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                'Johny Bravo',
                style: context.tht.displayLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + AppDimensions.d10);
}
