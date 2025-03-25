import 'package:flutter/material.dart';

String ip = '192.168.52.50';

Color getColor(String key) {
  return colors[key] ?? Colors.transparent;
}

const Map<String, Color> colors = {
  'blue': Color.fromRGBO(38, 38, 255, 1),
  'violet': Color.fromARGB(255, 207, 82, 151),
  'red': Color.fromRGBO(255, 101, 101, 1),
  'wine': Color.fromRGBO(130, 48, 56, 1),
  'gray': Color.fromRGBO(106, 106, 106, 1),
  'green': Color.fromRGBO(0, 161, 147, 1),
};
