import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';
import 'package:flutter_netflix_responsive_ui/widgets/responsive.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  final double scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 24.0,
        ),
        color: Colors.black
            .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
        child: Responsive(
          mobile: _CustomAppBarMobile(),
          desktop: _CustomAppBarDesktop(),
        ));
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBurButton(title: 'TV Shows', onTap: () {}),
                _AppBurButton(title: 'Movies', onTap: () {}),
                _AppBurButton(title: 'My List', onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBurButton(title: 'Home', onTap: () {}),
                _AppBurButton(title: 'TV Shows', onTap: () {}),
                _AppBurButton(title: 'Movies', onTap: () {}),
                _AppBurButton(title: 'My List', onTap: () {}),
                _AppBurButton(title: 'Latest', onTap: () {}),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  iconSize: 28.0,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                _AppBurButton(title: 'KIDS', onTap: () {}),
                _AppBurButton(title: 'DVD', onTap: () {}),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.card_giftcard),
                  iconSize: 28.0,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                  iconSize: 28.0,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBurButton extends StatelessWidget {
  const _AppBurButton({
    Key key,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
