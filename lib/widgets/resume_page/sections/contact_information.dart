import 'package:flutter/material.dart';
import 'package:my_profile/config/personal_info.dart';
import 'package:my_profile/widgets/common/avatar.dart';
import 'package:my_profile/widgets/common/image_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Avatar(size: 90),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Theme(
                data: ThemeData.light(),
                child: Text(
                  PersonalInfo.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold ,
                    color: Theme.of(context).accentColor,
                    fontSize: 32,
                  ),
                ),
              ),
              const Text(
                PersonalInfo.university,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Text(
                PersonalInfo.city,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ImageButton(
                onPressed: () async => await launch(PersonalInfo.linkedInUrl),
                size: 32,
                assetPath: 'assets/images/home_screen/linkedin.png',
              ),
              ImageButton(
                onPressed: () async => await launch(PersonalInfo.gitHubUrl),
                size: 32,
                assetPath: 'assets/images/home_screen/github_black.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
