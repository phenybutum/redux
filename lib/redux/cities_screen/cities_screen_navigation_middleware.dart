import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import 'package:redux_test_proj/data/mock/cities_services/cities_service.dart';
import 'package:redux_test_proj/main.dart';
import 'package:redux_test_proj/redux/app/app_state.dart';
import 'package:redux_test_proj/redux/cities_screen/cities_screen_action.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/weather_overview_screen_action.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/weather_overview_screen_connector.dart';

class CitiesScreenNavigationMiddleware extends MiddlewareClass<AppState> {
  CitiesScreenNavigationMiddleware();

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);
    switch (action.runtimeType) {
      case CitiesScreenNavigateToNextScreenAction:
        _navigateToOverview(store, action);
    }
  }

  void _navigateToOverview(
      Store<AppState> store, CitiesScreenNavigateToNextScreenAction action) {
    store.dispatch(WeatherOverviewScreenGetCityInfoAction(action.pickedCity));
    store.dispatch(WeatherOverviewScreenGetWeatherAction(action.pickedCity));
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (BuildContext context) =>
            const WeatherOverviewScreenConnector(),
      ),
    );
  }
}
