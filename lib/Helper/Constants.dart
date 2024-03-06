import 'package:flutter/material.dart';

Color red = Colors.red;
Color appBarColor = Colors.deepPurpleAccent;
List color = [
  Colors.orange,
  Colors.yellow,
  Colors.blue,
  Colors.green,
  Colors.purple, ];


var textStyle1 = const TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w600
);

var circle = Container(
  height: 100,
  width: 100,
  decoration: const BoxDecoration(
    color: Colors.black,
    shape: BoxShape.circle
  ),
);

class Constants{
  double buttonHeight = 25;
  double buttonWidth = 100;
}