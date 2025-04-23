import 'package:day_2/cubit/weather_cubit.dart';
import 'package:day_2/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
            scaffoldBackgroundColor: Color(0xff9ab8d2),
            appBarTheme: AppBarTheme(
              color: Color(0xff084281),
            )),
        home: HomePage(),
      ),
    );
  }
}
