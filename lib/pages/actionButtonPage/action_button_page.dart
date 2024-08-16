import 'package:flutter/material.dart';
import 'package:input_text/DesignSystem/Buttons/ActionButton/action_button.dart';
import 'package:input_text/DesignSystem/Buttons/ActionButton/action_button_view_model.dart';

class ActionButtonPage extends StatelessWidget {
  const ActionButtonPage({super.key});

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
                        onTap: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.primary,
                        text: 'Medium',
                        icon: const Icon(Icons.send),
                        onTap: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.primary,
                        text: 'Small',
                        onTap: () {}
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
                        onTap: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.secondary,
                        text: 'Medium',
                        icon: const Icon(Icons.send),
                        onTap: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.secondary,
                        text: 'Small',
                        onTap: () {}
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
                        onTap: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.tertiary,
                        text: 'Medium',
                        icon: const Icon(Icons.send),
                        onTap: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.tertiary,
                        text: 'Small',
                        onTap: () {}
                      )
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}