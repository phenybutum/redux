import 'package:flutter/material.dart';
import 'package:redux_test_proj/ui/cities_screen/cities_screen_view_model.dart';
import 'package:redux_test_proj/ui/cities_screen/shared_widgets/city/city_widget.dart';

class CitiesScreen extends StatelessWidget {
  final CitiesScreenViewModel viewModel;

  const CitiesScreen({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> citiesList = viewModel.cities.map(
      (city) {
        return CityWidget(
          viewModel: city,
        );
      },
    ).toList();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cities list',
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: citiesList,
            ),
          ],
        ),
      ),
    );
  }
}
