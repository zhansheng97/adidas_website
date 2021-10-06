import 'package:adidas_website/screens/main/components/color_list_dot.dart';
import 'package:adidas_website/screens/main/components/socal_icon.dart';
import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  const LeftBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      // color: Colors.yellow,
      child: Column(
        children: [
          SocalIcon(),
          Spacer(),
          ColorListDot(),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
