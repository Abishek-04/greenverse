import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: const Scaffold(
          backgroundColor: Colors.transparent,
          body: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Adjust the padding as needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Green',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'RedHatText',
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'verse',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'RedHatText',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2BC193),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'For Greener Earth - Join Green ',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RedHatText',
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Verse!',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'RedHatText',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2BC193),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

