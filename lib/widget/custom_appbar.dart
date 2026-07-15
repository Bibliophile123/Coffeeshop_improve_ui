import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,

      title: Row(
        children: [
          // Back Arrow
          const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 22,
          ),

          const SizedBox(width: 10),

          // Table 13
          Container(
            height: 45,
            width: 110,
            decoration: BoxDecoration(
              color: const Color(0xffF3F3F3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text(
                "Table 13",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          const Spacer(),

          // AR Button
          Container(
            height: 45,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xff1F5C4D),
                width: 2,
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "AR",
                  style: TextStyle(
                    color: Color(0xff1F5C4D),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.language,
                  color: Color(0xff1F5C4D),
                  size: 20,
                ),
              ],
            ),
          ),

          const SizedBox(width: 15),

          // Shopping Cart
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),

              Positioned(
                top: -5,
                right: -5,
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                    color: Color(0xff1F5C4D),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(width: 15),

          // Search
          const Icon(
            Icons.search,
            color: Colors.black,
            size: 28,
          ),
        ],
      ),
    );
  }
}