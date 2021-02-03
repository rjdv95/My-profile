import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:my_profile/config/project_colors.dart';
import 'package:my_profile/widgets/resume_page/sections/contact_information.dart';
import 'package:my_profile/widgets/resume_page/sections/education.dart';
import 'package:my_profile/widgets/resume_page/sections/experience.dart';
import 'package:my_profile/widgets/resume_page/sections/hobbies.dart';
import 'package:my_profile/widgets/resume_page/sections/languages.dart';
import 'package:my_profile/widgets/resume_page/sections/projects.dart';
import 'package:my_profile/widgets/resume_page/sections/skills.dart';
import 'package:my_profile/widgets/resume_page/sections/summary.dart';

class ResumePageContent extends StatelessWidget {
  const ResumePageContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: OrientationBuilder(
        builder: (_, orientation) {
          bool showLandscape = orientation == Orientation.landscape && kIsWeb && height > 792;
          return showLandscape
              ? AspectRatio(
                  aspectRatio: 0.7072,
                  child: _Background(
                    content: _LandscapeContent(),
                  ),
                )
              : _Background(
                  content: _PortraitContent(),
                );
        },
      ),
    );
  }
}

class _Background extends StatelessWidget {
  final Widget content;

  const _Background({@required this.content, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: DefaultTextStyle(
            style: TextStyle(
              fontFamily: 'Rubik',
              color: ProjectColors.black,
            ),
            child: content,
          ),
        ),
      ),
    );
  }
}

class _LandscapeContent extends StatelessWidget {
  const _LandscapeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ContactInformation(),
        const SizedBox(height: 24),
        Summary(),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Projects(),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Experience(),
                  const SizedBox(height: 16),
                  Skills(),
                  const SizedBox(height: 24),
                  Education(),
                  const SizedBox(height: 16),
                  Languages(),
                  const SizedBox(height: 24),
                  Hobbies(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _PortraitContent extends StatelessWidget {
  const _PortraitContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        FittedBox(
          fit: BoxFit.scaleDown,
          child: ContactInformation(),
        ),
        const SizedBox(height: 16),
        Summary(),
        const SizedBox(height: 16),
        Projects(),
        const SizedBox(width: 16),
        Skills(),
        const SizedBox(height: 24),
        Experience(),
        const SizedBox(height: 16),
        Education(),
        const SizedBox(height: 16),
        Languages(),
        const SizedBox(height: 24),
        Hobbies(),
      ],
    );
  }
}
