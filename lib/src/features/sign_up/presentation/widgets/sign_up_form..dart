import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import 'package:music_app/src/features/sign_up/presentation/cubit/sign_up_cubit.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (final context, final state) {
        if (state.status.isSubmissionSuccess) {
          Navigator.of(context).pop();
        } else if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Sign Up Failure')),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _EmailInput(),
            const SizedBox(height: 8),
            _PasswordInput(),
            const SizedBox(height: 8),
            _ConfirmPasswordInput(),
            const SizedBox(height: 8),
            _SignUpButton(),
          ],
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (final previous, final current) =>
          previous.email != current.email,
      builder: (final context, final state) {
        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (final email) =>
              context.read<SignUpCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'email',
            helperText: '',
            errorText: state.email.invalid ? 'invalid email' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (final previous, final current) =>
          previous.password != current.password,
      builder: (final context, final state) {
        return TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (final password) =>
              context.read<SignUpCubit>().passwordChanged(password),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'password',
            helperText: '',
            errorText: state.password.invalid ? 'invalid password' : null,
          ),
        );
      },
    );
  }
}

class _ConfirmPasswordInput extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (final previous, final current) =>
          previous.password != current.password ||
          previous.confirmedPassword != current.confirmedPassword,
      builder: (final context, final state) {
        return TextField(
          key: const Key('signUpForm_confirmedPasswordInput_textField'),
          onChanged: (final confirmPassword) => context
              .read<SignUpCubit>()
              .confirmedPasswordChanged(confirmPassword),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'confirm password',
            helperText: '',
            errorText: state.confirmedPassword.invalid
                ? 'passwords do not match'
                : null,
          ),
        );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (final previous, final current) =>
          previous.status != current.status,
      builder: (final context, final state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('signUpForm_continue_raisedButton'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.orangeAccent,
                ),
                onPressed: state.status.isValidated
                    ? () => context.read<SignUpCubit>().signUpFormSubmitted()
                    : null,
                child: const Text('SIGN UP'),
              );
      },
    );
  }
}
