import 'package:flutter/material.dart';

import 'widget/custom_appbar.dart';
import 'widget/category_card.dart';
import 'widget/product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Custom AppBar
      appBar: const CustomAppBar(),

      // Floating Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff1F5C4D),
        onPressed: () {},
        child: const Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Category Cards
            const CategorySection(),

            const SizedBox(height: 20),

            // Hot Today Banner
            Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                 Icon(Icons.sunny, color: Color.fromARGB(255, 215, 228, 23), size: 30),
                    SizedBox(width: 10),
                    Text(
                      "Hot Today? Try Iced Matcha!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Heading
            const Text(
              "Coffee",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Product Cards
            const ProductSection(),
          ],
        ),
      ),
    );
  }
}