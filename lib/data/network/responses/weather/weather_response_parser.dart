import 'package:redux_test_proj/data/network/responses/weather/weather_response.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/models/weather.dart';

class WeatherResponseParser {
  final WeatherResponse weatherResponse;

  WeatherResponseParser(this.weatherResponse);

  Weather parseWeather() {
    var weather = Weather(
      description: weatherResponse.description,
      temp: weatherResponse.temperature.toInt(),
      windSpeed: weatherResponse.windSpeed,
      feelsLikeTemp: weatherResponse.feelsLike.toInt(),
    );
    return weather;
  }
}
