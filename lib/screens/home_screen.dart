import 'package:flutter/material.dart';
import 'package:fmdb/widgets/leaderboard/leaderboard_tile.dart';
import 'package:fmdb/widgets/footer/footerboard_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: CustomAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              LeaderBoardTile(),
              FooterBoardTile(),
            ],
          ),
        ));
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage('assets/logoSmall.png')),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.search),
          onPressed: () {},
          iconSize: 16.0,
        ),
      ],
    );
  }
}
