import 'package:flavorization_app_theme/flavors.dart';
import 'package:flavorization_app_theme/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  CustomButton({required this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: FlavorStyle.dimens.buttonHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ThemeColors.of(context).accent,
          borderRadius: BorderRadius.all(
            Radius.circular(FlavorStyle.dimens.buttonRadius),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
