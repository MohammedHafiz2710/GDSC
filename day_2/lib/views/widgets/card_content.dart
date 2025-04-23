import 'package:day_2/cubit/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "${BlocProvider.of<WeatherCubit>(context).weatherModel!.cityName} ,${BlocProvider.of<WeatherCubit>(context).weatherModel!.region}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
              "https:${BlocProvider.of<WeatherCubit>(context).weatherModel!.image}",
              height: 350,
            ),
            Text(
              "${BlocProvider.of<WeatherCubit>(context).weatherModel!.temperature}°C",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              BlocProvider.of<WeatherCubit>(context).weatherModel!.condition,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              BlocProvider.of<WeatherCubit>(context).weatherModel!.windDirection,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
