import 'package:redux_test_proj/data/mock/cities_services/cities_service.dart';
import 'package:redux_test_proj/redux/cities_screen/models/city.dart';

class CitiesMockDataService implements CitiesMockService {
  @override
  List<City> getCities() => [
        City(name: 'Lviv', lat: 49.83826, lon: 24.02324),
        City(name: 'Kyiv', lat: 50.45466, lon: 30.5238),
        City(name: 'Odesa', lat: 46.47747, lon: 30.73262),
      ];
}
