import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme: ThemeData(
            brightness: Brightness.dark, primarySwatch: Colors.lightGreen),
        initialRoute: "/home",
        routes: {
          "/": (context) => const Loginpage(),
          "/home": (context) => HomePage(),
          "/login": (context) => const Loginpage()
        });
  }
}
