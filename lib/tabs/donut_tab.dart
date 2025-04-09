import 'package:donut_app_4sa/pages/utils/donut_tile.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_4sa/pages/utils/product.dart';

class DonutTab extends StatelessWidget {
  final List<Product> donutsOnSale = [
    Product(
      name: "Clasic",
      store: "Krispy Kreme",
      price: 36.0,
      color: Colors.blue,
      imagePath: "lib/images/donut/clasic.png",
      category: "Donut",
    ),
    Product(
      name: "Double Choco",
      store: "Tere Cazola",
      price: 45.0,
      color: Colors.red,
      imagePath: "lib/images/donut/chocodouble.png",
      category: "Donut",
    ),
    Product(
      name: "Choco Chips",
      store: "Panaderia San Gerardo",
      price: 84.0,
      color: Colors.purple,
      imagePath: "lib/images/donut/chocoandchips.png",
      category: "Donut",
    ),
    Product(
      name: "Nutella",
      store: "Donitas Morayta",
      price: 95.0,
      color: Colors.brown,
      imagePath: "lib/images/donut/nutella.png",
      category: "Donut",
    ),
    Product(
      name: "Strawberry",
      store: "El Postrecito",
      price: 34.0,
      color: Colors.blue,
      imagePath: "lib/images/donut/strawberry.png",
      category: "Donut",
    ),
    Product(
      name: "Blue Explosion",
      store: "Donas Mimí",
      price: 42.0,
      color: Colors.red,
      imagePath: "lib/images/donut/blue.png",
      category: "Donut",
    ),
    Product(
      name: "Spring",
      store: "Postres MID",
      price: 49.0,
      color: Colors.purple,
      imagePath: "lib/images/donut/primavera.png",
      category: "Donut",
    ),
    Product(
      name: "White Choco",
      store: "Las Donitas",
      price: 64.0,
      color: Colors.brown,
      imagePath: "lib/images/donut/whitechoco.png",
      category: "Donut",
    ),
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          product: donutsOnSale[index],
        );
      },
    );
  }
}