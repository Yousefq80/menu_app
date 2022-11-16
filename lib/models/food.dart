import 'package:flutter/material.dart';

class Food {
  String name;
  String imgPath;

  Food({
    required this.name,
    required this.imgPath,
  });
}

List foods = [
  Food(
    name: 'Pasta',
    imgPath: 'assets/pasta.png',
  ),
  Food(
    name: 'stake',
    imgPath: 'assets/stake.png',
  ),
];
