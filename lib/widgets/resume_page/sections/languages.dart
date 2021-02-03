import 'package:flutter/material.dart';
import 'package:my_profile/config/project_colors.dart';
import 'package:my_profile/widgets/resume_page/sections/common/headline.dart';

class Languages extends StatelessWidget {
  const Languages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Languages'),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _LanguageIcon(language: 'EN'),
              const SizedBox(width: 32),

            ],
          ),
        ],
      ),
    );
  }
}

class _LanguageIcon extends StatelessWidget {
  final String language;
  final double size;

  const _LanguageIcon({
    @required this.language,
    this.size = 32,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Center(
        child: Text(
          language,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ProjectColors.lightBlack,
      ),
    );
  }
}
