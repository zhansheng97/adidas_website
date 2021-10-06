import 'package:adidas_website/constants.dart';
import 'package:flutter/material.dart';

class ColorOptions extends StatefulWidget {
  const ColorOptions({
    Key key,
  }) : super(key: key);

  @override
  _ColorOptionsState createState() => _ColorOptionsState();
}

class _ColorOptionsState extends State<ColorOptions> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ColorOption(
          title: "Black",
          onTap: () {
            print("$selectedIndex");

            setState(() {
              selectedIndex = 0;
            });
          },
          isSelected: selectedIndex == 0,
          color: kGreyColor5,
        ),
        const SizedBox(width: kDefaultPadding),
        ColorOption(
          title: "White",
          onTap: () {
            print("$selectedIndex");
            setState(() {
              selectedIndex = 1;
            });
          },
          isSelected: selectedIndex == 1,
          color: kGreyColor5,
        ),
      ],
    );
  }
}

class ColorOption extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final String title;
  final VoidCallback onTap;

  const ColorOption({
    Key key,
    @required this.color,
    this.isSelected = false,
    @required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Container(
            padding: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              // color:
              //     Colors.red,
              border: Border.all(color: kGreyColor5),
              shape: BoxShape.circle,
            ),
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: isSelected ? color : Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: kGreyColor5)),
            ),
          ),
        ),
        const SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
              color: kGreyColor5.withOpacity(0.8), fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
