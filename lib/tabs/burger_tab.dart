import 'package:donut_app_4sa/pages/utils/donut_tile.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_4sa/pages/utils/product.dart';

class BurgerTab extends StatelessWidget {
  final List<Product> burgersOnSale = [
    Product(
      name: "Cheese Burger",
      store: "Texas Roadhouse",
      price: 67.0,
      color: Colors.blue,
      imagePath: "lib/images/Burger/mini.png",
      category: "Burger",
    ),
    Product(
      name: "Double Burger",
      store: "Flamante Burger",
      price: 85.0,
      color: Colors.red,
      imagePath: "lib/images/Burger/Double_burger.png",
      category: "Burger",
    ),
    Product(
      name: "Chilli Burger",
      store: "Las Burgers",
      price: 52.0,
      color: Colors.purple,
      imagePath: "lib/images/Burger/rodeo.png",
      category: "Burger",
    ),
    Product(
      name: "Super Burger",
      store: "Navarrete Burgers",
      price: 93.0,
      color: Colors.brown,
      imagePath: "lib/images/Burger/Triple_Burger.png",
      category: "Burger",
    ),
    Product(
      name: "Whooper",
      store: "Burger King",
      price: 50.0,
      color: Colors.green,
      imagePath: "lib/images/Burger/Whopper.png",
      category: "Burger",
    ),
    Product(
      name: "Big Mac",
      store: "McDonald's",
      price: 78.0,
      color: Colors.pink,
      imagePath: "lib/images/Burger/bigmac.png",
      category: "Burger",
    ),
    Product(
      name: "Chicken",
      store: "Carl's Junior",
      price: 43.0,
      color: Colors.yellow,
      imagePath: "lib/images/Burger/Chicken_Burger.png",
      category: "Burger",
    ),
    Product(
      name: "Western Bacon",
      store: "Burger Doña Carmen",
      price: 64.0,
      color: Colors.orange,
      imagePath: "lib/images/Burger/Western_Bacon.png",
      category: "Burger",
    ),
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: burgersOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          product: burgersOnSale[index],
        );
      },
    );
  }
}