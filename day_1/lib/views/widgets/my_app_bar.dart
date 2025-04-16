import 'package:day_1/constanst.dart';
import 'package:flutter/material.dart';

AppBar myAppbar() {
  return AppBar(
    backgroundColor: kPrimayColor,
    leading: Image.asset("assets/images/LoL-Symbol.png"),
    title: const Text(
      'League of Legends',
    ),
    centerTitle: true,
  );
}
