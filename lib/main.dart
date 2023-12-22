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
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: Column(
          children: [
            Center(
              child: Text("hi guys how are you"),
            ),
            ElevatedButton(onPressed: () {
            }, child: Text("click"))
          ],
        ),
      ),
    );
  }
}
