import 'package:flutter/material.dart';
import 'package:myapp/data/restaurant_data.dart';
import 'package:myapp/model/restaurant.dart';
import 'package:myapp/ui/_core/app_theme.dart';
import 'package:myapp/ui/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  List<Restaurant> listRestaurants = await RestaurantData().getRestaurant();
  print(listRestaurants);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.appTheme, home: SplashScreen());
  }
}
