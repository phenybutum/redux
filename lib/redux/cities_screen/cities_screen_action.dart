import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class CitiesScreenGetCitiesAction {}

class CitiesScreenCitiesLoadedAction {
  final List<City> cities;

  CitiesScreenCitiesLoadedAction(this.cities);
}