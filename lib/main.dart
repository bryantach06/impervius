import 'package:flutter/material.dart';
import 'package:impervius/initial_pages/get_started_page.dart';
import 'package:impervius/main_pages/cart.dart';
import 'package:impervius/main_pages/home_screen.dart';
import 'package:impervius/main_pages/main_home.dart';
import 'package:impervius/initial_pages/sign_in_page.dart';
import 'package:impervius/initial_pages/sign_up_page.dart';
import 'package:impervius/initial_pages/splash_screen.dart';
import 'package:impervius/main_pages/product_page.dart';

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
        SplashScreen.id: (context) => SplashScreen(),
        GetStartedPage.id: (context) => GetStartedPage(),
        HomeScreen.id: (context) => HomeScreen(),
        SignInPage.id: (context) => SignInPage(),
        SignUpPage.id: (context) => SignUpPage(),
        MainHome.id: (context) => MainHome(),
        // ProductPage.id: (context) => ProductPage(),
        CartPage.id: (context) => CartPage(),
      },
    );
  }
}
