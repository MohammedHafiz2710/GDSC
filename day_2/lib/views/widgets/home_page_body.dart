import 'package:day_2/views/widgets/weather_bloc_builder.dart';
import 'package:day_2/views/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSearchField(),
              const SizedBox(
                height: 20,
              ),
              WeatherBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
