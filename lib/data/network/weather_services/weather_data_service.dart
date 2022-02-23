import 'dart:convert';

import 'package:redux_test_proj/data/network/weather_services/weather_service.dart';
import 'package:redux_test_proj/data/network/responses/weather/weather_response.dart';
import 'package:redux_test_proj/data/network/responses/weather/weather_response_parser.dart';

import 'package:redux_test_proj/redux/cities_screen/models/city.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/models/weather.dart';

import 'package:http/http.dart' as http;

class WeatherDataService implements WeatherService {
  @override
  Future<Weather> getWeatherForCity(http.Client client, City city) async {
    const String apiKey = 'f5e086bcebb9d02b025fe459ae0f586f';
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=${city.lat}&lon=${city.lon}&appid=$apiKey&units=metric');
    final jsonResponse = await client.get(url);
    final info = jsonDecode(jsonResponse.body);
    final response = WeatherResponse.fromJSON(info);
    return WeatherResponseParser(response).parseWeather();
  }
}
