import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final int? temp;
  final String? description;
  final int? feelsLikeTemp;
  final int? windSpeed;

  const Weather({
    this.temp,
    this.description,
    this.feelsLikeTemp,
    this.windSpeed,
  });

  @override
  List<Object?> get props => [temp, description, feelsLikeTemp, windSpeed];
}
