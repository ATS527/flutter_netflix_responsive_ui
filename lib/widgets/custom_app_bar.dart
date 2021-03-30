import 'package:flutter/material.dart';
import '../assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({Key key, this.scrollOffset = 0.0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      color:
          Colors.red.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
          child: Row(
        children: <Widget>[
          Image.asset(Assets.netflixLogo0),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _AppBarButton(
                  title: 'TV Shows',
                  ontap: () => print('TV Shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  ontap: () => print('Movies'),
                ),
                _AppBarButton(
                  title: 'My List',
                  ontap: () => print('My List'),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function ontap;

  const _AppBarButton({Key key, this.title, this.ontap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
