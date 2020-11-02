import 'package:flutter/material.dart';
import 'package:fmdb/widgets/movie_card_item.dart';
import 'package:fmdb/models/trending_movie.dart';
import 'package:fmdb/screens/detail_screen.dart';

import 'package:fmdb/utils/utility.dart';
import 'package:fmdb/services/repository.dart';
import 'package:fmdb/services/api_service.dart';

class TrendingCardList extends StatefulWidget {
  @override
  _TrendingCardListState createState() => _TrendingCardListState();
}

class _TrendingCardListState extends State<TrendingCardList> {
  Future<List<TrendingMovie>> _future;

  @override
  void initState() {
    _future = Repository(APIService()).fetchTrendingMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: FutureBuilder<List<TrendingMovie>>(
        future: _future,
        builder: (BuildContext context,
            AsyncSnapshot<List<TrendingMovie>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final movie = snapshot.data[index];
                    return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(movie: movie))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MovieCardItem(
                              imgUrl: getPosterImage(movie.posterPath),
                              height: 200,
                              aspectRatio: 2 / 3,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  movie.originalTitle,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${movie.releaseDate}',
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
