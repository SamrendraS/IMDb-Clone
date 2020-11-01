import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  get _firstPart => Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Image.asset(
            "assets/logo.png",
            height: 20,
          ),
        ],
      );

  get _secondPart => Row(
        children: [
          Icon(FontAwesomeIcons.search),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _firstPart,
        _secondPart,
      ],
    );
  }
}
