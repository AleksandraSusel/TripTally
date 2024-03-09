import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/presentation/pages/login_page/bloc/login_bloc.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

import '../../../injectable/injectable.dart';
import '../../theme/app_dimensions.dart';
import '../../utils/validators.dart';
import '../../widgets/custom_circular_progress_indicator.dart';
import '../../widgets/custom_floating_action_button.dart';
import '../../widgets/custom_snack_bar.dart';
import '../../widgets/welcome_subtitle.dart';
import '../../widgets/welcome_text.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key, @visibleForTesting this.bloc});

  final LoginBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => bloc ?? getIt<LoginBloc>(),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) => state.whenOrNull(
            failure: (error) => customSnackBar(
              context,
              error.errorText(context),
            ),
            success: () => customSnackBar(context, 'Zostałeś zalogowany'), //TODO: push to HomePage
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
                const WelcomeText(),
                const SizedBox(height: AppDimensions.d40),
                const WelcomeSubtitle(),
                const SizedBox(height: AppDimensions.d80),
                Text(
                  context.tr.login,
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
                const SizedBox(height: AppDimensions.d126),
                CustomFloatingActionButton(
                  text: context.tr.login,
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
                  onPressed: () => context.router.push(RegistrationRoute()),
                  child: Text(
                    context.tr.registration,
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
      context.read<LoginBloc>().add(
            OnTapLoginEvent(
              email: emailController.text,
              password: passwordController.text,
            ),
          );
    }
  }
}
