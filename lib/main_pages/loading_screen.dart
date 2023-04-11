import 'package:flutter/material.dart';
import 'package:impervius/main_pages/thankyou.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  static String id = 'loading_screen';

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/pay.json'),
      nextScreen: const ThankyouPage(),
      splashIconSize: 250,
      backgroundColor: Colors.white,
      duration: 945,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: const Duration(milliseconds: 1000),
    );
  }
}
