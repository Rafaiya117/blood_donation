import 'package:flutter/material.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/first_image.png',
                    width: 265,
                    height: 265,
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 169,
                    height: 169,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
