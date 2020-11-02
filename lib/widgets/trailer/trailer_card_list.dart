import 'package:flutter/material.dart';
import 'package:fmdb/widgets/movie_card_item.dart';
import 'package:fmdb/models/trending_movie.dart';
import 'package:fmdb/utils/utility.dart';

import 'package:fmdb/services/repository.dart';
import 'package:fmdb/services/api_service.dart';

class TrailerCardList extends StatefulWidget {
  @override
  _TrailerCardListState createState() => _TrailerCardListState();
}

class _TrailerCardListState extends State<TrailerCardList> {
  Future<List<TrendingMovie>> _future;

  void initState() {
    _future = Repository(APIService()).fetchDiscoverMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
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
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: [
                            MovieCardItem(
                              imgUrl: getPosterImage(movie.posterPath),
                              height: 170,
                              stackChild: Center(
                                child: SizedBox(
                                  height: 40,
                                  child: Image.asset('assets/play.png'),
                                  // child: Image.asset("assets/play.png"),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              movie.originalTitle,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              movie.rating?.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
            }

            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
