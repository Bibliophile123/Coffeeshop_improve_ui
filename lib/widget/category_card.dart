import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: const [
        CategoryCard(
          title: "Coffee",
          icon: Icons.coffee_outlined,
          backgroundColor: Color(0xff1F5C4D),
          textColor: Colors.white,
        ),
        CategoryCard(
          title: "Iced",
          icon: Icons.local_drink_outlined,
          backgroundColor: Colors.white,
          textColor: Colors.black,
        ),
        CategoryCard(
          title: "Matcha",
          icon: Icons.emoji_food_beverage_outlined,
          backgroundColor: Colors.white,
          textColor: Colors.black,
        ),
        CategoryCard(
          title: "Snacks",
          icon: Icons.bakery_dining_outlined,
          backgroundColor: Colors.white,
          textColor: Colors.black,
        ),
        CategoryCard(
          title: "Seasonal",
          icon: Icons.local_florist_outlined,
          backgroundColor: Colors.white,
          textColor: Colors.black,
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;
  final Color textColor;

  const CategoryCard({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 130,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: backgroundColor == Colors.white
            ? Border.all(color: Colors.grey.shade300)
            : null,
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),

          Container(
            width: 80,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                icon,
                size: 38,
                color: Colors.black,
              ),
            ),
          ),

          const Spacer(),

          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 12),
        ],
      ),
    );
  }
}