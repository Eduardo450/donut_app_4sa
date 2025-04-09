import 'package:flutter/material.dart';

class Product {
  final String name;
  final String store;
  final double price;
  final String imagePath;
  final MaterialColor color;
  final String category;
  int quantity;

  Product({
    required this.name,
    required this.store,
    required this.price,
    required this.imagePath,
    required this.color,
    required this.category,
    this.quantity = 1,
  });
}