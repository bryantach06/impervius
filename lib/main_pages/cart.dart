import 'package:flutter/material.dart';
import 'package:impervius/main_pages/checkout.dart';
import 'package:impervius/main_pages/main_home.dart';

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
      backgroundColor: Colors.grey[200],
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
                      const Text('My Cart', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(height: 20,),
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
                        title: const Text('Mixed Waterproof Leathers'),
                        subtitle: const Text('Size : XL\nRp 1.499.000,-'),
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
                        title: const Text('Beige Waterproof Blazer'),
                        subtitle: const Text('Size : S\nRp 449.000,-'),
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
                        title: const Text('Brownie Waterproof Coat'),
                        subtitle: const Text('Size : M\nRp 1.399.000,-'),
                      ),
                    ),
                  ),
                  // Card(
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10),
                  //     child: ListTile(
                  //       leading: Container(
                  //         height: 80,
                  //         width: 50,
                  //         decoration: const BoxDecoration(
                  //           image: DecorationImage(
                  //             image: AssetImage('assets/images/leather3.jpeg'),
                  //           ),
                  //         ),
                  //       ),
                  //       title: const Text('Mixed Waterproof Leathers'),
                  //       subtitle: const Text('Size : XL\nRp 1.499.000,-'),
                  //     ),
                  //   ),
                  // ),
                  // Card(
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10),
                  //     child: ListTile(
                  //       leading: Container(
                  //         height: 80,
                  //         width: 50,
                  //         decoration: const BoxDecoration(
                  //           image: DecorationImage(
                  //             image: AssetImage('assets/images/leather3.jpeg'),
                  //           ),
                  //         ),
                  //       ),
                  //       title: const Text('Mixed Waterproof Leathers'),
                  //       subtitle: const Text('Size : XL\nRp 1.499.000,-'),
                  //     ),
                  //   ),
                  // ),
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
                          Text('Sub-total :', style: TextStyle(fontSize: 20),),
                          Text('Rp 3.347.000,-', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                      const SizedBox(height: 25,),
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
                              'Checkout',
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white,)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
