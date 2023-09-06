import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.deepPurple.shade700,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(FluentIcons.home_20_regular),
            activeIcon: Icon(FluentIcons.home_20_filled),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(FluentIcons.heart_20_regular),
            activeIcon: Icon(FluentIcons.heart_20_filled),
            label: "Favorites"),
        BottomNavigationBarItem(
            icon: Icon(FluentIcons.play_circle_20_regular),
            activeIcon: Icon(FluentIcons.play_circle_20_filled),
            label: "Play"),
        BottomNavigationBarItem(
            icon: Icon(FluentIcons.person_20_regular),
            activeIcon: Icon(FluentIcons.person_20_filled),
            label: "Profile"),
      ],
    );
  }
}
