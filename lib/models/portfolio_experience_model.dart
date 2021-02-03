import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PortfolioExperienceModel {
  final IconData icon;
  final double iconSize;
  final String title;
  final String company;
  //final String role;
  final String subtitle;

  const PortfolioExperienceModel({
    @required this.icon,
    this.iconSize = 38,
    @required this.title,
    @required this.company,
   // @required this.role,
    @required this.subtitle,
  });
}
