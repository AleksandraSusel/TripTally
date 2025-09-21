import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/welcome_page/bloc/update_user_profile_bloc.dart';
import 'package:trip_tally/presentation/pages/welcome_page/widgets/welcome_page_form_fields.dart';
import 'package:trip_tally/presentation/pages/welcome_page/widgets/welcome_page_headline.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
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
    this.updateUserProfileBloc,
  });

  @visibleForTesting
  final PermissionsBloc? permissionsBloc;
  @visibleForTesting
  final UpdateUserProfileBloc? updateUserProfileBloc;

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      asset: AppPaths.beach,
      child: BlocProvider(
        create: (context) => updateUserProfileBloc ?? getIt<UpdateUserProfileBloc>(),
        child: BlocListener<UpdateUserProfileBloc, BasicState<void>>(
          listener: (context, state) => switch (state) {
            SuccessState() => context.router.replace(HomeRoute()),
            FailureState(error: final error) => showSnackBar(context, error.errorText(context)),
            _ => null,
          },
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: _Body(permissionsBloc: permissionsBloc),
          ),
        ),
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
  late final TextEditingController _nameController;
  late final TextEditingController _countryController;
  late final TextEditingController _currencyController;
  XFile? profilePicture;

  @override
  void initState() {
    _nameController = TextEditingController();
    _countryController = TextEditingController();
    _currencyController = TextEditingController();
    super.initState();
  }

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
                  child: AvatarPicker(
                    onPickedImage: (image) {
                      profilePicture = image;
                    },
                  ),
                ),
                WelcomePageFormFields(
                  nameController: _nameController,
                  countryController: _countryController,
                  currencyController: _currencyController,
                ),
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
                        if (_formKey.currentState?.validate() ?? false) {
                          context.read<UpdateUserProfileBloc>().add(
                                OnUpdateUserProfileEvent(
                                  username: _nameController.text,
                                  currencyCode: MoneyFormat.extractCurrencyCode(_currencyController.text),
                                  country: _countryController.text,
                                  profilePicture: profilePicture,
                                ),
                              );
                        }
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

  @override
  void dispose() {
    _countryController.dispose();
    _currencyController.dispose();
    _nameController.dispose();
    super.dispose();
  }
}
