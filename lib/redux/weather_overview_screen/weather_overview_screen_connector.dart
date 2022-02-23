import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_test_proj/redux/app/app_state.dart';
import 'package:redux_test_proj/ui/weather_overview_screen/weather_overview_screen.dart';
import 'package:redux_test_proj/ui/weather_overview_screen/weather_overview_screen_view_model.dart';

class WeatherOverviewScreenConnector extends StatelessWidget {
  const WeatherOverviewScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, WeatherOverviewScreenViewModel>(
      distinct: true,
      converter: (store) {
        return WeatherOverviewScreenViewModel(
          store.state.weatherOverviewScreenState.city,
          store.state.weatherOverviewScreenState.weather,
        );
      },
      builder: (_, viewModel) {
        return WeatherOverviewScreen(viewModel: viewModel);
      },
    );
  }
}
