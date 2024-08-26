import 'package:flutter/material.dart';

class InputTextViewModel {
  final TextEditingController controller;
  final String placeholder;
  bool password;
  final Widget? suffixIcon;
  final bool isEnabled;
  final String? Function(String?)? validator;
  final VoidCallback? togglePasswordVisibility;

  InputTextViewModel._({
    required this.controller,
    required this.placeholder,
    required this.password,
    this.suffixIcon,
    this.isEnabled = true,
    this.validator,
    this.togglePasswordVisibility,
  });

  factory InputTextViewModel({
    required TextEditingController controller,
    required String placeholder,
    required bool password,
    Widget? suffixIcon,
    bool isEnabled = true,
    String? Function(String?)? validator,
    VoidCallback? togglePasswordVisibility,
  }) {
    return InputTextViewModel._(
      controller: controller,
      placeholder: placeholder,
      password: password,
      suffixIcon: suffixIcon,
      isEnabled: isEnabled,
      validator: validator,
      togglePasswordVisibility: togglePasswordVisibility,
    );
  }
}
