import 'package:flutter/material.dart';
import 'package:my_profile/config/resume_settings.dart';
import 'package:my_profile/widgets/resume_page/sections/common/headline.dart';

class Skills extends StatelessWidget {
  const Skills({Key key}) : super(key: key);

  static const colors = const [
    const Color(0xff8788f5),
    // const Color(0xfff587bf),
    const Color(0xfff5bd87),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Skills'),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            child: Wrap(
              children: <Widget>[
                for (int index = 0; index < ResumeSettings.skills.length; index++)
                  _SkillChip(
                    backgroundColor: colors[index % colors.length],
                    text: ResumeSettings.skills[index],
                  ),
              ],
              spacing: 8,
              runSpacing: 8,
            ),
          ),
        ],
      ),
    );
  }
}

class _SkillChip extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;

  const _SkillChip({
    @required this.backgroundColor,
    this.foregroundColor = Colors.white,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        color: backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Icon(
                Icons.check,
                color: backgroundColor,
                size: 14,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: foregroundColor,
              ),
            ),
            const SizedBox(width: 4),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: foregroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
