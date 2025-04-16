import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/restaurant.dart';

class RestaurantData {
  Future<List<Restaurant>> getRestaurant() async {
    List<Restaurant> listRestaurant = [];

    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurantsData = data['restaurants'];

    for (var restaurantData in restaurantsData) {
      Restaurant restaurant = Restaurant.fromMap(restaurantData);
      listRestaurant.add(restaurant);
    }
    return listRestaurant;
  }
}
