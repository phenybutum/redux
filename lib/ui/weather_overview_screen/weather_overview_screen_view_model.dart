import 'package:equatable/equatable.dart';
import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class WeatherOverviewScreenViewModel extends Equatable {

  final City city;

  const WeatherOverviewScreenViewModel(this.city);

  @override
  List<Object?> get props => [city];

}