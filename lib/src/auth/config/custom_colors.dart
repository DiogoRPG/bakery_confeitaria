import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(73, 26, 182, .1),
  100: const Color.fromRGBO(73, 26, 182, .2),
  200: const Color.fromRGBO(73, 26, 182, .3),
  300: const Color.fromRGBO(73, 26, 182, .4),
  400: const Color.fromRGBO(73, 26, 182, .5),
  500: const Color.fromRGBO(73, 26, 182, .6),
  600: const Color.fromRGBO(73, 26, 182, .7),
  700: const Color.fromRGBO(73, 26, 182, .8),
  800: const Color.fromRGBO(73, 26, 182, .9),
  900: const Color.fromRGBO(73, 26, 182, 1),
};

abstract class CustomColors {
  static Color customContrastColor = Colors.red.shade700;

  static MaterialColor customSwatchColor = MaterialColor(
    0xFF4A1AB6,
    _swatchOpacity,
  );
}
