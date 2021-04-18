import 'package:flutter/material.dart';

Color primaryColor = Color(0xFFCADCED);
//(0xFFCADCED)

List<BoxShadow> customShadow = [
  BoxShadow(
      color: Colors.orangeAccent.withOpacity(0.5),
      spreadRadius: -5,
      offset: Offset(-5, -5),
      blurRadius: 30),
  BoxShadow(
      color: Colors.orange[900].withOpacity(.2),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20),
];