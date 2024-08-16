
import 'package:flutter/cupertino.dart';
import 'package:input_text/DesignSystem/Buttons/ActionButton/action_button_view_model.dart';
import 'package:input_text/shared/colors.dart';

class ActionButton extends StatelessWidget {
  final ActionButtonViewModel viewModel;

  const ActionButton({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    double width = 128;
    double heigth = 48;

    Color buttonColor = lightPrimaryBrandColor;

    switch (viewModel.size) {
      case ActionButtonSize.large:
        width = 112;
        heigth = 48;
        break;
      case ActionButtonSize.medium:
        width = 128;
        heigth = 40;
        break;
      case ActionButtonSize.small:
        width = 64;
        heigth = 32;
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

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: heigth,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: viewModel.icon != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    viewModel.icon!,
                    Text(
                      viewModel.text,
                      style: const TextStyle(
                        color: lightPrimaryBaseColorLight,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              : Text(
                  viewModel.text,
                  style: const TextStyle(
                    color: lightPrimaryBaseColorLight,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}