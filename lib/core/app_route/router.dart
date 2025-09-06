import 'package:blood_donation/features/pages/feed_page/view/feed_page.dart';
import 'package:blood_donation/features/pages/find_donor/view/find_donor_request.dart';
import 'package:blood_donation/features/pages/find_donor/view/select_blood_type.dart';
import 'package:blood_donation/features/pages/home_page/view/home_page_view.dart';
import 'package:blood_donation/features/pages/landing_screens/landing_page_one.dart';
import 'package:blood_donation/features/pages/profile/view/profile_view.dart';
import 'package:blood_donation/features/pages/screens/splash/controller/splash_screen_controller.dart';
import 'package:blood_donation/features/pages/screens/splash_screen_two/controller/splash_screen_two_controller.dart';
import 'package:blood_donation/features/pages/survey_questions/view/survey_question.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreenStateController(),
    ),
    GoRoute(
      path: '/splash-two',
      builder: (context, state) => const SplashScreenTwoController(),
    ),
    GoRoute(
      path: '/landing-one',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const LandingPageOne(),
          transitionDuration: Duration(milliseconds: 1000),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final offsetAnimation =
                Tween<Offset>(
                  begin: const Offset(0, -1),
                  end: Offset.zero,
                ).animate(
                  CurvedAnimation(parent: animation, curve: Curves.easeOut),
              );
            return SlideTransition(position: offsetAnimation, child: child);
          },
        );
      },
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePageView(),
    ),
    GoRoute(
      path: '/survey_page',
      builder: (context, state) => const SurveyQuestionsPage(),
    ),
    GoRoute(
      path: '/feed_page',
      builder: (context, state) => const FeedPage(),
    ),
    GoRoute(
      path: '/blood_type',
      builder: (context, state) => const SelectBloodType(),
    ),
    GoRoute(
      path: '/find_donor',
      builder: (context, state) => const FindDonorRequest(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileView(),
    ),
  ],
);
