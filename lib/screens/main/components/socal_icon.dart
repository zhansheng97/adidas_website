import 'package:flutter/material.dart';

class SocalIcon extends StatelessWidget {
  const SocalIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Image.asset(
            "assets/icons/shopping-cart.png",
            height: 20,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            "assets/icons/search.png",
            height: 20,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            "assets/icons/user.png",
            height: 20,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
