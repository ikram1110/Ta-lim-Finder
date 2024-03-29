import 'package:flutter/material.dart';
import 'package:talim_finder/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.nunitoTextTheme(),
          scaffoldBackgroundColor: Colors.white),
      initialRoute: Routes.splash,
      routes: Routes.routes,
    );
  }
}
