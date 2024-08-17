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
                        icon: Icons.navigate_next_outlined,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.primary,
                        text: 'Medium',
                        icon: Icons.navigate_next_outlined,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.primary,
                        text: 'Small',
                        onPressed: () {}
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
                        icon: Icons.navigate_next_outlined,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.secondary,
                        text: 'Medium',
                        icon: Icons.navigate_next_outlined,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.secondary,
                        text: 'Small',
                        onPressed: () {}
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
                        icon: Icons.navigate_next_outlined,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.medium,
                        style: ActionButtonStyle.tertiary,
                        text: 'Medium',
                        icon: Icons.navigate_next_outlined,
                        onPressed: () {}
                      )
                    ),
                    const SizedBox(height: 10,),
                    ActionButton(viewModel: 
                      ActionButtonViewModel(
                        size: ActionButtonSize.small,
                        style: ActionButtonStyle.tertiary,
                        text: 'Small',
                        onPressed: () {}
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