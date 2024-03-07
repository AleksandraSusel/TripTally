import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
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
    return BlocProvider(
      create: (context) => bloc ?? getIt<RegistrationBloc>(),
      child: BlocConsumer<RegistrationBloc, RegistrationState>(
        listener: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          failure: (error) => customSnackBar(
            context,
            error.errorText(context),
          ),
          success: () => customSnackBar(context, 'Zostałeś zarejestrowany'), //TODO: push to HomePage
        ),
        builder: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          failure: (_) => _Body(),
          success: () => _Body(),
          initial: () => _Body(),
          loading: () => Container(color: Colors.white),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final email = TextEditingController();

  final password = TextEditingController();

  final repeatPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: AppDimensions.d3),
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
                controller: email,
              ),
              CustomTextField(
                hintText: context.tr.password,
                controller: password,
                hasPassword: true,
              ),
              CustomTextField(
                hintText: context.tr.repeatPassword,
                controller: repeatPassword,
                hasPassword: true,
              ),
              const SizedBox(height: AppDimensions.d50),
              CustomFloatingActionButton(
                text: context.tr.registration,
                onPressed: () => context.read<RegistrationBloc>().add(OnTapRegistrationEvent(
                      email.text,
                      password.text,
                      repeatPassword.text,
                    )),
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
    );
  }
}
