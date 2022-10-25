import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';

import 'package:music_app/generated/l10n.dart';
import 'package:music_app/src/app/widgets/button.dart';
import 'package:music_app/src/features/login/presentation/cubit/login_cubit.dart';
import 'package:music_app/src/features/sign_up/presentation/pages/sign_up_page.dart';
import 'package:music_app/src/style/colors.dart';
import 'package:music_app/src/style/typography.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isChecked = false;

  @override
  Widget build(final BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (final context, final state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Authentication Failure'),
              ),
            );
        }
      },
      child: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/logo/logo_black.png',
                height: 50,
              ),
              const SizedBox(
                height: 100,
              ),
              _EmailInput(),
              const SizedBox(height: 30),
              _PasswordInput(),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (final bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        S.current.remember_me,
                        style: AppTypography.normal(),
                      ),
                    ],
                  ),
                  Text(
                    S.current.forgot_password,
                    style: AppTypography.normal(),
                  ),
                ],
              ),
              _SignUpButton(),
              const SizedBox(
                height: 20,
              ),
              _LoginButton(),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _InstagramLoginButton(),
                  _GoogleLoginButton(),
                  _FacebookLoginButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (final previous, final current) =>
          previous.email != current.email,
      builder: (final context, final state) {
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (final email) =>
              context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.brandDefault),
              borderRadius: BorderRadius.circular(20),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.blackLight200),
              borderRadius: BorderRadius.circular(20),
            ),
            errorText: state.email.invalid ? 'invalid email' : null,
            labelText: S.current.email,
            labelStyle: AppTypography.normal(color: AppColors.brandDefault),
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatefulWidget {
  @override
  State<_PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<_PasswordInput> {
  bool isVisible = false;
  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (final previous, final current) =>
          previous.password != current.password,
      builder: (final context, final state) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (final password) =>
              context.read<LoginCubit>().passwordChanged(password),
          obscureText: isVisible,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.brandDefault),
              borderRadius: BorderRadius.circular(20),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorText:
                state.password.invalid ? S.current.invalid_password : null,
            labelText: S.current.password,
            labelStyle: AppTypography.normal(color: AppColors.brandDefault),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(
                  isVisible ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.blackDark900,
                ),
                onPressed: () {
                  setState(
                    () {
                      isVisible = !isVisible;
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (final previous, final current) =>
          previous.status != current.status,
      builder: (final context, final state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : AppPrimaryButton(
                size: ButtonSize.large,
                onTap: () => state.status.isValidated
                    ? () => context.read<LoginCubit>().logInWithCredentials()
                    : null,
                text: S.current.sign_in,
                isDisabled: false,
              );
      },
    );
  }
}

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return TraverIconButton(
      icon: FontAwesomeIcons.google,
      onTap: () => context.read<LoginCubit>().logInWithGoogle(),
    );
  }
}

class _FacebookLoginButton extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return TraverIconButton(
      icon: FontAwesomeIcons.facebookF,
      onTap: () => context.read<LoginCubit>().logInWithGoogle(),
    );
  }
}

class _InstagramLoginButton extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return TraverIconButton(
      icon: FontAwesomeIcons.instagram,
      onTap: () => context.read<LoginCubit>().logInWithGoogle(),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return TraverSecondaryButton(
      size: ButtonSize.large,
      isDisabled: false,
      text: S.current.create_account,
      key: const Key('loginForm_createAccount_flatButton'),
      onTap: () => Navigator.of(context).push<void>(SignUpPage.route()),
    );
  }
}
