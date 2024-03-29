import 'package:flutter/material.dart';

import 'cart.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Inbox', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, CartPage.id);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 5, top: 10, bottom: 10, right: 10),
                  child: ListTile(
                    title: Text(
                      'New Discount Alert!',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        'You\'re missing out!\nOpen this message to check our latest offers!'),
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
                      'New Collections Dropping!',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        'We are dropping new collections this season!\nOpen this message to check it out!'),
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
                      'Checkout Successful!',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        'Thank you for your purchase.\nYour order will be on your doorstep in no time!'),
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
