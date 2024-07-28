import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/welcome_page/widgets/welcome_page_form_fields.dart';
import 'package:trip_tally/presentation/pages/welcome_page/widgets/welcome_page_headline.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/account_form_container.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/avatar_picker.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/background_container.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/primary_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/surface_outlined_button.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
    this.permissionsBloc,
  });

  @visibleForTesting
  final PermissionsBloc? permissionsBloc;

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      asset: AppPaths.beach,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _Body(permissionsBloc: permissionsBloc),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({this.permissionsBloc});

  final PermissionsBloc? permissionsBloc;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AccountFormContainer(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const WelcomePageHeadline(),
                const SizedBox(height: AppDimensions.d30),
                BlocProvider(
                  create: (context) => widget.permissionsBloc ?? getIt<PermissionsBloc>(),
                  child: const AvatarPicker(),
                ),
                const WelcomePageFormFields(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SurfaceOutlinedButton(
                      text: context.tr.generic_skip,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: AppDimensions.d10,
                    ),
                    PrimaryElevatedButton(
                      text: context.tr.generic_continue,
                      onPressed: () {
                        _formKey.currentState?.validate();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ).animate().scale(delay: 200.ms),
      ),
    );
  }
}
