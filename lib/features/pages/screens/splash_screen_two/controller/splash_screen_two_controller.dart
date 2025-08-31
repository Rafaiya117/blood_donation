import 'dart:async';
import 'package:blood_donation/features/pages/landing_screens/landing_page_one.dart';
import 'package:blood_donation/features/pages/screens/splash_screen_two/view/splash_screen_two_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashScreenTwoController extends StatefulWidget {
  const SplashScreenTwoController({super.key});

  @override
  State<SplashScreenTwoController> createState() => _SplashScreenTwoControllerState();
}

class _SplashScreenTwoControllerState extends State<SplashScreenTwoController> with TickerProviderStateMixin {
  late AnimationController textSlideController;
  late Animation<Offset> textSlideAnimation;

  late AnimationController logoFadeController;
  late Animation<double> logoFadeAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize controllers
    textSlideController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 900),
    );
    textSlideAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: textSlideController,
      curve: Curves.easeOut,
    ));

    logoFadeController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2),
    );
    logoFadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: logoFadeController,
      curve: Curves.easeIn,
    ));

    _startSequence();
  }

  Future<void> _startSequence() async {
    await textSlideController.forward();
    await logoFadeController.forward();

    await Future.delayed(Duration(milliseconds: 600));
    if (mounted) {
  GoRouter.of(context).go('/landing-one');
}

  }

  @override
  void dispose() {
    textSlideController.dispose();
    logoFadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenTwo(
      textSlideAnimation: textSlideAnimation,
      logoFadeAnimation: logoFadeAnimation,
    );
  }
}
