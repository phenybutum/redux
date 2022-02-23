import 'package:equatable/equatable.dart';

class City extends Equatable {
  final String? name;
  final double? lat;
  final double? lon;

  const City({
    this.name,
    this.lat,
    this.lon,
  });

  @override
  List<Object?> get props => [name, lat, lon];
}
