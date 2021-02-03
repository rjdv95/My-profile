import 'package:flutter/material.dart';
import 'package:my_profile/config/project_colors.dart';

class ContentTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  //final String CompanyName;

  const ContentTile({
    @required this.title,
    @required this.subtitle,
    @required this.icon,
    //@required this.CompanyName,
    this.iconSize = 38,
    this.iconColor = ProjectColors.lightBlack,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      dense: true,
      leading: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: ProjectColors.black,
          fontSize: 12,
        ),
      ),

      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: ProjectColors.darkGray,
          fontStyle: FontStyle.italic,
          fontSize: 10,
        ),
      ),

    );
  }
}
