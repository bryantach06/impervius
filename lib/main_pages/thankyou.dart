import 'package:flutter/material.dart';
import 'package:impervius/main_pages/main_home.dart';
import 'package:google_fonts/google_fonts.dart';

class ThankyouPage extends StatelessWidget {
  const ThankyouPage({Key? key}) : super(key: key);

  static String id = 'thankyou_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Thank you for your purchase!',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Your order will be on your doorstep soon!',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, MainHome.id);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xff5390cd),
                  ),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(15)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                child: Text('Back to Home',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
