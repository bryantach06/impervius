var products = [
  {
    'image': 'assets/images/blazer.jpeg',
    'title': 'Beige Waterproof Blazer',
    'description': 'Women\'s Waterproof Outerwear',
    'longdesc': 'Made from our finest silk material, making it the most comfortable blazer on the market. And it is also waterproof!',
    'price': 'Rp 449.000,-',
    // 'destination': ProductPage.id
  },
  {
    'image': 'assets/images/coat2.jpeg',
    'title': 'Brownie Waterproof Coat',
    'description': 'Women\'s Waterproof Outerwear',
    'longdesc': 'Made from our finest waterproof wool, keeping the formal look while also giving you that proud, fashionable feeling on the go.',
    'price': 'Rp 1.399.000,-',
    // 'destination': ProductPage.id
  },
  {
    'image': 'assets/images/jacket2.jpeg',
    'title': 'Navy Waterproof Jacket',
    'description': 'Men\'s Waterproof Outerwear',
    'longdesc': 'The most fashion-forward and versatile type of jacket that keeps you warm, stylish and dry on those rainy days.',
    'price': 'Rp 1.349.000,-',
    // 'destination': ProductPage.id
  },
  {
    'image': 'assets/images/leather3.jpeg',
    'title': 'Mixed Waterproof Leathers',
    'description': 'Men\'s Waterproof Outerwear',
    'longdesc': 'A combination of a hoodie and a leather jacket made from our finest materials. What more could you ask for?',
    'price': 'Rp 1.499.000,-',
    // 'destination': ProductPage.id
  },
  {
    'image': 'assets/images/leathers.jpg',
    'title': 'Bruno Waterproof Leathers',
    'description': 'Men\'s Waterproof Outerwear',
    'longdesc': 'Made from the best waterproof leather material and keeps you cool and comfy all day without having to worry about your style!',
    'price': 'Rp 1.349.000,-',
    // 'destination': ProductPage.id
  },
];

class Product {
  final String name;
  final String price;
  final String description;
  final String longDesc;
  final String image;

  Product({required this.name, required this.price, required this.description, required this.longDesc, required this.image});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['title'].toString(),
      price: json['price'].toString(),
      description: json['description'].toString(),
      longDesc: json['longdesc'].toString(),
      image: json['image'].toString(),
    );
  }
}
