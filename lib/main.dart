import 'package:flutter/material.dart';
import 'package:plants/homescreen.dart';
import 'package:plants/login.dart';
import 'package:plants/profile.dart';
import 'package:plants/search.dart';
import 'package:plants/signup.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'login',
          routes: {
            'login': (context) => login(),
            'signup': (context) => signup(),
            'profile': (context) => profile(),
            'search': (context) => search(),
            'homescreen': ((context) => homescreen()),
          });
    }));
  }
}
