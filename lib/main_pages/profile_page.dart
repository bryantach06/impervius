import 'package:flutter/material.dart';
import 'package:impervius/main_pages/my_orders.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  final ColorFilter colorFilter = const ColorFilter.mode(Colors.white, BlendMode.modulate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40,),
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
              const SizedBox(height: 15,),
              const Center(child: Text('Regina Christina', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
              const SizedBox(height: 25,),
              const Text('Username', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              const Text('reginachristina123', style: TextStyle(fontSize: 15,),),
              const SizedBox(height: 15,),
              const Text('Registered Email Address', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              const Text('reginachristina123@zmail.com', style: TextStyle(fontSize: 15,),),
              const SizedBox(height: 15,),
              const Text('Registered Phone Number', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              const Text('+62 812 1234 5678', style: TextStyle(fontSize: 15,),),
              const SizedBox(height: 15,),
              const Text('Address 1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              const Text('Jl. Dipati Ukur No.80, Dago\nKecamatan Coblong\nKota Bandung, Jawa Barat\n40132', style: TextStyle(fontSize: 15, ),),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyOrders.id);
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
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                child: const Text(
                  'My Orders',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
