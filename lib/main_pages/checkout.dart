import 'package:flutter/material.dart';
import 'package:impervius/main_pages/cart.dart';
import 'package:impervius/main_pages/loading_screen.dart';
import 'package:google_fonts/google_fonts.dart';

enum PaymentMethod { cod, credit1, credit2 }

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  static String id = 'checkout_page';

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

PaymentMethod? _paymentMethod = PaymentMethod.cod;
var isLoading = false;

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, CartPage.id);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              ),
                              Text('Back to Cart'),
                            ],
                          ),
                        ),
                        Text(
                          'Checkout',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Shipment Details',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 10, bottom: 10, right: 10),
                        child: ListTile(
                          title: Text('Address 1',
                              style: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                          subtitle: Text(
                            'Name : Regina Christina\nPhone Number : 081234567891\nAddress : Jl. Dipati Ukur No.80, Dago\nKecamatan Coblong\nKota Bandung, Jawa Barat\n40132',
                            style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Payment Details',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Pick Your Payment Method',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 10, bottom: 10, right: 10),
                        child: ListTile(
                          title: Text(
                            'Cash on Delivery',
                            style: GoogleFonts.raleway(),
                          ),
                          leading: Radio<PaymentMethod>(
                            value: PaymentMethod.cod,
                            groupValue: _paymentMethod,
                            onChanged: (PaymentMethod? value) {
                              setState(() {
                                _paymentMethod = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 10, bottom: 10, right: 10),
                        child: ListTile(
                          title: Text(
                            'Credit Card 1',
                            style: GoogleFonts.raleway(),
                          ),
                          subtitle: Text(
                            '0000-0000-0001',
                            style: GoogleFonts.quicksand(),
                          ),
                          leading: Radio<PaymentMethod>(
                            value: PaymentMethod.credit1,
                            groupValue: _paymentMethod,
                            onChanged: (PaymentMethod? value) {
                              setState(() {
                                _paymentMethod = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, top: 10, bottom: 10, right: 10),
                        child: ListTile(
                          title: Text(
                            'Bank Transfer',
                            style: GoogleFonts.raleway(),
                          ),
                          // subtitle: Text(
                          //   '0000-0000-0002',
                          //   style: GoogleFonts.quicksand(),
                          // ),
                          leading: Radio<PaymentMethod>(
                            value: PaymentMethod.credit2,
                            groupValue: _paymentMethod,
                            onChanged: (PaymentMethod? value) {
                              setState(() {
                                _paymentMethod = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
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
                              textStyle: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Text(
                            'Rp 3.347.000,-',
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping fees :',
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Text(
                            'Rp 50.000,-',
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Payment :',
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Text(
                            'Rp 3.397.000,-',
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoadingScreen.id);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xff5390cd),
                          ),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.all(15)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Make Payment',
                              style: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
