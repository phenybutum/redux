import 'package:equatable/equatable.dart';
import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class CitiesScreenViewModel extends Equatable {
  final List<City> cities;
  final void Function() getCities;
  final void Function(City city) onPickCity;

  const CitiesScreenViewModel({
    required this.cities,
    required this.getCities,
    required this.onPickCity,
  });

  @override
  List<Object?> get props => [cities, getCities, onPickCity];
}
