import 'package:day_2/cubit/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
      onSubmitted: (value) {
        BlocProvider.of<WeatherCubit>(context).getWeather(cityName: value);
      },
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        contentPadding: EdgeInsets.all(20),
        fillColor: Colors.white,
        filled: true,
        hintText: "City Name",
        hintStyle: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        focusedBorder: borderBuilder(),
        border: borderBuilder(),
      ),
    );
  }

  OutlineInputBorder borderBuilder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
