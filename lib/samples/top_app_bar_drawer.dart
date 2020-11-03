import 'package:flutter/material.dart';
import 'package:ui_samples/constants.dart';

import 'drawer_screen.dart';
import 'home_screen.dart';

class TopBar extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              DrawerScreen(),
              HomeScreen(),
            ],
          )),
    );
  }
}
