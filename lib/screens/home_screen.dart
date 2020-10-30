import 'package:flutter/material.dart';
import 'package:fmdb/widgets/leaderboard/leaderboard_tile.dart';
import 'package:fmdb/widgets/footer/footerboard_tile.dart';

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
      children: [
        // _firstPart,
        // _secondPart,
      ],
    );
  }
}
