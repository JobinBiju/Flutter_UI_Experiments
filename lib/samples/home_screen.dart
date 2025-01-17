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
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: isDark ? Color(0xff1a1a2e) : Colors.white,
        boxShadow: [kDefaultShadow],
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: isDark ? Colors.white : Colors.black,
                        ),
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
                        icon: isDark
                            ? SvgPicture.asset('assets/icons/menu_dark.svg')
                            : SvgPicture.asset('assets/icons/menu.svg'),
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 70;
                            scaleFactor = 0.78;
                            isDrawerOpen = true;
                            borderRadius = 20;
                          });
                        },
                      ),
                Text(
                  'Title101',
                  style: TextStyle(
                    fontSize: 20,
                    color: isDark ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: isDark ? Colors.white : Colors.black,
                    size: 28,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ToggleButton(
            isToggleChanged: (value) {
              setState(() {
                isDark = value;
              });
            },
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            decoration: BoxDecoration(
                color: isDark ? Color(0xff16213e) : Colors.white,
                boxShadow: [kContainerShadow],
                borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem Ipsum',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',
                  style: TextStyle(
                    color: isDark ? Colors.white : Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
