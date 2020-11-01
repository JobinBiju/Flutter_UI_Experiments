import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_samples/constants.dart';
import 'package:ui_samples/samples/toggle_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  double borderRadius = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.white,
        boxShadow: [kDefaultShadow],
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            isDrawerOpen = false;
                            borderRadius = 0;
                          });
                        },
                      )
                    : IconButton(
                        icon: SvgPicture.asset('assets/icons/menu.svg'),
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 110;
                            scaleFactor = 0.7;
                            isDrawerOpen = true;
                            borderRadius = 20;
                          });
                        }),
                Text(
                  'Title101',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          ToggleButton(),
        ],
      ),
    );
  }
}
