import 'package:flutter/material.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class AppBottomNavbar extends StatelessWidget {
  const AppBottomNavbar(
      {Key? key,
      required this.barItems,
      required this.selectedIndex,
      this.onButtonPressed})
      : super(key: key);

  final List<BarItem> barItems;
  final int selectedIndex;
  final VoidCallback? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return SlidingClippedNavBar(
        barItems: barItems,
        selectedIndex: selectedIndex,
        onButtonPressed: (index) {
          onButtonPressed?.call();
        },
        activeColor: redRibbon);
  }
}
