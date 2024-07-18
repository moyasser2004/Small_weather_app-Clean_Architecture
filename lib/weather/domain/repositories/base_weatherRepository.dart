import '../entities/weather_model.dart';

//3

//abstraction contraction

//solid principal

abstract class BaseWeatherRepository{
  Future<Weather> getWeatherByName(String cityName);
}