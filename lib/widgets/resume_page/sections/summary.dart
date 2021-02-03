import 'package:flutter/material.dart';
import 'package:my_profile/config/resume_settings.dart';

class Summary extends StatelessWidget {
  const Summary({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        ResumeSettings.summary,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontSize: 14,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
