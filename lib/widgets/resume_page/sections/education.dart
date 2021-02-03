import 'package:flutter/material.dart';
import 'package:my_profile/widgets/resume_page/sections/common/content_tile.dart';
import 'package:my_profile/widgets/resume_page/sections/common/headline.dart';

class Education extends StatelessWidget {
  const Education({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Education'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ContentTile(
                icon: Icons.local_library,
                title: 'Applied Mathematics for Network and Data Sciences',
                subtitle: 'Expected June 2022',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
