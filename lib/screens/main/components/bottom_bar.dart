import 'package:adidas_website/constants.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      //check for the whole size
      // color: Colors.orange,
      child: Stack(
        children: [
          //CHeck inner stack size
          // Container(color: Colors.redAccent),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "01",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                const SizedBox(width: kDefaultPadding),
                Container(
                  height: 4,
                  width: 20,
                  color: kGreyColor4,
                ),
                Container(
                  height: 1.5,
                  width: 40,
                  color: kGreyColor3,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                  color: kGreyColor4,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: kGreyColor4,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "SEAKERS",
                  style: TextStyle(
                    color: Color(0xFF585858),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 3,
                        width: 3,
                        decoration: BoxDecoration(
                          color: Color(0xFF585858),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                        color: Color(0xFF585858),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: kDefaultPadding * 1.5),
                Image.asset("assets/icons/adidas.png", height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
