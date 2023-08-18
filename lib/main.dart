import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenverse/Pages/landingPage.dart';
import 'package:greenverse/Pages/loginPage.dart';
import 'package:greenverse/Pages/SignupPage.dart';
import 'package:greenverse/Pages/homePage.dart';
import 'package:greenverse/Pages/gmartPage.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: LandingPage(),
    );
  }
}
