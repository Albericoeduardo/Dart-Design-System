import 'package:flutter/material.dart';
import 'package:input_text/DesignSystem/Buttons/ActionButton/action_button.dart';
import 'package:input_text/DesignSystem/Buttons/ActionButton/action_button_view_model.dart';
import 'package:input_text/pages/actionButtonPage/action_button_page.dart';
import 'package:input_text/pages/inputFieldPage/input_field_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Buttons page"),
            ActionButton(viewModel: 
              ActionButtonViewModel(
                size: ActionButtonSize.large,
                style: ActionButtonStyle.primary,
                text: 'Large',
                icon: const Icon(Icons.next_plan),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ActionButtonPage()
                    )
                  );
                }
              )
            ),
            const SizedBox(height: 20,),
            const Text("Input Field page"),
            ActionButton(viewModel: 
              ActionButtonViewModel(
                size: ActionButtonSize.large,
                style: ActionButtonStyle.primary,
                text: 'Large',
                icon: const Icon(Icons.next_plan),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputFieldPage()
                    )
                  );
                }
              )
            ),
          ],
        ),
      ),
    );
  }
}