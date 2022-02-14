import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:redux_test_proj/redux/cities_screen/cities_screen_state.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/weather_overview_screen_state.dart';

@immutable
class AppState extends Equatable {
  final CitiesScreenState citiesScreenState;
  final WeatherOverviewScreenState
      weatherOverviewScreenState;

  const AppState(
      {required this.citiesScreenState,
      required this.weatherOverviewScreenState});

  factory AppState.initial() {
    return AppState(
      citiesScreenState: CitiesScreenState.initial(),
      weatherOverviewScreenState: WeatherOverviewScreenState.initial(),
    );
  }

  AppState copyWith(
    CitiesScreenState? citiesScreenState,
    WeatherOverviewScreenState? weatherOverviewScreenState,
  ) {
    return AppState(
        citiesScreenState: citiesScreenState ?? this.citiesScreenState,
        weatherOverviewScreenState:
            weatherOverviewScreenState ?? this.weatherOverviewScreenState);
  }

  @override
  List<Object> get props => [
        citiesScreenState,
        weatherOverviewScreenState,
      ];
}
