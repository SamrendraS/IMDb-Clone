import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fmdb/models/ratings.dart';

class RatingWidget extends StatelessWidget {
  final Ratings ratings;
  RatingWidget(this.ratings);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LinearPercentIndicator(
          width: 100.0,
          animation: true,
          lineHeight: 8.0,
          animationDuration: 2500,
          percent: ratings.totalEditPercentage,
          trailing: Text(
            ratings.totalEditValue,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          linearStrokeCap: LinearStrokeCap.roundAll,
          linearGradient: LinearGradient(
            colors: [
              const Color(0XFF2D9AD),
              const Color(0xFFB3FBCC),
            ],
            begin: Alignment.centerRight,
          ),
          backgroundColor: Colors.white,
        ),
        LinearPercentIndicator(
          width: 100.0,
          animation: true,
          lineHeight: 8.0,
          animationDuration: 2500,
          percent: ratings.totalEditPercentage,
          trailing: Text(
            ratings.weeklyEditValue,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          linearStrokeCap: LinearStrokeCap.roundAll,
          linearGradient: LinearGradient(
            colors: [
              const Color(0xffdf4f65),
              const Color(0xfffcbd6f),
            ],
            begin: Alignment.centerRight,
          ),
          backgroundColor: Colors.white,
        )
      ],
    );
  }
}
