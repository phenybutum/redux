import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux_test_proj/redux/app/app_state.dart';
import 'package:redux_test_proj/redux/cities_screen/cities_screen_action.dart';

import 'package:redux_test_proj/ui/cities_screen/cities_screen.dart';
import 'package:redux_test_proj/ui/cities_screen/cities_screen_view_model.dart';
import 'package:redux_test_proj/ui/cities_screen/shared_widgets/city/city_widget_view_model.dart';

class CitiesScreenConnector extends StatelessWidget {
  const CitiesScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CitiesScreenViewModel>(
      distinct: true,
      onInit: (store) {
        store.dispatch(
          CitiesScreenInitAction(),
        );
      },
      converter: (store) {
        return CitiesScreenViewModel(
          cities: store.state.citiesScreenState.cities
              .map(
                (e) => CityWidgetViewModel(
                  city: e,
                  onCitySelect: () {
                    store.dispatch(
                      CitiesScreenCitySelectedAction(e),
                    );
                  },
                ),
              )
              .toList(),
        );
      },
      builder: (_, viewModel) {
        return CitiesScreen(viewModel: viewModel);
      },
    );
  }
}
