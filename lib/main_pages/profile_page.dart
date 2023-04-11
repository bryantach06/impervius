import 'package:flutter/material.dart';
import 'package:impervius/initial_pages/get_started_page.dart';
import 'package:impervius/main_pages/my_orders.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  final ColorFilter colorFilter =
      const ColorFilter.mode(Colors.white, BlendMode.modulate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: const AssetImage('assets/images/profile.png'),
                      fit: BoxFit.contain,
                      colorFilter: colorFilter,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'Regina Christina',
                  style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Username',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'reginachristina123',
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Registered Email Address',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'reginachristina123@zmail.com',
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Registered Phone Number',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '+62 812 1234 5678',
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Address 1',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Jl. Dipati Ukur No.80, Dago\nKecamatan Coblong\nKota Bandung, Jawa Barat\n40132',
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyOrders.id);
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
                    child: Text(
                      'My Orders',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, GetStartedPage.id);
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
                    child: Text(
                      'Sign Out',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
