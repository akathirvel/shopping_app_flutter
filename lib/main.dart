import 'package:flutter/material.dart';
import 'package:shoppingapp/components/product_details.dart';

import 'package:shoppingapp/screen/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(245, 248, 244, 1),
          brightness: Brightness.light,
          primary: const Color.fromARGB(255, 190, 248, 14),
          secondary: const Color.fromARGB(255, 201, 173, 173),
          surface: Colors.white,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          labelMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          labelSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
              fontSize: 16),
        ),
      ),
      home: const ProductDetails(
        data: <String, String>{
          'title': 'Sneakers',
          'price': '\$99.99',
          'imageUrl': 'images/shoes_4.png',
        },
      ),
    );
  }
}
