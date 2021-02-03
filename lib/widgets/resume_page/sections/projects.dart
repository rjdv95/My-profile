import 'package:flutter/material.dart';
import 'package:my_profile/config/project_colors.dart';
import 'package:my_profile/config/resume_settings.dart';
import 'package:my_profile/models/project_data_model.dart';
import 'package:my_profile/widgets/resume_page/sections/common/headline.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Projects'),
          const SizedBox(height: 16),
          for (ProjectDataModel project in ResumeSettings.projects)
            Column(
              children: <Widget>[
                _ProjectCard(
                  title: project.projectTitle,
                  bulletPoints: project.bulletPoints,
                  assetPath: project.assetPath,
                ),
                const SizedBox(height: 16),
              ],
            ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final String title;
  final List<String> bulletPoints;
  final String assetPath;

  const _ProjectCard({
    @required this.title,
    @required this.bulletPoints,
    @required this.assetPath,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: ListTile(
            contentPadding: const EdgeInsets.all(0),
            dense: true,
            leading: Image.asset(
              assetPath,
              width: 40,
              height: 40,
            ),
            title: Text(
              title,
              style: const TextStyle(
                color: ProjectColors.black,
                fontSize: 18,
              ),
            ),
          ),
        ),
        const Divider(
          color: ProjectColors.lightBlack,
          thickness: 1,
          height: 2,
          // indent: 8,
          endIndent: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 4),
              for (String bp in bulletPoints)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Icon(
                        Icons.code,
                        size: 16,
                        color: ProjectColors.black,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          bp,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: ProjectColors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ],
    );
  }
}
