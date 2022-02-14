import 'package:redux_test_proj/redux/app/app_state.dart';
import 'package:redux_test_proj/redux/cities_screen/cities_screen_reducer.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/weather_overview_screen_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    citiesScreenState: citiesScreenReducer(state.citiesScreenState, action),
    weatherOverviewScreenState:
        weatherOverviewScreenReducer(state.weatherOverviewScreenState, action),
  );
}
