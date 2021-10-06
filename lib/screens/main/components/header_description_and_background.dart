import 'package:adidas_website/responsive.dart';
import 'package:adidas_website/screens/main/components/header_description.dart';
import 'package:flutter/material.dart';

class HeaderDescriptionAndBackground extends StatelessWidget {
  const HeaderDescriptionAndBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // print(constraints.maxHeight);
        // print(constraints.maxWidth);
        return Stack(
          children: [
            Container(
              color: Color(0xFFFFFDED),
            ),
            Positioned(
              bottom: 20,
              left: 100,
              child: Image.asset(
                "assets/icons/adidas.png",
                height: 100,
                color: Color(0xFFD4D4D4),
              ),
            ),
            Positioned(
              right: -15,
              top: constraints.maxHeight / 2 - 310 / 2,
              child: RotatedBox(
                quarterTurns: 1,
                child: Container(
                  //container is to check to width of the box, so can center it
                  // color: Colors.blue,
                  width: 310,
                  child: Text(
                    "adidas",
                    style: TextStyle(
                      color: Color(0xFFE0DED1),
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              Padding(
                padding: const EdgeInsets.only(left: 100.0, right: 40),
                child: HeaderDescription(),
              ),
            if (!Responsive.isDesktop(context))
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 40),
                child: HeaderDescription(),
              ),
          ],
        );
      },
    );
  }
}
