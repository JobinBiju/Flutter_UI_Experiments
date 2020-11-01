import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_samples/constants.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Color(0xff0d7377),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/Jobin_Biju.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Jobin Biju",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 5,
            ),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.user,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Account',
                  style: kMenuTextStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 5,
            ),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.cashRegister,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Transactions',
                  style: kMenuTextStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 5,
            ),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.github,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'GitHub Profile',
                  style: kMenuTextStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 5,
            ),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.list,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'To-do List',
                  style: kMenuTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
