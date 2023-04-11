import 'package:flutter/material.dart';
import 'package:impervius/main_pages/checkout.dart';
import 'package:impervius/main_pages/main_home.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  static String id = 'cart_page';

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, MainHome.id);
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                          ),
                          const Text('Home'),
                        ],
                      ),
                      Text('My Cart',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Container(
                          height: 80,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/leather3.jpeg'),
                            ),
                          ),
                        ),
                        title: Text(
                          'Mixed Waterproof Leathers',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Text(
                          'Size : XL\nRp 1.499.000,-',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Container(
                          height: 80,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/blazer.jpeg'),
                            ),
                          ),
                        ),
                        title: Text(
                          'Beige Waterproof Blazer',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Text(
                          'Size : S\nRp 449.000,-',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Container(
                          height: 80,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/coat2.jpeg'),
                            ),
                          ),
                        ),
                        title: Text(
                          'Brownie Waterproof Coat',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Text(
                          'Size : M\nRp 1.399.000,-',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Divider(
              thickness: 1,
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub-total :',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                      ),
                      Text(
                        'Rp 3.347.000,-',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CheckoutPage.id);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xff5390cd),
                      ),
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.all(15)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Checkout',
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            )),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
