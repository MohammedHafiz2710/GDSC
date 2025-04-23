import 'package:bloc/bloc.dart';
import 'package:day_2/model/weather_model.dart';
import 'package:day_2/service/weater_service.dart';
import 'package:meta/meta.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  WeatherModel? weatherModel;
  getWeather({required String cityName}) async {
    emit(WeatherLoading());
    try {
      weatherModel = await WeatherService().getWeather(cityName);
      emit(WeatherSuccess());
    } catch (e) {
      emit(WeatherFailure(e.toString()));
    }
  }

}
