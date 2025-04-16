import 'package:day_1/constanst.dart';
import 'package:day_1/views/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const LeagueOfLegendsApp());
}

class LeagueOfLegendsApp extends StatelessWidget {
  const LeagueOfLegendsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'League of Legends',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimayColor,
      ),
      home: SplashPage(),
    );
  }
}
