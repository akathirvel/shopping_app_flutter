import 'package:flutter/material.dart';
import 'package:shoppingapp/components/product_card.dart';
import 'package:shoppingapp/data/data_products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final OutlineInputBorder border = const OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 98, 74, 195), width: 4),
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  );

  final List<String> filter = const [
    'All',
    'Nike',
    'Adidas',
    'Puma',
    'Reebok',
    'Vans',
  ];

  late String filterSelected;

  @override
  void initState() {
    super.initState();
    filterSelected = filter[0];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Shoes\nCollection',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      //filled: true,
                      // fillColor: Colors.grey,
                      prefixIcon: const Icon(Icons.search),
                      border: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: filter.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final filterValue = filter[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        filterSelected = filterValue;
                        setState(() {});
                      },
                      child: Chip(
                        backgroundColor: filterSelected == filterValue
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).scaffoldBackgroundColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                        ),
                        label: Text(filterValue),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelStyle: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      title: products[index]['title'] as String,
                      imageUrl: products[index]['imageUrl'] as String,
                      price: products[index]['price'] as double,
                      bgColor: index % 2 == 0 ? Colors.grey : Colors.blueGrey,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
