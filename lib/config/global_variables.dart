import 'package:flutter/material.dart';

String ip = '34.203.104.87';

Color getColor(String key) {
  return colors[key] ?? Colors.transparent;
}

const Map<String, Color> colors = {
  'blue': Color.fromRGBO(32, 41, 154, 1),
  'violet': Color.fromARGB(255, 207, 82, 151),
  'red': Color.fromRGBO(255, 101, 101, 1),
  'wine': Color.fromRGBO(130, 48, 56, 1),
  'gray': Color.fromRGBO(242, 242, 242, 1),
};
