import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final Map<String, String> data;

  const ProductDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Column(
        children: [
          Text(data['title'] as String),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(data['imageUrl'] as String),
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(16),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 199, 199, 191),
            ),
            child: Column(
              children: [
                const Text('Price'),
                Text(
                  '₹ ${data['price']}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
/*
class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/
