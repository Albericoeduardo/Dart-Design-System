import 'package:flutter/material.dart';
import 'package:input_text/DesignSystem/Buttons/InputText/input_text.dart';
import 'package:input_text/DesignSystem/Buttons/InputText/input_text_view_model.dart';

class MyHomePage extends StatelessWidget {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController passwordController1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController passwordController3 = TextEditingController();

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styled Input Field Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Enabled"),
            const SizedBox(height: 20,),
            StyledInputField(
              viewModel: InputTextViewModel(
                controller: controller1,
                placeholder: 'Label',
                password: false,
                isEnabled: true,
                hasError: false,
              ),
            ),
            const SizedBox(height: 20,),
            StyledInputField(
              viewModel: InputTextViewModel(
                controller: passwordController1,
                placeholder: 'Label',
                password: true,
                suffixIcon: const Icon(Icons.remove_red_eye),
              ),
            ),
            const SizedBox(height: 20,),
            const Text("Disabled"),
            const SizedBox(height: 20,),
            StyledInputField(
              viewModel: InputTextViewModel(
                controller: controller2,
                placeholder: 'Label',
                password: false,
                isEnabled: false,
              ),
            ),
            const SizedBox(height: 20,),
            StyledInputField(
              viewModel: InputTextViewModel(
                controller: passwordController2,
                placeholder: 'Label',
                password: false,
                isEnabled: false,
                suffixIcon: const Icon(Icons.remove_red_eye)
              ),
            ),
            const SizedBox(height: 20,),
            const Text("Error"),
            const SizedBox(height: 20,),
            StyledInputField(
              viewModel: InputTextViewModel(
                controller: controller3,
                placeholder: 'Label',
                password: false,
                isEnabled: true,
                hasError: true,
                errorMsg: 'error'
              ),
            ),
            StyledInputField(
              viewModel: InputTextViewModel(
                controller: passwordController3,
                placeholder: 'Label',
                password: false,
                isEnabled: true,
                hasError: true,
                errorMsg: 'error',
                suffixIcon: const Icon(Icons.remove_red_eye)
              ),
            ),
          ],
        ),
      ),
    );
  }
}