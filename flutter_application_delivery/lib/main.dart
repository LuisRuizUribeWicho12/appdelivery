import 'package:flutter/material.dart';
import 'package:flutter_application_delivery/src/login/login_page.dart';
import 'package:flutter_application_delivery/src/utils/my_colors.dart';
import 'package:flutter_application_delivery/src/register/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Delivery App Flutter",
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage()
      },
      theme: ThemeData(
          fontFamily: 'NimbusSans', primaryColor: MyColors.primaryColor),
    );
  }
}
