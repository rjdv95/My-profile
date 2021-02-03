import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/extensions/hover_extensions.dart';

class AdaptiveButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;

  const AdaptiveButton({
    @required this.onPressed,
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.all(8.0);
    return kIsWeb
        ? GestureDetector(
            onTap: onPressed,
            child: Container(
              color: Colors.transparent,
              padding: padding,
              child: child,
            ),
          ).showCursorOnHover
        : InkWell(
            child: Padding(
              padding: padding,
              child: child,
            ),
            onTap: onPressed,
            borderRadius: BorderRadius.circular(100.0),
          );
  }
}
