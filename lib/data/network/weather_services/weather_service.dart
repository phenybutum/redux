import 'package:redux_test_proj/redux/cities_screen/models/city.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/models/weather.dart';

import 'package:http/http.dart' as http;

abstract class WeatherService {
  Future<Weather> getWeatherForCity(http.Client client, City city);
}