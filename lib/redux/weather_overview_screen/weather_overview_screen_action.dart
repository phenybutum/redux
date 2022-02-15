import 'package:redux_test_proj/redux/cities_screen/models/city.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/models/weather.dart';

class WeatherOverviewScreenGetCityInfoAction {
  final City city;

  WeatherOverviewScreenGetCityInfoAction(this.city);
}

class WeatherOverviewScreenGetWeatherAction {
  final City city;

  WeatherOverviewScreenGetWeatherAction(this.city);
}

class WeatherOverviewScreenWeatherLoadedAction {
  final Weather weather;

  WeatherOverviewScreenWeatherLoadedAction(this.weather);
}