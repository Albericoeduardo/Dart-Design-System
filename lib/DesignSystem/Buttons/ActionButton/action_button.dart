import 'package:flutter/material.dart';
import 'package:input_text/DesignSystem/Buttons/ActionButton/action_button_view_model.dart';
import 'package:input_text/shared/colors.dart';
import 'package:input_text/shared/styles.dart';

class ActionButton extends StatelessWidget {
  final ActionButtonViewModel viewModel;

  const ActionButton({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    double width = 128;
    double heigth = 48;
    double horizontalPadding = 32;
    double verticalPadding = 12;
    double iconSize = 24;
    TextStyle buttonTextStyle = button3Semibold;
    Color buttonColor = lightPrimaryBrandColor;

    switch (viewModel.size) {
      case ActionButtonSize.large:
        width = 128;
        heigth = 48;
        buttonTextStyle = button1Bold;
        iconSize = 24;
        break;
      case ActionButtonSize.medium:
        width = 128;
        heigth = 40;
        buttonTextStyle = button2Semibold;
        iconSize = 24;
        break;
      case ActionButtonSize.small:
        width = 64;
        heigth = 32;
        buttonTextStyle = button3Semibold;
        iconSize = 16;
        break;
      default:
    }

    switch (viewModel.style) {
      case ActionButtonStyle.primary:
        buttonColor = lightPrimaryBrandColor;
        break;
      case ActionButtonStyle.secondary:
        buttonColor = lightSecondaryBrandColor;
        break;
      case ActionButtonStyle.tertiary:
        buttonColor = lightTertiaryBrandColor;
        break;
      default:
    }

    return ElevatedButton(
      onPressed: viewModel.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        textStyle: buttonTextStyle,
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding
        )
      ),
      child: viewModel.icon !=null ?
      Row(
        children: [
          Icon(
            viewModel.icon,
            size: iconSize,
          ),
          Text(viewModel.text)
        ],
      ) :
      Text(viewModel.text),
    );
  }
}