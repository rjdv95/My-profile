import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/models/navigation_item_data_model.dart';
import 'package:my_profile/widgets/common/custom_icon_button.dart';
import 'package:my_profile/widgets/common/nav_bar_item.dart';

class NavigationBar extends StatelessWidget {
  final Orientation orientation;

  const NavigationBar({
    @required this.orientation,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kIsWeb ? 80 : 36,
      child: orientation == Orientation.landscape ? _NavBarLandscape() : _NavBarPortrait(),
    );
  }
}

class _NavBarPortrait extends StatelessWidget {
  const _NavBarPortrait({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomIconButton(
          icon: Icons.menu,
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ],
    );
  }
}

class _NavBarLandscape extends StatelessWidget {
  const _NavBarLandscape({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeNavItem = navBarItems.first;
    final remainingNavItem = navBarItems.sublist(1);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        NavBarItem(
          title: homeNavItem.title,
          routeName: homeNavItem.routeName,
        ),
        Row(
          children: <Widget>[
            for (final navItem in remainingNavItem)
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: NavBarItem(
                  title: navItem.title,
                  routeName: navItem.routeName,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
