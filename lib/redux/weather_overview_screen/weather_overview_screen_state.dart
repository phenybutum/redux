import 'package:equatable/equatable.dart';
import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class WeatherOverviewScreenState extends Equatable {
  final City city;

  const WeatherOverviewScreenState({required this.city});

  factory WeatherOverviewScreenState.initial() {
    return WeatherOverviewScreenState(city: City(name: '', lat: 0, lon: 0));
  }

  WeatherOverviewScreenState copyWith({City? city}) {
    return WeatherOverviewScreenState(city: city ?? this.city);
  }

  @override
  List<Object?> get props => [city];
}
