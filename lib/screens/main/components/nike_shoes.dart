import 'package:adidas_website/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class NikeShoes extends StatelessWidget {
  const NikeShoes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kGreyColor1,
        ),
        Positioned(
          top: 50,
          bottom: 50,
          left: 60,
          right: 30,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(math.pi / 7)..rotateY(math.pi),
            child: Container(
              //This container is for checking the size
              // color: Colors.red,
              child: Image.asset(
                "assets/images/adidas_shoes.png",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
