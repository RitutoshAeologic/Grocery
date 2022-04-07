import 'dart:ui';

import 'package:flutter/material.dart';

import 'colors.dart';

class AppStyles {

  static TextStyle blackSmallBoldFont =  const TextStyle(
      fontFamily: "Montserrat",
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 22.0
  );

  static TextStyle blackFont = const TextStyle(
      fontFamily: "Montserrat",
      color: Colors.black,
      fontSize: 15.0
  );

  static TextStyle blackBoldFont =  const TextStyle(
    fontFamily: "Montserrat",
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle greyFont = const TextStyle(
    fontFamily: "Montserrat",
    fontSize: 25.0,
    color: Colors.grey,
  );
  static TextStyle greySmallFont = const TextStyle(
    fontFamily: "Montserrat",
    fontSize: 15.0,
    color: Colors.grey,
    fontWeight: FontWeight.bold
  );
}