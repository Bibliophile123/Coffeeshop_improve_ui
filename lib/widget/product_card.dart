import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 10,
      runSpacing: 15,
      children: [
        ProductCard(
          image: "assets/coffee.jpg",
          title: "Pumpkin Spice Latte",
          description: "Creamy Espresso\nWith Milk",
          price: "AED 20.00",
        ),
        ProductCard(
          image: "assets/croissant.jpg",
          title: "Butter Croissant",
          description: "Freshly Baked\nCroissant",
          price: "AED 18.00",
        ),
        ProductCard(
          image: "assets/matcha_latte.jpg",
          title: "Matcha Latte",
          description: "Premium Matcha\nFresh Milk",
          price: "AED 22.00",
        ),
        ProductCard(
          image: "assets/iced_coffee.jpg",
          title: "Iced Coffee",
          description: "Cold Brew\nOver Ice",
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
    return SizedBox(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: Image.asset(
                image,
                width: 80,
                height: 80,
                fit: BoxFit.contain,
              ),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 3),

          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 11,
            ),
          ),

          const SizedBox(height: 6),

          Row(
            children: [
              Expanded(
                child: Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
            const SizedBox(width: 10),
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff1F5C4D),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                
                child: const Icon(
                  Icons.add,
                  size: 16,
                  color: Color(0xff1F5C4D),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}