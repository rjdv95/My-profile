import 'package:flutter/material.dart';
import 'package:my_profile/config/project_colors.dart';
import 'package:my_profile/widgets/resume_page/sections/common/headline.dart';

class Hobbies extends StatelessWidget {
  const Hobbies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Hobbies'),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _HobbyIcon(
                icon: Icons.sports_cricket,
              ),
              const SizedBox(width: 24),
              _HobbyIcon(
                icon: Icons.theaters,
              ),
              const SizedBox(width: 24),
              _HobbyIcon(
                icon: Icons.flight,
              ),
              const SizedBox(width: 24),
              _HobbyIcon(
                icon: Icons.music_note,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HobbyIcon extends StatelessWidget {
  final double size;
  final IconData icon;
  final Color color;

  const _HobbyIcon({
    @required this.icon,
    this.size = 30,
    this.color = ProjectColors.lightBlack,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}
