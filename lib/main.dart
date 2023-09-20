import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_shoe_store/widgets/navigationbar/components.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Animated Navigation Bottom Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  var _bottomNavIndex = 0; //default index of a first screen

  final iconList = [
    'assets/svgs/home.svg',
    'assets/svgs/favorite.svg',
    'assets/svgs/notification.svg',
    'assets/svgs/profile.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text("asdasd"),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: SvgPicture.asset(
              'assets/svgs/cart.svg',
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: animatedBottomNavigation(
          iconList,
          _bottomNavIndex,
          (index) => setState(() => _bottomNavIndex = index),
        ),
      ),
    );
  }
}
