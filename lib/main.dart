import 'package:blood_donation/core/app_route/router.dart';
import 'package:blood_donation/features/pages/screens/splash/controller/splash_screen_controller.dart';
import 'package:blood_donation/features/pages/screens/splash/view/splash_screen_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF6200EA),
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF016D63),
        ),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}

