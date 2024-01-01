import 'package:amazon_clone/features/auth/screens/auth.dart';
import 'package:amazon_clone/routers.dart';
import 'package:flutter/material.dart';
import 'constans/global_variable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'amazon clone',
      //declaring them data which defined data for the app
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: AppBarTheme(
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.black,
              ))),
              onGenerateRoute: (settings)=> generateRoute(settings),
              home: const AuthScreen(),
    );
  }
}
