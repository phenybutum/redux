import 'package:redux_test_proj/redux/weather_overview_screen/models/weather.dart';

class City {
  final String name;
  final double lat;
  final double lon;
  final Weather? currentWeather;

  City({required this.name, required this.lat, required this.lon, this.currentWeather});
}