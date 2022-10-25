import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:music_app/generated/l10n.dart';
import 'package:music_app/src/app/bloc_observer.dart';
import 'package:music_app/src/app/presentation/app.dart';
import 'package:music_app/src/packages/authentication_repository/lib/src/authentication_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();

  await Firebase.initializeApp();

  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;

  await S.load(Locale(Intl.systemLocale.substring(0, 2)));
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    App(
      authenticationRepository: authenticationRepository,
    ),
  );
}
