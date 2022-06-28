import 'dart:async';

import 'package:flutter/material.dart';
import 'package:talim_finder/constants/assets.dart';
import 'package:talim_finder/constants/colors.dart';
import 'package:talim_finder/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.aqua,
      child: Center(child: Image.asset(Assets.appLogo)),
    );
  }

  startTimer() {
    var duration = const Duration(seconds: 2);
    return Timer(duration, navigate);
  }

  navigate() {
    Navigator.of(context).pushReplacementNamed(Routes.home);
  }
}
