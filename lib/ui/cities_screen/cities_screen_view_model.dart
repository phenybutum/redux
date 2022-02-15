import 'package:equatable/equatable.dart';
import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class CitiesScreenViewModel extends Equatable {
  final List<City> cities;
  final void Function(City city) onCitySelect;

  const CitiesScreenViewModel({
    required this.cities,
    required this.onCitySelect
  });

  @override
  List<Object?> get props => [cities];
}
