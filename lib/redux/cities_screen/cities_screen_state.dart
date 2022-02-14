import 'package:equatable/equatable.dart';
import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class CitiesScreenState extends Equatable {
  final List<City> cities;

  const CitiesScreenState({required this.cities});

  factory CitiesScreenState.initial() {
    return const CitiesScreenState(cities: []);
  }

  CitiesScreenState copyWith({List<City>? cities}) {
    return CitiesScreenState(cities: cities ?? this.cities);
  }

  @override
  List<Object?> get props => [cities];
}
