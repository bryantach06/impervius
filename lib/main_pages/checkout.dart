import 'package:flutter/material.dart';
import 'package:impervius/main_pages/cart.dart';
import 'package:impervius/main_pages/thankyou.dart';

enum PaymentMethod { cod, credit }

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  static String id = 'checkout_page';

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

PaymentMethod? _paymentMethod = PaymentMethod.cod;

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      const Text(
                        'Checkout',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Shipment Details',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    // textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.only(left: 5, top: 10, bottom: 10, right: 10),
                      child: ListTile(
                        title: Text(
                          'Address 1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            'Name : Regina Christina\nPhone Number : 081234567891\nAddress : Jl. Dipati Ukur No.80, Dago\nKecamatan Coblong\nKota Bandung, Jawa Barat\n40132'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Payment Details',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    // textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Pick Your Payment Method',
                    style: TextStyle(fontSize: 15),
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
                        title: const Text('Cash on Delivery'),
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
                        title: const Text('Credit Card'),
                        leading: Radio<PaymentMethod>(
                          value: PaymentMethod.credit,
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
            const Spacer(),
            Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Sub-total :', style: TextStyle(fontSize: 15),),
                          Text('Rp 3.347.000,-', style: TextStyle(fontSize: 15),),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Shipping fees :', style: TextStyle(fontSize: 15),),
                          Text('Rp 50.000,-', style: TextStyle(fontSize: 15),),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Total Payment :', style: TextStyle(fontSize: 15),),
                          Text('Rp 3.397.000,-', style: TextStyle(fontSize: 15),),
                        ],
                      ),
                      const SizedBox(height: 30,),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ThankyouPage.id);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xff5390cd),
                          ),
                          padding:
                          const MaterialStatePropertyAll(EdgeInsets.all(15)),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Make Payment',
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white,)
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
    );
  }
}
