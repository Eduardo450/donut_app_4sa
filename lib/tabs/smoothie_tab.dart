import 'package:donut_app_4sa/pages/utils/donut_tile.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_4sa/pages/utils/product.dart';

class SmoothieTab extends StatelessWidget {
  final List<Product> smoothieOnSale = [
    Product(
      name: "Banana",
      store: "Jamba Juice",
      price: 52.0,
      color: Colors.blue,
      imagePath: "lib/images/Smoothie/banana.png",
      category: "Smoothie",
    ),
    Product(
      name: "Blueberry",
      store: "Smoothie King",
      price: 58.0,
      color: Colors.red,
      imagePath: "lib/images/Smoothie/blueberry.png",
      category: "Smoothie",
    ),
    Product(
      name: "Grape",
      store: "Boost Juice",
      price: 61.0,
      color: Colors.purple,
      imagePath: "lib/images/Smoothie/grape.png",
      category: "Smoothie",
    ),
    Product(
      name: "Strawberry",
      store: "Tropical Smoothie Café",
      price: 67.0,
      color: Colors.brown,
      imagePath: "lib/images/Smoothie/strawberry.png",
      category: "Smoothie",
    ),
    Product(
      name: "Mango",
      store: "Robeks Juice",
      price: 74.0,
      color: Colors.green,
      imagePath: "lib/images/Smoothie/mango.png",
      category: "Smoothie",
    ),
    Product(
      name: "Orange",
      store: "Everbowl",
      price: 85.0,
      color: Colors.pink,
      imagePath: "lib/images/Smoothie/orange.png",
      category: "Smoothie",
    ),
    Product(
      name: "Watermelon",
      store: "Frutology",
      price: 93.0,
      color: Colors.yellow,
      imagePath: "lib/images/Smoothie/watermelon.png",
      category: "Smoothie",
    ),
    Product(
      name: "Kiwi",
      store: "Joe & The Juice",
      price: 99.0,
      color: Colors.orange,
      imagePath: "lib/images/Smoothie/kiwi.png",
      category: "Smoothie",
    ),
  ];

  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: smoothieOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          product: smoothieOnSale[index],
        );
      },
    );
  }
}