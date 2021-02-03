import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/extensions/hover_extensions.dart';

/// A square image which is clickable
class ImageButton extends StatelessWidget {
  final void Function() onPressed;
  final double size;
  final String assetPath;

  const ImageButton({
    @required this.onPressed,
    @required this.size,
    @required this.assetPath,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = GestureDetector(
      onTap: onPressed,
      child: Image.asset(
        assetPath,
        width: size,
        height: size,
      ),
    );

    return kIsWeb ? widget.showCursorOnHover : widget;
  }
}
