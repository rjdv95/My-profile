import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/config/project_colors.dart';
import 'package:my_profile/models/navigation_item_data_model.dart';
import 'package:my_profile/extensions/hover_extensions.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth * 0.66;
        return Container(
          width: width,
          color: Theme.of(context).primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _NavigationDrawerHeader(),
              Expanded(
                child: ListView.builder(
                  itemCount: navBarItems.length,
                  itemBuilder: (_, index) {
                    final widget = ListTile(
                      contentPadding: EdgeInsets.all(0),
                      dense: true,
                      title: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                        child: Text(
                          navBarItems[index].title,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      onTap: () => Navigator.of(context).pushNamed(navBarItems[index].routeName),
                    );

                    return kIsWeb
                        ? widget.showCursorOnHover
                        : Material(
                            color: Colors.transparent,
                            child: widget,
                          );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _NavigationDrawerHeader extends StatelessWidget {
  const _NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ProjectColors.black,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SafeArea(
        top: true,
        bottom: false,
        left: false,
        right: false,
        child: Container(
          height: 150,
          color: ProjectColors.black,
          alignment: Alignment.center,
          width: double.infinity,
          child: Image.asset('assets/images/drawer/dash.png'),
        ),
      ),
    );
  }
}
