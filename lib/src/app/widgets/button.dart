import 'package:flutter/material.dart';
import 'package:music_app/src/style/colors.dart';
import 'package:music_app/src/style/typography.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
    required this.onTap,
    required this.text,
    required this.isDisabled,
    required this.size,
    this.isIconOnly = false,
    this.iconLeft,
    this.iconRight,
    this.icon,
    super.key,
  });
  final ButtonSize size;
  final VoidCallback onTap;
  final String text;
  final bool isDisabled;
  final bool isIconOnly;
  final IconData? iconLeft;
  final IconData? iconRight;
  final IconData? icon;

  @override
  Widget build(final BuildContext context) {
    final sizeToWidth = {
      ButtonSize.large: MediaQuery.of(context).size.width - 40,
      ButtonSize.medium: 224.0,
      ButtonSize.small: 98.0,
    };

    final sizeToHeight = {
      ButtonSize.large: 56.0,
      ButtonSize.medium: 46.0,
      ButtonSize.small: 36.0,
    };

    final sizeToTextStyle = {
      ButtonSize.large: AppTypography.normal,
      ButtonSize.medium: AppTypography.normal,
      ButtonSize.small: AppTypography.normal,
    };

    return MaterialButton(
      elevation: 0,
      onPressed: isDisabled ? null : onTap,
      color: AppColors.brandDefault,
      disabledColor: AppColors.brandLight100.withOpacity(0.5),
      padding: EdgeInsets.zero,
      splashColor: AppColors.brandDefault.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      animationDuration: const Duration(milliseconds: 150),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: isIconOnly
          ? DecoratedBox(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(90)),
              child: Icon(
                icon,
                size: 12,
              ),
            )
          : Container(
              height: sizeToHeight[size],
              width: sizeToWidth[size],
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconLeft,
                    size: 12,
                  ),
                  Text(
                    text,
                    style:
                        sizeToTextStyle[size]!(color: AppColors.blackDark900),
                  ),
                  Icon(
                    iconRight,
                    size: 12,
                  ),
                ],
              ),
            ),
    );
  }
}

class TraverSecondaryButton extends StatelessWidget {
  const TraverSecondaryButton({
    required this.size,
    required this.onTap,
    required this.text,
    required this.isDisabled,
    this.isIconOnly = false,
    this.iconLeft,
    this.iconRight,
    this.icon,
    super.key,
  });
  final ButtonSize size;
  final VoidCallback onTap;
  final String text;
  final bool isDisabled;
  final bool isIconOnly;
  final IconData? iconLeft;
  final IconData? iconRight;
  final IconData? icon;

  @override
  Widget build(final BuildContext context) {
    final sizeToWidth = {
      ButtonSize.large: MediaQuery.of(context).size.width - 40,
      ButtonSize.medium: 224.0,
      ButtonSize.small: 98.0,
    };

    final sizeToHeight = {
      ButtonSize.large: 56.0,
      ButtonSize.medium: 46.0,
      ButtonSize.small: 36.0,
    };

    final sizeToTextStyle = {
      ButtonSize.large: AppTypography.normal,
      ButtonSize.medium: AppTypography.normal,
      ButtonSize.small: AppTypography.normal,
    };

    return MaterialButton(
      elevation: 0,
      onPressed: isDisabled ? null : onTap,
      color: AppColors.white,
      disabledColor: AppColors.white.withOpacity(0.1),
      padding: EdgeInsets.zero,
      splashColor: AppColors.brandDefault.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.blackLight200),
        borderRadius: BorderRadius.circular(20),
      ),
      animationDuration: const Duration(milliseconds: 150),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: isIconOnly
          ? SizedBox(
              width: 48,
              height: 48,
              child: Icon(
                icon,
                size: 12,
              ),
            )
          : Container(
              height: sizeToHeight[size],
              width: sizeToWidth[size],
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconLeft,
                    size: 12,
                  ),
                  Text(
                    text,
                    style:
                        sizeToTextStyle[size]!(color: AppColors.blackDark900),
                  ),
                  Icon(
                    iconRight,
                    size: 12,
                  ),
                ],
              ),
            ),
    );
  }
}

class TraverIconButton extends StatelessWidget {
  const TraverIconButton({
    required this.icon,
    required this.onTap,
    super.key,
  });
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blackLight200,
          borderRadius: BorderRadius.circular(
            90,
          ),
        ),
        width: 48,
        height: 48,
        child: Icon(icon),
      ),
    );
  }
}

enum ButtonSize {
  large,
  medium,
  small,
}
