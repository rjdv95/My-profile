import 'package:flutter/material.dart';
import 'package:my_profile/config/route_names.dart';

class NavigationItemDataModel {
  final String title;

  final String routeName;

  const NavigationItemDataModel({
    @required this.title,
    @required this.routeName,
  });
}

const navBarItems = const [
  NavigationItemDataModel(title: 'Home', routeName: RouteNames.home),
  NavigationItemDataModel(title: 'PROJECTS', routeName: RouteNames.PROJECTS),
  NavigationItemDataModel(title: 'RESUME', routeName: RouteNames.RESUME),
];
