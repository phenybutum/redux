import 'package:equatable/equatable.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/models/weather.dart';

class City extends Equatable {
  final String name;
  final double lat;
  final double lon;

  const City({required this.name, required this.lat, required this.lon});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}