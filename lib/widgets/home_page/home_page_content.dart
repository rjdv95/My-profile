import 'package:flutter/material.dart';
import 'package:my_profile/config/personal_info.dart';
import 'package:my_profile/widgets/common/avatar.dart';
import 'package:my_profile/widgets/common/image_button.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (_, orientation) => FittedBox(
        fit: BoxFit.scaleDown,
        child: orientation == Orientation.landscape ? _Landscape() : _Portrait(),
      ),
    );
  }
}

class _Landscape extends StatelessWidget {
  const _Landscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Avatar(size: 300),
              const SizedBox(width: 128),
              _AboutMe(),
            ],
          ),
        ],
      ),
    );
  }
}

class _Portrait extends StatelessWidget {
  const _Portrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const SizedBox(height: 32),
        Avatar(size: 300),
        const SizedBox(height: 32),
        _AboutMe(),
      ],
    );
  }
}

class _AboutMe extends StatelessWidget {
  const _AboutMe({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        //color: ProjectColors.peach
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hi, I\'m',
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              PersonalInfo.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Theme.of(context).accentColor,
              ),
            ),
            const SizedBox(height: 20),
            /*
            const Text(
              PersonalInfo.university,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 24),

             */
            const Text(
              PersonalInfo.position,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 20),
             const Text(
                    'Experienced App Developer, love to create amazing apps for mobile and Web \n'
                    ,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 25
              )
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ImageButton(
                  onPressed: () async => await launch(PersonalInfo.linkedInUrl),
                  size: 64,
                  assetPath: 'assets/images/home_screen/linkedin.png',
                ),
                const SizedBox(width: 16),
                ImageButton(
                  onPressed: () async => await launch(PersonalInfo.gitHubUrl),
                  size: 64,
                  assetPath: 'assets/images/home_screen/github.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
