import 'package:flutter/material.dart';
import 'package:grocery/modules/details_page_screen/detailspage.dart';
import 'package:grocery/modules/home_page_screen/homescreen.dart';

import 'modules/welcome_page_screen/welcomescreen.dart';

class RouterApp {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  HomeScreen());
      case Routes.welcomeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const WelcomeScreen());
      case Routes.detailscreen:
        return MaterialPageRoute(builder: (BuildContext context) =>  DetailsPage());
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Text('The Page ${settings.name} does not exists.'),
            ),
          ),
        );
    }
  }
}

class Routes {
  static const String homeScreen = '/homeScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String detailscreen = '/detailscreen';
  static const String noInternetScreen = '/noInternetScreen';
}