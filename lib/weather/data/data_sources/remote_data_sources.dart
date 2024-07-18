import 'package:dio/dio.dart';
import 'package:weather/weather/data/models/weather_model.dart';
import '../../shared/const/const.dart';


//6

abstract class BaseRemoteData{
  Future<WeatherModel?> getWeatherByCountryName(String cityName);
}

class RemoteData extends BaseRemoteData{
  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName) async{
     try{
       var response=await  Dio().get(
       "${AppConstants.baseUrl}/weather?q=$cityName&appid=${AppConstants.apiKey}"
       );
       print(response);
       return WeatherModel.fromJson(response.data);
     }catch(e){
        print(e);
         return null;
     }
  }

}