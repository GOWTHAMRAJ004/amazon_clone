import 'package:amazon_clone/features/auth/screens/auth.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(builder: (_) => AuthScreen());
    default:
      return MaterialPageRoute(
        builder: (_)=> Scaffold(
          body: Center(
            child: Text("hi ur are correct"),
          ),
        ),
      );
  }
}
