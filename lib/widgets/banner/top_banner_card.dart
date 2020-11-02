import 'package:cached_network_image/cached_network_image.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fmdb/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class TopBannerSearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(context.isMobile);
    return Stack(
      children: [
        TopBannerBackground(),
        Container(
          height: context.isMobile ? 220 : 400,
          alignment: Alignment.bottomCenter,
          color: Colors.blueGrey.shade900.withOpacity(0.5),
          child: Center(child: BannerText()),
        ),
      ],
    );
  }
}

class TopBannerBackground extends StatelessWidget {
  final String trailerBg =
      'https://images.unsplash.com/photo-1524985069026-dd778a71c7b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80';
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      child: CachedNetworkImage(
        imageUrl: trailerBg,
        width: context.screenWidth,
        height: context.isMobile ? 220 : 400,
        fit: BoxFit.cover,
      ),
    );
  }
}

class BannerText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome.',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black,
                  )
                ]),
          ),
          Text(
            'Millions of movies, TV shows and people to discover. Explore now.',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            textAlign: TextAlign.left,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Search for a name, tv show, person...',
              hintStyle: TextStyle(
                fontSize: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              contentPadding: EdgeInsets.all(16),
              fillColor: Colors.white,
            ),
            textInputAction: TextInputAction.search,
          ),
        ],
      ),
    );
  }
}
