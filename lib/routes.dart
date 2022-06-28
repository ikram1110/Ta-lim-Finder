import 'package:flutter/material.dart';
import 'package:talim_finder/containers/home/home.dart';
import 'package:talim_finder/containers/splash/splash.dart';

class Routes {
  Routes._();

  static const String splash = "/splash";
  static const String home = "/home";

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => const SplashScreen(),
    home: (BuildContext context) => HomeScreen(),
  };
}
