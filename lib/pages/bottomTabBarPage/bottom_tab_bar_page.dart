import 'package:flutter/material.dart';
import 'package:input_text/DesignSystem/BottomTabBar/bottom_tab_bar.dart';
import 'package:input_text/DesignSystem/BottomTabBar/bottom_tab_bar_view_model.dart';

class BottomTabBarPage extends StatelessWidget {
  const BottomTabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Tab Bar Page'),
      ),
      body: const Center(
        child: Text('Bottom Tab Bar Page'),
      ),
      bottomNavigationBar: BottomTabBar(
        viewModel: BottomTabBarViewModel(
          initialIndex: 1,
          onIndexChanged: (index) {
            print('Index: $index');
          },
        ),
      ),
    );
  }
}