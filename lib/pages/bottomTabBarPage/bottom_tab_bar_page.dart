import 'package:flutter/material.dart';
import 'package:input_text/Components/BottomTabBar/bottom_tab_bar.dart';
import 'package:input_text/Components/BottomTabBar/bottom_tab_bar_view_model.dart';

class BottomTabBarPage extends StatefulWidget {
  const BottomTabBarPage({super.key});

  @override
  State<BottomTabBarPage> createState() => _BottomTabBarPageState();
}

class _BottomTabBarPageState extends State<BottomTabBarPage> {
  int actualIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const Center(child: Text('Home Page')),
      const Center(child: Text('Messages Page')),
      const Center(child: Text('Label Page')),
      const Center(child: Text('Profile Page')),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Tab Bar Page'),
      ),
      body: pages[actualIndex],
      bottomNavigationBar: BottomTabBar(
        viewModel: BottomTabBarViewModel(
          initialIndex: actualIndex,
          onIndexChanged: (index) {
            setState(() {
              actualIndex = index;
            });
          },
        ),
      ),
    );
  }
}