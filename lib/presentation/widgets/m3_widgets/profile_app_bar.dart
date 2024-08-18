import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/custom_drawer_action.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/profile_avatar.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    this.title,
    super.key,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      notificationPredicate: (_) => true,
      centerTitle: false,
      actions: const [
        CustomDrawerAction(),
      ],
      title: Row(
        children: [
          ProfileAvatar(
            size: title == null ? 1 : 0.8,
          ),
          const SizedBox(width: AppDimensions.d12),
          if (title == null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.tr.dashboardPage_welcomeBack,
                  style: context.tht.labelMedium?.copyWith(
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Johny Bravo',
                  style: context.tht.displayLarge,
                ),
              ],
            ).animate().fadeIn()
          else ...[
            const Spacer(),
            Text(
              title ?? '',
              style: context.tht.titleLarge?.copyWith(
                fontSize: AppDimensions.d20,
              ),
              textAlign: TextAlign.center,
            ).animate().fadeIn(),
            const Spacer(),
          ],
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + AppDimensions.d10);
}
