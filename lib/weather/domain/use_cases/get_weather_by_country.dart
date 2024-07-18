import 'package:weather/weather/domain/repositories/base_weatherRepository.dart';
import '../entities/weather_model.dart';

//4


class GetWeatherByCountryName{

  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> useCaseData(String cityName)async{
    return await repository.getWeatherByName(cityName);
  }

}