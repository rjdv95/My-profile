import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;

  const Avatar({
    @required this.size,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/home_screen/avatar.png',
      width: size,
      height: size,
    );
  }
}
