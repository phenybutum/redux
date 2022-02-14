import 'package:redux/redux.dart';
import 'package:redux_test_proj/data/network/weather_services/weather_data_service.dart';
import 'package:redux_test_proj/redux/app/app_state.dart';
import 'package:redux_test_proj/redux/cities_screen/models/city.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/weather_overview_screen_action.dart';
import 'package:http/http.dart' as http;

class WeatherOverviewScreenMiddleware extends MiddlewareClass<AppState> {
  final WeatherDataService weatherDataService;
  final http.Client client;

  WeatherOverviewScreenMiddleware({required this.weatherDataService, required this.client});

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);

    switch (action.runtimeType) {
      case WeatherOverviewScreenGetWeatherAction:
        _getWeather(store, action);
        break;
      default:
        break;
    }
  }

  void _getWeather(Store<AppState> store, WeatherOverviewScreenGetWeatherAction action) async {
    final weather = await weatherDataService.getWeatherForCity(client, action.city);
    final city = City(
        name: action.city.name,
        lat: action.city.lat,
        lon: action.city.lon,
        currentWeather: weather);
    store.dispatch(WeatherOverviewScreenWeatherLoadedAction(city));
  }

}