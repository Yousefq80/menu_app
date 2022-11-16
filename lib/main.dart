import 'package:flutter/material.dart';
import 'package:menu_app/models/food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

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
            child: Row(
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
          );
        },
      ),
    );
  }
}
