import 'dart:developer';

import 'package:day_2/model/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherService {
  WeatherService();
  final String apiKey = "Ur Api";
  Future<WeatherModel> getWeather(String city) async {
    try {
      final response = await Dio().get("http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$city&aqi=no");
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } catch (e) {
      log(e.toString());
      throw Exception('oops! something went wrong');
    }
  }
}
