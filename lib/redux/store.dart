import 'package:redux/redux.dart';
import 'package:redux_test_proj/data/mock/cities_services/cities_data_service.dart';
import 'package:redux_test_proj/data/network/weather_services/weather_data_service.dart';
import 'package:redux_test_proj/redux/app/app_reducer.dart';
import 'package:redux_test_proj/redux/app/app_state.dart';
import 'package:redux_test_proj/redux/cities_screen/cities_screen_middleware.dart';
import 'package:redux_test_proj/redux/navigation/navigation_middleware.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/weather_overview_screen_middleware.dart';

import 'package:http/http.dart' as http;

Store<AppState> createStore() {
  return Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [
      CitiesScreenMiddleware(
        mockDataService: CitiesMockDataService(),
      ),
      NavigationMiddleware(),
      WeatherOverviewScreenMiddleware(
        weatherDataService: WeatherDataService(),
        client: http.Client(),
      )
    ],
  );
}
