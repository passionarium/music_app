import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    required this.body,
    super.key,
    this.title = '',
    this.canGoBack = true,
    this.actions = const [],
    this.resizeToAvoidBottomInset = false,
    this.onGoBack,
    this.customGoBackCallback,
    this.darkenBackground = false,
    this.bottomNavigationBar,
    this.customAppBar,
  });
  final String title;
  final Widget body;
  final bool canGoBack;
  final List<Widget> actions;
  final bool resizeToAvoidBottomInset;
  final PreferredSizeWidget? customAppBar;

  /// Executes code along with closing the page
  final VoidCallback? onGoBack;

  /// Makes the back button not close the page, but runs the callback instead
  final VoidCallback? customGoBackCallback;
  final bool darkenBackground;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: darkenBackground
              ? Colors.black.withOpacity(0.5)
              : Colors.transparent,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          bottomNavigationBar: bottomNavigationBar,
          appBar: customAppBar ?? AppBar(),
          body: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: body,
            ),
          ),
        ),
      ],
    );
  }
}

class EmptyBasePage extends StatelessWidget {
  const EmptyBasePage({required this.body, super.key});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: body,
          ),
        ),
      ],
    );
  }
}
