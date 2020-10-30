import 'package:flutter/material.dart';
import 'package:fmdb/widgets/footer/socialicon_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterBoardTile extends StatelessWidget {
  const FooterBoardTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff032541),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(''),
          ),
          SocialIconWidget(iconVal: FontAwesomeIcons.github),
          SocialIconWidget(iconVal: FontAwesomeIcons.github),
          SocialIconWidget(iconVal: FontAwesomeIcons.github),
          SocialIconWidget(iconVal: FontAwesomeIcons.github),
        ],
      ),
    );
  }
}
