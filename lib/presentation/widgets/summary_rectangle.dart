import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';

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
        Container(
          width: AppDimensions.d400,
          height: AppDimensions.d100,
          decoration: BoxDecoration(
            color: AppColors.linkWater,
            borderRadius: BorderRadius.circular(AppDimensions.d20),
            boxShadow: const [
              BoxShadow(
                color: AppColors.osloGray,
                offset: Offset(3, 2),
                blurRadius: AppDimensions.d5,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: AppColors.porcelain,
                offset: Offset(-1, -1),
                blurRadius: 6,
                spreadRadius: 4,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppDimensions.d8),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(context.tr.summaryRectangle_youHaveSpent, style: context.tht.labelSmall),
                    Text(spendMoney, style: context.tht.titleSmall),
                    Text('\$', style: context.tht.bodySmall),
                  ],
                ),
                const SizedBox(height: AppDimensions.d10),
                Row(
                  children: [
                    Text(context.tr.summaryRectangle_youAreStillInYourBudget, style: context.tht.labelSmall),
                    Text(budgetMoney, style: context.tht.titleSmall),
                    Text('\$', style: context.tht.bodySmall),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
