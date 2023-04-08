import 'package:flutter/material.dart';
import 'package:impervius/initial_pages/get_started_page.dart';
import 'package:impervius/main_pages/cart.dart';
import 'package:impervius/main_pages/checkout.dart';
import 'package:impervius/main_pages/home_screen.dart';
import 'package:impervius/main_pages/main_home.dart';
import 'package:impervius/initial_pages/sign_in_page.dart';
import 'package:impervius/initial_pages/sign_up_page.dart';
import 'package:impervius/initial_pages/splash_screen.dart';
import 'package:impervius/main_pages/thankyou.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        GetStartedPage.id: (context) => const GetStartedPage(),
        HomeScreen.id: (context) => const HomeScreen(),
        SignInPage.id: (context) => const SignInPage(),
        SignUpPage.id: (context) => const SignUpPage(),
        MainHome.id: (context) => const MainHome(),
        CartPage.id: (context) => const CartPage(),
        CheckoutPage.id: (context) => const CheckoutPage(),
        ThankyouPage.id: (context) => const ThankyouPage(),
      },
    );
  }
}
