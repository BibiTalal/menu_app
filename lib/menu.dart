import 'package:flutter/material.dart';
import 'package:flutter_application_menu/models/food.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 6,
              blurRadius: 9,
              offset: Offset(0, 3),
            )
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(food.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Image.asset(
              food.imgPath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ))),
      ]),
    );
  }
}
