import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather/weather/data/data_sources/remote_data_sources.dart';
import 'package:weather/weather/data/repositories/weatherRepository.dart';
import 'package:weather/weather/domain/entities/weather_model.dart';
import 'package:weather/weather/domain/repositories/base_weatherRepository.dart';
import 'package:weather/weather/domain/use_cases/get_weather_by_country.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  BaseRemoteData baseRemoteData = RemoteData();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(baseRemoteData);
  Weather weather =
      await GetWeatherByCountryName(baseWeatherRepository)
          .useCaseData("egypt");
  if (kDebugMode) {
    print(weather.id);
  }
}
