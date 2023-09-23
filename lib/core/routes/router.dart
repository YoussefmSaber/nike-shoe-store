import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_shoe_store/main.dart';
import 'package:nike_shoe_store/presentation/screens/screens.dart';
import 'package:nike_shoe_store/presentation/widgets/navigationbar/components.dart';

class ApplicationRouter {
  late final GoRouter router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (BuildContext context, state) =>
            MyHomePage(title: 'Nike Shoe Store'),
      ),
      GoRoute(
        name: 'details',
        path: '/details/:shoeItemId',
        builder: (BuildContext context, state) => DetailsScreen(
          shoeItemId: state.pathParameters['shoeItemId']!,
        ),
      ),
    ],
  );
}
