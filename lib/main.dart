
import 'data/repositories/mock/mock_locations_repository.dart';
import 'data/repositories/mock/mock_ride_preferences_repository.dart';
import 'package:flutter/material.dart';

import 'repository/mock/mock_ride_preferences_repository.dart';
import 'ui/providers/rides_preferences_provider.dart';
import 'ui/screens/ride_pref/ride_pref_screen.dart';
import 'ui/theme/theme.dart';

void main() {
  // Create repositories
  final ridePreferencesRepository = MockRidePreferencesRepository();

  // Run the app with MultiProvider
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RidesPreferencesProvider(
            repository: ridePreferencesRepository,
          ),
        ),
        
      ],
      child: MyApp(),
    ),
  );
}

class ChangeNotifierProvider {
}

class MultiProvider {
}

void runApp(multiProvider) {
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: RidePrefScreen(),
    );
  }
}

class Widget {
}

class BuildContext {
}

class StatelessWidget {
}