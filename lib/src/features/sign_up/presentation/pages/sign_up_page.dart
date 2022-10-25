import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/src/app/widgets/base_page.dart';
import 'package:music_app/src/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:music_app/src/features/sign_up/presentation/widgets/sign_up_form..dart';
import 'package:music_app/src/packages/authentication_repository/lib/src/authentication_repository.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (final _) => const SignUpPage());
  }

  @override
  Widget build(final BuildContext context) {
    return BasePage(
      onGoBack: () => Navigator.of(context).pop(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocProvider<SignUpCubit>(
          create: (final _) =>
              SignUpCubit(context.read<AuthenticationRepository>()),
          child: const SignUpForm(),
        ),
      ),
    );
  }
}
