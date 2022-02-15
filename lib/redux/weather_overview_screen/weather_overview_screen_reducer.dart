import 'package:redux/redux.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/weather_overview_screen_action.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/weather_overview_screen_state.dart';

final weatherOverviewScreenReducer =
    combineReducers<WeatherOverviewScreenState>(
  [
    TypedReducer<WeatherOverviewScreenState,
        WeatherOverviewScreenWeatherLoadedAction>(
      _weatherOverviewScreenWeatherLoadedAction,
    ),
    TypedReducer<WeatherOverviewScreenState,
        WeatherOverviewScreenGetCityInfoAction>(
      _weatherOverviewScreenGetCityInfoAction,
    ),
  ],
);

WeatherOverviewScreenState _weatherOverviewScreenWeatherLoadedAction(
    WeatherOverviewScreenState state,
    WeatherOverviewScreenWeatherLoadedAction action) {
  return state.copyWith(weather: action.weather);
}

WeatherOverviewScreenState _weatherOverviewScreenGetCityInfoAction(
    WeatherOverviewScreenState state,
    WeatherOverviewScreenGetCityInfoAction action) {
  return state.copyWith(city: action.city);
}
