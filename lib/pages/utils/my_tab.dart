import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String categoryName;

  const MyTab({
    super.key,
    required this.iconPath,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
          const SizedBox(height: 4),
          Text(
            categoryName,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}