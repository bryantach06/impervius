import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'get_started_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String id = 'splash_screen';

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/loading.json'),
      nextScreen: const GetStartedPage(),
      splashIconSize: 250,
      backgroundColor: Colors.white,
      duration: 3000,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(milliseconds: 1000),
    );
  }
}
