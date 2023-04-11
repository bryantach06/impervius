import 'package:flutter/material.dart';
import 'package:impervius/main_pages/cart.dart';
import 'package:impervius/main_pages/main_home.dart';
import 'package:impervius/product_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'customize.dart';

class ProductPage extends StatefulWidget {
  final Product product;

  const ProductPage({Key? key, required this.product}) : super(key: key);

  static String id = 'product_page';

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // final Product product;

  int initialAmount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Row(
                      children: [
                        GestureDetector(
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: const Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
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
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.product.image),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  widget.product.name,
                  style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.product.price,
                  style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                    widget.product.longDesc,
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontSize: 15,
                      ),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              initialAmount--;
                            });
                          },
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[300],
                            child: const Icon(
                              Icons.remove,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(initialAmount.toString(),
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(fontSize: 20),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              initialAmount++;
                            });
                          },
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[300],
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, CustomPage.id);
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
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: Text(
                        'Customize',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Select Size',
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          'XS',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          'S',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          'M',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          'L',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          'XL',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          '2XL',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          '3XL',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          '4XL',
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 15,
                // ),
                // Text(
                //   widget.product.name,
                //   style: GoogleFonts.raleway(
                //     textStyle: const TextStyle(
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   )
                // ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartPage(),
                          ),
                        );
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
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, CartPage.id);
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
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: Text(
                        'Buy Now',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
