import 'package:adidas_website/constants.dart';
import 'package:adidas_website/screens/main/components/color_options.dart';
import 'package:flutter/material.dart';

class HeaderDescription extends StatelessWidget {
  const HeaderDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Container(
        // color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Originals",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4F504D),
              ),
            ),
            Text(
              "EQT support ADV",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: kGreyColor5, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: kDefaultPadding * 1.5),
            Text(
              "True to Equipment's innovative spirit, these streetwear shoes feature the latest in comfort and style. They have a flexible and supportive knit upper with tumbled leather accents for a soft worn-in feel. Lightweight cushioning provides all-day-comfort",
              style: TextStyle(
                height: 1.3,
                fontWeight: FontWeight.w500,
                color: kGreyColor5.withOpacity(0.9),
              ),
            ),
            const SizedBox(height: kDefaultPadding * 1.5),
            Text(
              "Available in two colors",
              style: TextStyle(
                height: 1.3,
                fontWeight: FontWeight.w500,
                color: kGreyColor5.withOpacity(0.9),
              ),
            ),
            const SizedBox(height: kDefaultPadding / 2),
            ColorOptions(),
            const SizedBox(height: kDefaultPadding / 2),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2,
                vertical: 13,
              ),
              color: Color(0xFF282828),
              child: Text(
                "Add To Cart",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
