import 'package:flutter/material.dart';
import 'package:impervius/main_pages/product_page.dart';
import '../product_model.dart';
import 'cart.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  int? selectedProductIndex;

  bool _isSelected = false;

  final List<Map<String, dynamic>> productsMap = [
    {
      'image': 'assets/images/blazer.jpeg',
      'title': 'Beige Waterproof Blazer',
      'description': 'Women\'s Waterproof Outerwear',
      'longdesc': 'Made from our finest silk material, making it the most comfortable blazer on the market. And it is also waterproof!',
      'price': 'Rp 449.000,-',
      'destination': ProductPage.id
    },
    {
      'image': 'assets/images/jacket2.jpeg',
      'title': 'Navy Waterproof Jacket',
      'description': 'Men\'s Waterproof Outerwear',
      'longdesc': 'The most fashion-forward and versatile type of jacket that keeps you warm, stylish and dry on those rainy days.',
      'price': 'Rp 1.349.000,-',
      'destination': ProductPage.id
    },
    {
      'image': 'assets/images/leather3.jpeg',
      'title': 'Mixed Waterproof Leathers',
      'description': 'Men\'s Waterproof Outerwear',
      'longdesc': 'A combination of a hoodie and a leather jacket made from our finest materials. What more could you ask for?',
      'price': 'Rp 1.499.000,-',
      'destination': ProductPage.id
    },
  ];

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
                  const Text('My Wishlist', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
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
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemCount: productsMap.length,
                itemBuilder: (BuildContext context, index) {
                  return SizedBox(
                    height: 500,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductPage(
                              product: Product.fromJson(
                                productsMap.elementAt(index),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(vertical: 7.5, horizontal: 7.5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 100,
                                  // padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                    '${productsMap.elementAt(index)['image']}',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '${productsMap.elementAt(index)['title']}',
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '${productsMap.elementAt(index)['description']}',
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 10,
                                    color: Colors.black54,
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${productsMap.elementAt(index)['price']}',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        fontFamily: 'Quicksand',
                                        // fontSize: 15,
                                      ),
                                    ),
                                    GestureDetector(
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.grey[300],
                                        child: Icon(
                                          _isSelected
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: _isSelected ? Colors.red : Colors.black,
                                          size: 17,
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          _isSelected = !_isSelected;
                                          selectedProductIndex == index;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
