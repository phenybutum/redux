import 'package:flutter/material.dart';
import 'package:redux_test_proj/redux/weather_overview_screen/weather_overview_screen_connector.dart';
import 'package:redux_test_proj/ui/cities_screen/cities_screen_view_model.dart';

class CitiesScreen extends StatelessWidget {
  final CitiesScreenViewModel viewModel;

  const CitiesScreen({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cities list',
          ),
        ),
        body: viewModel.cities.isEmpty
            ? Center(
                child: getCitiesButton(),
              )
            : Column(
                children: [
                  const SizedBox(height: 10.0),
                  citiesList(),
                ],
              ),
      ),
    );
  }

  Widget getCitiesButton() {
    return MaterialButton(
      color: Colors.amber,
      onPressed: viewModel.getCities,
      child: const Text(
        'Get cities!',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget citiesList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: viewModel.cities.length,
      itemBuilder: (context, item) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                selectCityOption(context, item);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      viewModel.cities[item].name,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        );
      },
    );
  }

  void selectCityOption(BuildContext context, int item) {
    viewModel.onPickCity(viewModel.cities[item]);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) =>
            const WeatherOverviewScreenConnector(),
      ),
    );
  }
}
