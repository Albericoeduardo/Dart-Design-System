import 'package:flutter/material.dart';
import 'package:input_text/DesignSystem/BottomTabBar/bottom_tab_bar_view_model.dart';

class BottomTabBar extends StatelessWidget {
  final BottomTabBarViewModel viewModel;
  const BottomTabBar({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomTabs.map((tab) {
        return BottomNavigationBarItem(
          icon: Icon(tab[IconData] as IconData?),
          label: tab['label'] as String,
        );
      }).toList(),
      currentIndex: viewModel.initialIndex,
      onTap: viewModel.onIndexChanged,
    );
  }
}