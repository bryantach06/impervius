import 'package:flutter/material.dart';

import 'main_home.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  static String id = 'my_orders';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
                  const Text('My Orders', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 20,),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 5, top: 10, bottom: 10, right: 10),
                  child: ListTile(
                    title: Text(
                      'Order #0017483',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        'Mixed Waterproof Leathers\nSize : L\nTrack your order here!'),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 5, top: 10, bottom: 10, right: 10),
                  child: ListTile(
                    title: Text(
                      'Order #0017484',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        'You checked out multiple items in this order!\nTrack them out!'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
