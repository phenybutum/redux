import 'package:flutter/material.dart';

import 'package:redux_test_proj/ui/cities_screen/shared_widgets/city/city_widget_view_model.dart';

class CityWidget extends StatelessWidget {
  final CityWidgetViewModel viewModel;

  const CityWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: viewModel.onCitySelect,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  viewModel.city.name ?? '',
                  style: const TextStyle(color: Colors.black, fontSize: 20.0),
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
  }
}
