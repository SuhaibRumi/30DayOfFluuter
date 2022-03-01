import 'package:flutter/material.dart';
import 'package:flutter_catalog/Utils/routes.dart';
import 'package:flutter_catalog/Widgets/themes.dart';
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
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => const Loginpage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.loginRoute: (context) => const Loginpage()
        });
  }
}
