import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final int temp;
  final String description;
  final int feelsLikeTemp;
  final int windSpeed;

  const Weather(
      {required this.temp,
      required this.description,
      required this.feelsLikeTemp,
      required this.windSpeed,
      });

  @override
  List<Object?> get props => [temp, description, feelsLikeTemp, windSpeed];
}
