import 'dart:async';

import 'package:blood_donation/pages/landing_page.dart';
import 'package:blood_donation/pages/landing_page_one.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenState extends StatefulWidget {
  const SplashScreenState({super.key});

  @override
  State<SplashScreenState> createState() => __SplashScreenStateState();
}

class __SplashScreenStateState extends State<SplashScreenState> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
      ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:
        (context) => LandingPageOne())));
      }
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/blood_donation.png',
                width: 169,
                height: 169,
              ),
            ),
            Text(
              "Blood Link",
              style:GoogleFonts.inriaSans(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: Colors.black
              ),
            )
          ],
        )
      ),
    );
  }
}