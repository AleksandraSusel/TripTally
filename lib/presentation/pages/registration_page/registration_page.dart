import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/registration_page/bloc/registration_bloc.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_circular_progress_indicator.dart';
import 'package:trip_tally/presentation/widgets/custom_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/welcome_title_widget.dart';

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
            success: () => customSnackBar(
              context,
              'Zostałeś zarejestrowany',
            ), //TODO: push to HomePage
          ),
          builder: (context, state) => state.maybeWhen(
            orElse: () => const _Body(),
            loading: () => const Center(
              child: CustomCircularProgressIndicator(),
            ),
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
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: AppDimensions.d40),
                const WelcomeTittleWidget(),
                Text(
                  context.tr.registration,
                  style: context.tht.displayMedium,
                ),
                const SizedBox(height: AppDimensions.d20),
                CustomTextField(
                  hintText: context.tr.email,
                  controller: emailController,
                  validator: (String? value) {
                    return Validator.validateEmail(value, context);
                  },
                ),
                CustomTextField(
                  hintText: context.tr.password,
                  controller: passwordController,
                  hasPassword: true,
                  validator: (String? value) {
                    return Validator.isFieldEmpty(value, context);
                  },
                ),
                CustomTextField(
                  hintText: context.tr.repeatPassword,
                  controller: repeatPassword,
                  hasPassword: true,
                  validator: (String? repeatPasswordController) {
                    return Validator.validatePasswords(
                      passwordController.text,
                      repeatPasswordController,
                      context,
                    );
                  },
                ),
                const SizedBox(height: AppDimensions.d50),
                CustomElevatedButton(
                  text: context.tr.registration,
                  onPressed: onPressed,
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
    );
  }

  void onPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<RegistrationBloc>().add(
            OnTapRegistrationEvent(
              emailController.text,
              passwordController.text,
              repeatPassword.text,
            ),
          );
    }
  }
}
