import 'package:adidas_website/constants.dart';
import 'package:flutter/material.dart';

class NavList extends StatefulWidget {
  const NavList({
    Key key,
  }) : super(key: key);

  @override
  _NavListState createState() => _NavListState();
}

class _NavListState extends State<NavList> {
  final List<String> navListItem = ["Men", "Women", "Kids"];
  int currentIndex = 0;
  bool isHovered = false;
  int currentHoverIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(
          navListItem.length,
          (index) => NavItem(
            title: navListItem[index],
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            isSelected: index == currentIndex,
            isHover: index == currentHoverIndex,
            onHover: (value) {
              setState(() {
                isHovered = value;
                if (value) {
                  currentHoverIndex = index;
                  print("$index is hover");
                } else {
                  currentHoverIndex = null;
                  print("$index is not hover");
                }
              });
            },
          ),
        ),
      ],
    );
  }
}

class NavItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final bool isHover;
  final Function(bool) onHover;
  final VoidCallback onTap;

  const NavItem({
    Key key,
    @required this.title,
    this.isSelected = false,
    @required this.onTap,
    @required this.onHover,
    this.isHover = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    border() {
      if (isSelected && isHover || isSelected && !isHover) {
        return Border(
          bottom: BorderSide(
            color: Color(0xFFEBC0C1),
            width: 2,
          ),
        );
      } else if (!isSelected && isHover) {
        return Border(
          bottom: BorderSide(
            color: Color(0xFFEBC0C1).withOpacity(0.5),
            width: 2,
          ),
        );
      } else {
        return Border(
          bottom: BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        );
      }
    }

    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      onHover: onHover,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        child: Container(
          decoration: BoxDecoration(border: border()),
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: isSelected ? kGreyColor5 : kGreyColor4,
            ),
          ),
        ),
      ),
    );
  }
}
