import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class WeatherOverviewScreenGetWeatherAction {
  final City city;

  WeatherOverviewScreenGetWeatherAction(this.city);
}

class WeatherOverviewScreenWeatherLoadedAction {
  final City city;

  WeatherOverviewScreenWeatherLoadedAction(this. city);
}