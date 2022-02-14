import 'package:equatable/equatable.dart';

class WeatherResponse extends Equatable {
  final String description;
  final double temperature;
  final int windSpeed;
  final double feelsLike;

  const WeatherResponse(
      {required this.description,
      required this.temperature,
      required this.windSpeed,
      required this.feelsLike});

  factory WeatherResponse.fromJSON(json) {
    final weather = WeatherResponse(
        description: json['weather'][0]['description'],
        temperature: json['main']['temp'],
        windSpeed: json['wind']['speed'],
        feelsLike: json['main']['feels_like']);
    return weather;
  }

  @override
  List<Object?> get props => [description, temperature, windSpeed, feelsLike];
}
