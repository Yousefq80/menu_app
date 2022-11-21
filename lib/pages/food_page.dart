import 'package:flutter/material.dart';
import 'package:menu_app/models/food.dart';

class food_page extends StatelessWidget {
  final Food food;

  const food_page({required this.food, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(food.name)),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            food.imgPath,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
