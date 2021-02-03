import 'package:flutter/foundation.dart';

class PortfolioProjectsModel {
  final String title;
  final String description;
  final String iconAssetPath;
  final List<String> screenshotAssetPaths;

  const PortfolioProjectsModel({
    @required this.title,
    @required this.description,
    @required this.iconAssetPath,
    @required this.screenshotAssetPaths,
  });
}
