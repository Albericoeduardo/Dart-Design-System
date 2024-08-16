import 'package:flutter/material.dart';

enum ActionButtonSize{
  small,
  medium,
  large
}

enum ActionButtonStyle{
  primary,
  secondary,
  tertiary
}

class ActionButtonViewModel {
  final ActionButtonSize size;
  final ActionButtonStyle style;
  final String text;
  final Icon? icon;
  final Function() onTap;

  ActionButtonViewModel({
    required this.size,
    required this.style,
    required this.text,
    required this.onTap,
    this.icon
  });
}