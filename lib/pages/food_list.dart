import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:menu_app/models/food.dart';

class food_list extends StatelessWidget {
  food_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Menu"),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        // 2
        itemCount: foods.length,
        // 3
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: InkWell(
              onTap: () {
                GoRouter.of(context).push('/details', extra: foods[index]);
                // context.push("/details", extra: foods[index].name);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        '${foods[index].name}', // <- Here
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      '${foods[index].imgPath}', // <- Here
                      width: 125,
                      height: 125,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
