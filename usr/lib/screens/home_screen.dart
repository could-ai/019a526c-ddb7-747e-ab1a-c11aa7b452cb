import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Mock data for products
  final List<Product> _products = [
    Product(
      id: '1',
      name: 'Elegant Silk Saree',
      description: 'A beautiful silk saree with intricate designs.',
      price: 150.00,
      imageUrl: 'https://via.placeholder.com/150/FFC0CB/000000?Text=Saree1',
    ),
    Product(
      id: '2',
      name: 'Designer Salwar Kameez',
      description: 'Modern and stylish salwar kameez for special occasions.',
      price: 120.50,
      imageUrl: 'https://via.placeholder.com/150/ADD8E6/000000?Text=Dress1',
    ),
    Product(
      id: '3',
      name: 'Cotton Kurti',
      description: 'Comfortable and casual cotton kurti for daily wear.',
      price: 45.00,
      imageUrl: 'https://via.placeholder.com/150/90EE90/000000?Text=Kurti1',
    ),
    Product(
      id: '4',
      name: 'Banarasi Saree',
      description: 'Traditional Banarasi saree, perfect for weddings.',
      price: 250.00,
      imageUrl: 'https://via.placeholder.com/150/FFFFE0/000000?Text=Saree2',
    ),
     Product(
      id: '5',
      name: 'Anarkali Suit',
      description: 'Graceful Anarkali suit with heavy embroidery.',
      price: 180.75,
      imageUrl: 'https://via.placeholder.com/150/F08080/000000?Text=Anarkali',
    ),
    Product(
      id: '6',
      name: 'Lehenga Choli',
      description: 'Stunning lehenga choli for festivals and parties.',
      price: 300.00,
      imageUrl: 'https://via.placeholder.com/150/DDA0DD/000000?Text=Lehenga',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saree & Cloth Store'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // TODO: Implement shopping cart
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ProductCard(product: _products[i]),
      ),
    );
  }
}
