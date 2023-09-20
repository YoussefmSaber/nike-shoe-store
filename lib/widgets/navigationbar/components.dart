import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

AnimatedBottomNavigationBar animatedBottomNavigation(
    List<IconData> iconList, int bottomNavIndex, Function(int) changeTab) {
  return AnimatedBottomNavigationBar.builder(
    itemCount: iconList.length,
    tabBuilder: (int index, bool isActive) {
      final color = isActive ? Colors.orange : Colors.grey;
      return Icon(
        iconList[index],
        size: 24,
        color: color,
      );
    },
    backgroundColor: Colors.white,
    activeIndex: bottomNavIndex,
    splashColor: Colors.orange,
    splashSpeedInMilliseconds: 200,
    notchSmoothness: NotchSmoothness.defaultEdge,
    gapLocation: GapLocation.center,
    leftCornerRadius: 16,
    rightCornerRadius: 16,
    onTap: changeTab,
    shadow: BoxShadow(
      offset: const Offset(0, 1),
      blurRadius: 12,
      spreadRadius: 0.5,
      color: Colors.black.withOpacity(0.12),
    ),
  );
}
