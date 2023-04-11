import 'package:flutter/material.dart';
import 'package:impervius/initial_pages/sign_in_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impervius/initial_pages/sign_up_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  static String id = 'get_started_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/get_started.jpg'),
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 100,
                child: Image.asset('assets/images/logo_impervius.png'),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'IMPERVIUS',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Your First Ever\nWaterproof Streetwear',
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignInPage.id);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Start Shopping',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      )),
                  GestureDetector(
                    child: Text(
                      'Sign Up Here!',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, SignUpPage.id);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
