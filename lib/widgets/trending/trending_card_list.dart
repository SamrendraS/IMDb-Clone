import 'package:flutter/material.dart';
import 'package:fmdb/widgets/movie_card_item.dart';
import 'package:faker/faker.dart';

class TrendingCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: ListView.builder(
        itemCount: 25,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, count) => Column(
          children: [
            MovieCardItem(
              imgUrl: "https://www.stevensegallery.com/640/360",
              height: 200,
              aspectRatio: 4.0 / 6.0,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    faker.person.firstName(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      '${faker.date.month().toString()} ${faker.date.year().toString()}')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
