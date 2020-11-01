import 'package:flutter/material.dart';
import 'package:ui_samples/constants.dart';

import 'drawer_screen.dart';
import 'home_screen.dart';

class TopBar extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: kBackgroundColor,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   leading: IconButton(
        //     icon: SvgPicture.asset('assets/icons/menu.svg'),
        //     onPressed: () => _scaffoldKey.currentState.openDrawer(),
        //   ),
        //   actions: [
        //     Padding(
        //       padding: EdgeInsets.only(right: 8.0),
        //       child: IconButton(
        //         icon: Icon(
        //           Icons.search,
        //           color: Colors.black,
        //         ),
        //         onPressed: null,
        //       ),
        //     ),
        //   ],
        // ),
        body: Stack(
          children: [
            DrawerScreen(),
            HomeScreen(),
          ],
        ));
  }
}
