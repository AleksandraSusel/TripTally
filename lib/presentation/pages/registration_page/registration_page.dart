import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/enums/string_extensions.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';

import '../../../injectable/injectable.dart';
import '../../theme/app_dimensions.dart';
import '../../widgets/custom_floating_action_button.dart';
import '../../widgets/custom_snack_bar.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/welcome_subtitle.dart';
import '../../widgets/welcome_text.dart';
import 'bloc/registration_bloc.dart';

@RoutePage()
class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key, @visibleForTesting this.bloc});

  final RegistrationBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => bloc ?? getIt<RegistrationBloc>(),
        child: BlocConsumer<RegistrationBloc, RegistrationState>(
          listener: (context, state) => state.whenOrNull(
            failure: (error) => customSnackBar(
              context,
              error.errorText(context),
            ),
            success: () => customSnackBar(context, 'Zostałeś zarejestrowany'), //TODO: push to HomePage
          ),
          builder: (context, state) => state.maybeWhen(
            orElse: () => const _Body(),
            loading: () => const Center(
                child: CircularProgressIndicator(
              color: AppColors.kobi,
              backgroundColor: AppColors.cello,
            )),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final repeatPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  const SizedBox(height: AppDimensions.d40),
                  const WelcomeText(),
                  const SizedBox(height: AppDimensions.d40),
                  const WelcomeSubtitle(),
                  const SizedBox(height: AppDimensions.d80),
                  Text(
                    context.tr.registration,
                    style: context.tht.displayMedium,
                  ),
                  const SizedBox(height: AppDimensions.d20),
                  CustomTextField(
                    hintText: context.tr.email,
                    controller: emailController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return context.tr.registration_page_fieldCanNotBeEmpty;
                      }
                      if (!value.isValidEmail) {
                        return context.tr.registration_page_yourEmailIsIncorrect;
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    hintText: context.tr.password,
                    controller: passwordController,
                    hasPassword: true,
                    validator: (String? value) {
                      return (value == null && value == '') ? context.tr.registration_page_fieldCanNotBeEmpty : null;
                    },
                  ),
                  CustomTextField(
                    hintText: context.tr.repeatPassword,
                    controller: repeatPassword,
                    hasPassword: true,
                    validator: (String? repeatPasswordController) {
                      if (repeatPasswordController == null && repeatPasswordController == '') {
                        return context.tr.registration_page_fieldCanNotBeEmpty;
                      }
                      if (repeatPasswordController != passwordController.text) {
                        return context.tr.registration_page_passwordDontMatch;
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: AppDimensions.d50),
                  CustomFloatingActionButton(
                    text: context.tr.registration,
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        context.read<RegistrationBloc>().add(
                              OnTapRegistrationEvent(
                                emailController.text,
                                passwordController.text,
                                repeatPassword.text,
                              ),
                            );
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: AppDimensions.d20),
                    child: Text(
                      context.tr.or,
                      style: context.tht.headlineSmall,
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.router.push(LoginRoute()),
                    child: Text(
                      context.tr.login,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
