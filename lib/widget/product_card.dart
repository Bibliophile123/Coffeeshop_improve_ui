import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 15,
      runSpacing: 20,
      children: [

        ProductCard(
          image: "assets/coffee.jpg",
          title: "Pumpkin Spice Latte",
          description: "Creamy Espresso Blended\nWith Silky Steamed Milk.",
          price: "AED 20.00",
        ),
        SizedBox(width: 8),
        ProductCard(
          image: "assets/croissant.jpg",
          title: "Butter Croissant",
          description: "Freshly baked buttery\nFrench croissant.",
          price: "AED 18.00",
        ),
        SizedBox(width: 8),
        ProductCard(
          image: "assets/matcha_latte.jpg",
          title: "Matcha Latte",
          description: "Premium Matcha With\nFresh Milk.",
          price: "AED 22.00",
        ),
        SizedBox(width: 8),
        ProductCard(
          image: "assets/iced_coffee.jpg",
          title: "Iced Coffee",
          description: "Cold Brew Coffee\nServed Over Ice.",
          price: "AED 16.00",
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          Container(
            width: 165,
            height: 170,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Image.asset(
                image,
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Product Name
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          // Description
          Text(
            description,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade600,
            ),
          ),

          const SizedBox(height: 10),

          // Price & Add Button
          Row(
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(width: 10),

              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xff1F5C4D),
                    width: 2,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Color(0xff1F5C4D),
                  size: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}