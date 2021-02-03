import 'package:my_profile/config/resume_settings.dart';
import 'package:flutter/material.dart';

class Footnote extends StatelessWidget {
  const Footnote({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ResumeSettings.footnote,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
