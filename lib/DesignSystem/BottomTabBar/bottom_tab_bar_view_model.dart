import 'package:flutter/material.dart';

const bottomTabs = [
  {
    "index": "1",
    "label": "Home",
    IconData: Icons.home
  },
  {
    "index": "2",
    "label": "Label",
    IconData: Icons.label
  },
  {
    "index": "3",
    "label": "Label",
    IconData: Icons.label
  },
  {
    "index": "4",
    "label": "Label",
    IconData: Icons.label
  },
];

class BottomTabBarViewModel {
  final Function(int)? onIndexChanged;
  final int initialIndex;

  BottomTabBarViewModel({
    required this.initialIndex, 
    this.onIndexChanged
  });
}