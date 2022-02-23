import 'package:redux/redux.dart';
import 'package:http/http.dart' as http;
import 'package:redux_test_proj/redux/app/app_state.dart';
import 'package:redux_test_proj/redux/cities_screen/cities_screen_action.dart';
import 'package:redux_test_proj/data/network/weather_services/weather_data_service.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/weather_overview_screen_action.dart';

class WeatherOverviewScreenMiddleware extends MiddlewareClass<AppState> {
  final WeatherDataService weatherDataService;
  final http.Client client;

  WeatherOverviewScreenMiddleware({
    required this.weatherDataService,
    required this.client,
  });

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);

    switch (action.runtimeType) {
      case CitiesScreenCitySelectedAction:
        _getWeather(store, action);
        break;
      default:
        break;
    }
  }

  void _getWeather(
      Store<AppState> store, CitiesScreenCitySelectedAction action) async {
    final weather =
        await weatherDataService.getWeatherForCity(client, action.pickedCity);

    store.dispatch(WeatherOverviewScreenWeatherLoadedAction(weather));
  }
}
