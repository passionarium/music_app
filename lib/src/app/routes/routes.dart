import 'package:flutter/widgets.dart';
import 'package:music_app/src/app/bloc/app_bloc.dart';
import 'package:music_app/src/features/login/presentation/pages/login_page.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  final AppStatus state,
  final List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      // return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
