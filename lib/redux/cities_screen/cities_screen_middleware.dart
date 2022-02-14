import 'package:redux/redux.dart';
import 'package:redux_test_proj/data/mock/cities_services/cities_service.dart';
import 'package:redux_test_proj/redux/app/app_state.dart';
import 'package:redux_test_proj/redux/cities_screen/cities_screen_action.dart';
import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class CitiesScreenMiddleware extends MiddlewareClass<AppState> {
  final CitiesMockService mockDataService;

  CitiesScreenMiddleware({required this.mockDataService});

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);
    switch (action.runtimeType) {
      case CitiesScreenGetCitiesAction:
        _getCities(store);
    }
  }

  void _getCities(Store<AppState> store) {
    final List<City> cities = mockDataService.getCities();

    store.dispatch(
      CitiesScreenCitiesLoadedAction(cities),
    );
  }
}
