import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_test_proj/redux/cities_screen/cities_screen_connector.dart';
import 'package:redux_test_proj/redux/store.dart';

void main() {
  runApp(
    StoreProvider(
      store: createStore(),
      child: const MyApp(),
    ),
  );
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReduxTest',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      home: const CitiesScreenConnector(),
    );
  }
}
