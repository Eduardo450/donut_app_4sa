import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1: cómo se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2), //Número de columnas
      //Cuantos elementos
      itemCount: 4,
      padding: const EdgeInsets.all(12),
      //Como se construirán
      itemBuilder: (context, index) {
        return;
        }
      );
  }
}