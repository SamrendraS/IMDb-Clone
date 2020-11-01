import 'package:flutter/material.dart';

import 'package:fmdb/widgets/leaderboard/leaderboard_tile.dart';
import 'package:fmdb/widgets/banner/top_banner_card.dart';
import 'package:fmdb/widgets/footer/footerboard_tile.dart';
import 'package:fmdb/widgets/appbar_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBannerSearchCard(),
            LeaderBoardTile(),
            FooterBoardTile(),
          ],
        ),
      ),
    );
  }
}
