import 'package:weather/weather/domain/entities/weather_model.dart';
//5


class WeatherModel extends Weather {

  WeatherModel({
      required super.id,
      required super.cityName,
      required super.main,
      required super.description,
      required super.pressure,
      });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      id: json["id"],
      cityName: json["name"],
      main: json["weather"][0]["main"],
      description: json["weather"][0]["description"],
      pressure: json['main']["pressure"],
    );
  }


  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "cityName": cityName,
      "main": main,
      "description": description,
      "pressure": pressure,
    };
  }


}
