import 'package:equatable/equatable.dart';

import 'package:redux_test_proj/ui/cities_screen/shared_widgets/city/city_widget_view_model.dart';

class CitiesScreenViewModel extends Equatable {
  final List<CityWidgetViewModel> cities;

  const CitiesScreenViewModel({
    required this.cities,
  });

  @override
  List<Object?> get props => [cities];
}
