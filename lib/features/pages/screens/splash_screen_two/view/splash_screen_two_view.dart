import 'package:blood_donation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenTwo extends StatelessWidget {
  final Animation<Offset> textSlideAnimation;
  final Animation<double> logoFadeAnimation;

  const SplashScreenTwo({
    super.key,
    required this.textSlideAnimation,
    required this.logoFadeAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: gradientColors.firstGradient[0],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors.firstGradient,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    FadeTransition(
                      opacity: logoFadeAnimation,
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 169,
                        height: 169,
                      ),
                    ),
                    SizedBox(height: 20),
                    SlideTransition(
                      position: textSlideAnimation,
                      child: Text(
                        "Blood Link",
                        style: GoogleFonts.inriaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}