import 'package:adidas_website/constants.dart';
import 'package:flutter/material.dart';

class RightBar extends StatelessWidget {
  const RightBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      // color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Image.asset(
              "assets/icons/facebook.png",
              height: 20,
            ),
            onPressed: () {},
          ),
          const SizedBox(height: kDefaultPadding / 2),
          IconButton(
            icon: Image.asset(
              "assets/icons/twitter.png",
              height: 20,
            ),
            onPressed: () {},
          ),
          const SizedBox(height: kDefaultPadding / 2),
          IconButton(
            icon: Image.asset(
              "assets/icons/instagram.png",
              height: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
