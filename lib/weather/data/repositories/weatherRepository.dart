import 'package:weather/weather/domain/entities/weather_model.dart';
import '../../domain/repositories/base_weatherRepository.dart';
import '../data_sources/remote_data_sources.dart';


//7

class WeatherRepository implements BaseWeatherRepository{

   final BaseRemoteData baseRemoteData;

  WeatherRepository(this.baseRemoteData);

  @override
  Future<Weather> getWeatherByName(String cityName) async{
    return (await baseRemoteData.getWeatherByCountryName(cityName))!;
  }

  }