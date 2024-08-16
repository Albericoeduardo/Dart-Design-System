import 'package:flutter/material.dart';
import 'package:input_text/DesignSystem/Buttons/ActionButton/action_button.dart';
import 'package:input_text/DesignSystem/Buttons/ActionButton/action_button_view_model.dart';
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Esse campo é obrigatório';
                  } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                    return 'Somente letras são permitidas!';
                  }
                  return null;
                }
              ),
            ),
            const SizedBox(height: 20,),
            StyledInputField(
              viewModel: InputTextViewModel(
                controller: passwordController1,
                placeholder: 'Label',
                password: true,
                suffixIcon: const Icon(Icons.remove_red_eye),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Esse campo é obrigatório';
                  }
                  return null;
                }
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.large,
                        style: ActionButtonStyle.primary,
                        text: 'Large',
                        icon: const Icon(Icons.send),
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.primary,
                        text: 'Medium',
                        icon: const Icon(Icons.send),
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.primary,
                        text: 'Small',
                      )
                    ),
                  ],
                ),
                Column(
                  children: [
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.large,
                        style: ActionButtonStyle.secondary,
                        text: 'Large',
                        icon: const Icon(Icons.send),
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.secondary,
                        text: 'Medium',
                        icon: const Icon(Icons.send),
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.secondary,
                        text: 'Small',
                      )
                    ),
                  ],
                ),
                Column(
                  children: [
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.large,
                        style: ActionButtonStyle.tertiary,
                        text: 'Large',
                        icon: const Icon(Icons.send),
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.tertiary,
                        text: 'Medium',
                        icon: const Icon(Icons.send),
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.tertiary,
                        text: 'Small',
                      )
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}