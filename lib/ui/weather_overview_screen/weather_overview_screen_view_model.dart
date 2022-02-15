import 'package:equatable/equatable.dart';
import 'package:redux_test_proj/redux/cities_screen/models/city.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/models/weather.dart';

class WeatherOverviewScreenViewModel extends Equatable {

  final City city;
  final Weather? currentWeather;

  const WeatherOverviewScreenViewModel(this.city, this.currentWeather);

  @override
  List<Object?> get props => [city, currentWeather];

}