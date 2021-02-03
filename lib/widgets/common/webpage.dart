import 'package:flutter/material.dart';
import 'package:my_profile/widgets/common/navigation_bar.dart';
import 'package:my_profile/widgets/common/navigation_drawer.dart';

class Webpage extends StatelessWidget {
  final Widget content;

  const Webpage({
    @required this.content,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (_, orientation) => Scaffold(
        drawer: orientation == Orientation.portrait ? NavigationDrawer() : null,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                NavigationBar(orientation: orientation),
                Expanded(
                  child: content,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
