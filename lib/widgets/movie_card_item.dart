import 'package:flutter/material.dart';

class MovieCardItem extends StatelessWidget {
  final double aspectRatio;
  final double height;
  final Widget stackChild;
  final String imgUrl;

  MovieCardItem({this.aspectRatio, this.height, this.stackChild, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 168,
      padding: EdgeInsets.only(right: 24),
      child: AspectRatio(
        aspectRatio: aspectRatio ?? 300 / 168,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imgUrl)),
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            stackChild ?? SizedBox()
          ],
        ),
      ),
    );
  }
}
