import 'package:flutter/material.dart';
import 'package:fmdb/widgets/trailer/trailer_content.dart';

class TrailerSection extends StatelessWidget {
  final String trailerBg =
      "https://images.unsplash.com/photo-1568191009535-7d8b407d389a?ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.blueGrey.withOpacity(0.4), BlendMode.lighten),
                  fit: BoxFit.cover,
                  image: NetworkImage(trailerBg))),
        ),
        TrailerContent(),
      ],
    );
  }
}
