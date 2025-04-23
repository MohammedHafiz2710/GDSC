import 'package:day_2/cubit/weather_cubit.dart';
import 'package:day_2/views/widgets/card_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherBlocBuilder extends StatelessWidget {
  const WeatherBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherInitial) {
          return Center(
            child: Text(
              'Search for a city',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          );
        } else if (state is WeatherLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is WeatherFailure) {
          return Center(
            child: Text(
              'Error try later',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
          );
        } else {
          return CardContent();
        }
      },
    );
  }
}
