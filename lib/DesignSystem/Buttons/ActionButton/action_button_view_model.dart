import 'package:flutter/material.dart';

enum ActionButtonSize {
  small,
  medium,
  large
}

enum ActionButtonStyle {
  primary,
  secondary,
  tertiary
}

class ActionButtonViewModel {
  final ActionButtonSize size;
  final ActionButtonStyle style;
  final String text;
  final IconData? icon;
  final Function() onPressed;

  ActionButtonViewModel._({
    required this.size,
    required this.style,
    required this.text,
    required this.onPressed,
    this.icon,
  });

  factory ActionButtonViewModel({
    required ActionButtonSize size,
    required ActionButtonStyle style,
    required String text,
    required Function() onPressed,
    IconData? icon,
  }) {
    return ActionButtonViewModel._(
      size: size,
      style: style,
      text: text,
      onPressed: onPressed,
      icon: icon,
    );
  }
}