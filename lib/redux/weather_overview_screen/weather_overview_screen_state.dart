import 'package:equatable/equatable.dart';
import 'package:redux_test_proj/redux/cities_screen/models/city.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/models/weather.dart';

class WeatherOverviewScreenState extends Equatable {
  final City city;
  final Weather weather;

  const WeatherOverviewScreenState({required this.city, required this.weather});

  factory WeatherOverviewScreenState.initial() {
    return const WeatherOverviewScreenState(
      city: City(name: '', lat: 0, lon: 0),
      weather:
          Weather(feelsLikeTemp: 0, temp: 0, windSpeed: 0, description: ''),
    );
  }

  WeatherOverviewScreenState copyWith({City? city, Weather? weather}) {
    return WeatherOverviewScreenState(
      city: city ?? this.city,
      weather: weather ?? this.weather,
    );
  }

  @override
  List<Object?> get props => [city, weather];
}
