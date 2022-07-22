import 'package:flutter/material.dart';

class MyConstant {
  static Color primary = const Color.fromARGB(255, 233, 30, 192);

  BoxDecoration colorBox() => BoxDecoration(
        color: primary,
      );

  BoxDecoration linearGradientBox() => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[Colors.white, primary],
        ),
      );
}
