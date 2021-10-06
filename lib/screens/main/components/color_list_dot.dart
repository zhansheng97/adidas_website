import 'package:adidas_website/constants.dart';
import 'package:flutter/material.dart';

class ColorListDot extends StatelessWidget {
  const ColorListDot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          colorList.length,
          (index) => Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorList[index],
            ),
          ),
        ),
      ],
    );
  }
}
