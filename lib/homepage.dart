import 'package:flutter/material.dart';
import 'package:flutter_application_menu/menu.dart';
import 'package:flutter_application_menu/models/food.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var foods = [
    Food(name: 'Pasta', imgPath: 'assets/images/pasta.jpg'),
    Food(name: 'Burger', imgPath: 'assets/images/burger.jpg'),
    Food(name: 'Sushi', imgPath: 'assets/images/sushi.jpg'),
    Food(name: 'Pizza', imgPath: 'assets/images/pizza.jpg'),
    Food(name: 'Biryani', imgPath: 'assets/images/biryani.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Menu',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return Menu(food: foods[index]);
        },
      ),
    );
  }
}
