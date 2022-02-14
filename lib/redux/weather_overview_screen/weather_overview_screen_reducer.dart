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
  ],
);

WeatherOverviewScreenState _weatherOverviewScreenWeatherLoadedAction(
    WeatherOverviewScreenState state,
    WeatherOverviewScreenWeatherLoadedAction action) {
  return state.copyWith(city: action.city);
}
