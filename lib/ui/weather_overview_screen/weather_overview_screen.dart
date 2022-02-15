import 'package:flutter/material.dart';
import 'package:redux_test_proj/ui/weather_overview_screen/weather_overview_screen_view_model.dart';

class WeatherOverviewScreen extends StatelessWidget {
  final WeatherOverviewScreenViewModel viewModel;

  const WeatherOverviewScreen({Key? key, required this.viewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'Current weather in ${viewModel.city.name}',
          ),
        ),
        body: Center(
          child: Container(
            height: 200.0,
            width: 300.0,
            color: Colors.lightBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${viewModel.currentWeather?.temp.toString() ?? '--'}° C',
                  style: const TextStyle(fontSize: 35.0, color: Colors.white),
                ),
                Text(viewModel.currentWeather?.description ?? '--',
                    style:
                        const TextStyle(fontSize: 28.0, color: Colors.white)),
                const SizedBox(height: 10.0),
                Text(
                    'wind speed: ${viewModel.currentWeather?.windSpeed.toString() ?? '--'} m/s',
                    style:
                        const TextStyle(fontSize: 20.0, color: Colors.white)),
                Text(
                    'feels like: ${viewModel.currentWeather?.feelsLikeTemp.toString() ?? '--'}° C',
                    style:
                        const TextStyle(fontSize: 20.0, color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
