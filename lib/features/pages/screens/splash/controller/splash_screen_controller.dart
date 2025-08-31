import 'dart:async';
import 'package:blood_donation/features/pages/screens/splash/view/splash_screen_view.dart';
import 'package:blood_donation/features/pages/screens/splash_screen_two/controller/splash_screen_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenStateController extends StatefulWidget {
  const SplashScreenStateController({super.key});

  @override
  State<SplashScreenStateController> createState() => _SplashScreenStateControllerState();
}

class _SplashScreenStateControllerState extends State<SplashScreenStateController> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
        () {
          if (mounted) {
            GoRouter.of(context).go('/splash-two');
          }
        },
      );
    }

  @override
  Widget build(BuildContext context) {
    return const SplashScreenView();
  }
}

