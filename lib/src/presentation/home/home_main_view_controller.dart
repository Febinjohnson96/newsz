import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class HomeMainViewController extends GetxController {
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  List<BarItem> get barItems => [
        BarItem(title: "Home", icon: FontAwesomeIcons.house),
        BarItem(title: "Search", icon: FontAwesomeIcons.searchengin),
        BarItem(title: "BookMark", icon: FontAwesomeIcons.bookmark),
      ];
}
