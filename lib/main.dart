import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_shoe_store/core/routes/router.dart';
import 'package:nike_shoe_store/presentation/screens/cart/cart_screen.dart';
import 'package:nike_shoe_store/presentation/screens/favorite/favorite_screen.dart';
import 'package:nike_shoe_store/presentation/screens/notification/notification_screen.dart';
import 'package:nike_shoe_store/presentation/screens/profile/profile_screen.dart';
import 'package:nike_shoe_store/presentation/screens/screens.dart';
import 'package:nike_shoe_store/presentation/theme/theme.dart';
import 'package:nike_shoe_store/presentation/widgets/components.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

import 'core/api_keys.dart';

void main() async {
  await Supabase.initialize(url: projectUrl, anonKey: projectAnonKey);

  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: ApplicationRouter().router,
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

  final screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor2,
        body: screens[_bottomNavIndex],
        floatingActionButton: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: primaryColor,
            hoverColor: primaryColor,
            splashColor: secondaryColor,
            onPressed: () {
              setState(() {
                _bottomNavIndex = 4;
              });
            },
            child: SvgPicture.asset(
              'assets/svgs/cart.svg',
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: animatedBottomNavigation(
          iconList,
          _bottomNavIndex,
          (index) {
            setState(() {
              _bottomNavIndex = index;
            });
          },
        ),
      ),
    );
  }
}
