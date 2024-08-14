
import 'package:flutter/cupertino.dart';
import 'package:jmrassignmentapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/serach_result_screen.dart';

import '../presentation/travel_home_tab_container/travel_home_container_screen.dart';

class AppRoutes {
  static const String travelHomePage = '/travel_home_page';
  static const String travelHomeTabContainerScreen =    '/travel_home_tab_container_screen';
  static const String searchResultScreen = '/search_result_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';
  static Map<String, WidgetBuilder> get routes => {
    travelHomeTabContainerScreen: TravelHomeTabContainerScreen.builder,
    searchResultScreen: SearchResultScreen.builder,
    appNavigationScreen: AppNavigationScreen.builder,
    initialRoute: TravelHomeTabContainerScreen.builder
  };
}