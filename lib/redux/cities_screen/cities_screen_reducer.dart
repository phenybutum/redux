import 'package:redux/redux.dart';

import 'package:redux_test_proj/redux/cities_screen/cities_screen_state.dart';
import 'package:redux_test_proj/redux/cities_screen/cities_screen_action.dart';

final citiesScreenReducer = combineReducers<CitiesScreenState>(
  [
    TypedReducer<CitiesScreenState, CitiesScreenCitiesLoadedAction>(
      _citiesScreenCitiesLoadedAction,
    ),
  ],
);

CitiesScreenState _citiesScreenCitiesLoadedAction(
  CitiesScreenState state,
  CitiesScreenCitiesLoadedAction action,
) {
  return state.copyWith(cities: action.cities);
}
