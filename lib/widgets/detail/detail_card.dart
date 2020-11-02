import 'package:flutter/material.dart';
import 'package:fmdb/models/trending_movie.dart';
import 'package:fmdb/utils/utility.dart';
import 'package:fmdb/widgets/detail/detail_description.dart';
import 'package:fmdb/widgets/detail/detail_image.dart';

class DetailCard extends StatelessWidget {
  final TrendingMovie movie;

  const DetailCard({Key key, @required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(getPosterImage(movie.backdropPath)),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              color: Colors.blue[800].withOpacity(0.9),
              child: Stack(
                children: [
                  if (constraints.biggest.width > 700)
                    Row(
                      children: [
                        Center(
                            child: DetailImage(
                          img: getPosterImage(movie.posterPath),
                        )),
                        Expanded(
                            child: DetailDescription(
                          movie: movie,
                        )),
                      ],
                    ),
                  if (constraints.biggest.width <= 700)
                    Column(
                      children: [
                        DetailImage(
                          img: getPosterImage(movie.posterPath),
                        ),
                        DetailDescription(movie: movie),
                      ],
                    ),
                ],
              ),
            );
          },
        ));
  }
}
