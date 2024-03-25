import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/app_dimensions.dart';
import '../theme/theme_manager.dart';

class SummaryRectangle extends StatelessWidget {
  const SummaryRectangle({
    super.key,
    required this.spendMoney,
    required this.budgetMoney,
  });

  final String spendMoney;
  final String budgetMoney;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDimensions.d8),
          child: Container(
            height: AppDimensions.d100,
            decoration: ThemeManager().sideShadow,
            child: Padding(
              padding: const EdgeInsets.all(AppDimensions.d8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${context.tr.summaryRectangle_youHaveSpent} $spendMoney \$', style: context.tht.labelSmall),
                  const SizedBox(height: AppDimensions.d10),
                  Text('${context.tr.summaryRectangle_youAreStillInYourBudget} $budgetMoney \$', style: context.tht.labelSmall),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
