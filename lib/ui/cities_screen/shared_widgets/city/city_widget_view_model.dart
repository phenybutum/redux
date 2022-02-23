import 'package:equatable/equatable.dart';

import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class CityWidgetViewModel extends Equatable {
  final City city;
  final Function(City city) onCitySelect;

  const CityWidgetViewModel({
    required this.city,
    required this.onCitySelect,
  });

  @override
  List<Object?> get props => [city];
}
