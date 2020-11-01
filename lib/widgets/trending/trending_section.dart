import 'package:flutter/material.dart';
import 'package:fmdb/widgets/trending/trending_card_list.dart';

class TrendingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Trending Movies',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TrendingCardList(),
        ],
      ),
    );
  }
}
