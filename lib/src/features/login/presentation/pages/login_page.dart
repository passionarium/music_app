import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/src/app/widgets/base_page.dart';

import 'package:music_app/src/features/login/presentation/cubit/login_cubit.dart';
import 'package:music_app/src/features/login/presentation/pages/widgets/login_form.dart';
import 'package:music_app/src/packages/authentication_repository/lib/src/authentication_repository.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: LoginPage());

  @override
  Widget build(final BuildContext context) {
    return BasePage(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocProvider(
          create: (final _) =>
              LoginCubit(context.read<AuthenticationRepository>()),
          child: const LoginForm(),
        ),
      ),
    );
  }
}
