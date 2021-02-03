import 'package:my_profile/widgets/common/adaptive_button.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String routeName;

  const NavBarItem({
    @required this.title,
    @required this.routeName,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      onPressed: () => Navigator.of(context).pushNamed(routeName),
    );
  }
}
