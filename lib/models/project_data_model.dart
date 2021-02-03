import 'package:flutter/foundation.dart';

class ProjectDataModel {
  final String projectTitle;
  final String assetPath;
  final List<String> bulletPoints;

  const ProjectDataModel({
    @required this.projectTitle,
    @required this.bulletPoints,
    @required this.assetPath,
  });
}
