import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String text;

  const Headline(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).accentColor,
      ),
    );
  }
}
