import 'package:weather_app/models/current_weather_model.dart';
import 'package:weather_app/models/hourly_weather_model.dart';

import '../consts/strings.dart';
import 'package:http/http.dart'  as http;

getCurrentWeather(lat, long) async {
  var link ="https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=$apiKey&units=metric";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = currentWeatherDataFromJson(res.body.toString());
    print("Current data is recevied");
    return data;
  }
}

getHourlyWeather(lat, long) async {
  var link ="https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$long&appid=$apiKey&units=metric";
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = hourlyWeatherDataFromJson(res.body.toString());
    print("Hourly data is recevied");

    return data;
  }
}
