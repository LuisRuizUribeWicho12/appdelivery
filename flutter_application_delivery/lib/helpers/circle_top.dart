import 'package:flutter/material.dart';
import 'package:flutter_application_delivery/src/utils/my_colors.dart';

Widget CircleTop() {
  return Container(
    width: 240,
    height: 230,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), color: MyColors.primaryColor),
  );
}

Widget TextLogin() {
  return Text(
    'Login',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 25,
    ),
  );
}
