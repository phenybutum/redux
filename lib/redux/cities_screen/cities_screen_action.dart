import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class CitiesScreenInitAction {}

class CitiesScreenCitiesLoadedAction {
  final List<City> cities;

  CitiesScreenCitiesLoadedAction(this.cities);
}

class CitiesScreenCitySelectedAction {
  final City pickedCity;

  CitiesScreenCitySelectedAction(this.pickedCity);
}
