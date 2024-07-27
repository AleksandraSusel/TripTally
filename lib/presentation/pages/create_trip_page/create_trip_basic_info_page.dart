import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/transport_options.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/location_search_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';

@RoutePage()
class CreateTripBasicInfoPage extends StatefulWidget {
  const CreateTripBasicInfoPage({super.key});

  @override
  CreateTripBasicInfoPageState createState() => CreateTripBasicInfoPageState();
}

class CreateTripBasicInfoPageState extends State<CreateTripBasicInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const NavigationAppBar(title: 'Create new trip'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const LocationSearchTextField(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDimensions.d16),
            child: TransportOptions(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.d16,
              vertical: AppDimensions.d16,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 2,
                  child: CustomTextField(
                    labelText: context.tr.createTripBudgetHint,
                    validator: (value) => Validator.isFieldEmpty(value: value, context: context),
                  ),
                ),
                const SizedBox(width: AppDimensions.d30),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    hint: Text(context.tr.createTripCurrencyHint),
                    items: const [
                      //TODO: Add right values
                      DropdownMenuItem(
                        value: 'pln',
                        child: Text('PLN'),
                      ),
                      DropdownMenuItem(
                        value: 'usd',
                        child: Text('USD'),
                      ),
                      DropdownMenuItem(
                        value: 'eur',
                        child: Text('EUR'),
                      ),
                      DropdownMenuItem(
                        value: 'gbp',
                        child: Text('GBP'),
                      ),
                    ],
                    onChanged: (_) {},
                  ),
                ),
                //TODO: Add Calendar view
              ],
            ),
          ),
        ],
      ),
    );
  }
}
