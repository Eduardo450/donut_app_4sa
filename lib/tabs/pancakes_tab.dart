import 'package:donut_app_4sa/pages/utils/donut_tile.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_4sa/pages/utils/product.dart';

class PancakesTab extends StatelessWidget {
  final List<Product> pancakesOnSale = [
    Product(
      name: "Simple Pancakes",
      store: "IHOP",
      price: 56.0,
      color: Colors.blue,
      imagePath: "lib/images/Pancakes/simple.png",
      category: "Pancake",
    ),
    Product(
      name: "With Eggs",
      store: 'Los "Joqueis"',
      price: 64.0,
      color: Colors.red,
      imagePath: "lib/images/Pancakes/eggs.png",
      category: "Pancake",
    ),
    Product(
      name: "Frutal",
      store: "Desayunito",
      price: 72.0,
      color: Colors.purple,
      imagePath: "lib/images/Pancakes/fruits.png",
      category: "Pancake",
    ),
    Product(
      name: "With Icecream",
      store: "The Pancake Realm",
      price: 59.0,
      color: Colors.brown,
      imagePath: "lib/images/Pancakes/icecream.png",
      category: "Pancake",
    ),
    Product(
      name: "With Sausage",
      store: "Pancake Land",
      price: 68.0,
      color: Colors.green,
      imagePath: "lib/images/Pancakes/sausage.png",
      category: "Pancake",
    ),
    Product(
      name: "With Strawberries",
      store: "Bills",
      price: 75.0,
      color: Colors.pink,
      imagePath: "lib/images/Pancakes/strawberry.png",
      category: "Pancake",
    ),
    Product(
      name: "With Yogurth",
      store: "The Pancake Club",
      price: 53.0,
      color: Colors.yellow,
      imagePath: "lib/images/Pancakes/yogurth.png",
      category: "Pancake",
    ),
    Product(
      name: "With Butter",
      store: "The Pancake Bakery",
      price: 77.0,
      color: Colors.orange,
      imagePath: "lib/images/Pancakes/butter.png",
      category: "Pancake",
    ),
  ];

  PancakesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          product: pancakesOnSale[index],
        );
      },
    );
  }
}