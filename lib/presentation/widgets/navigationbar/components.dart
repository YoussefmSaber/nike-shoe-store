import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_shoe_store/presentation/theme/theme.dart';

AnimatedBottomNavigationBar animatedBottomNavigation(
    List<String> iconList, int bottomNavIndex, Function(int) changeTab) {
  return AnimatedBottomNavigationBar.builder(
    itemCount: iconList.length,
    tabBuilder: (int index, bool isActive) {
      final color = isActive ? primaryColor : textColor2;
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SvgPicture.asset(
          iconList[index],
          color: color,
        ),
      );
    },
    backgroundColor: Colors.white,
    activeIndex: bottomNavIndex,
    splashColor: primaryColor,
    splashSpeedInMilliseconds: 350,
    blurEffect: true,
    notchSmoothness: NotchSmoothness.defaultEdge,
    gapLocation: GapLocation.center,
    leftCornerRadius: 16,
    rightCornerRadius: 16,
    onTap: changeTab,
    shadow: BoxShadow(
      offset: const Offset(0, 1),
      blurRadius: 10,
      spreadRadius: 10,
      color: Colors.black.withOpacity(0.12),
    ),
  );
}
