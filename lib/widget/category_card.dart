import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15,
      runSpacing: 15,
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
      width: 150,
      height: 180,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(25),
        border: backgroundColor == Colors.white
            ? Border.all(color: Colors.grey.shade300)
            : null,
      ),
      child: Column(
        children: [
          const SizedBox(height: 18),

          Container(
            width: 120,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                icon,
                size: 65,
                color: Colors.black,
              ),
            ),
          ),

          const Spacer(),

          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height:10),
        ],
      ),
    );
  }
}