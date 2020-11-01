import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_samples/samples/top_app_bar_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Duration dur;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    Timer(
      Duration(milliseconds: 8200),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => TopBar(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Lottie.asset(
                'assets/lottie/work-from-home.json',
                controller: _controller,
                repeat: true,
                onLoaded: (composition) {
                  _controller..duration = composition.duration;
                },
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Taskly',
              style: TextStyle(
                fontFamily: 'Noto Sans JP',
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
                color: Color(0xff322f3d),
              ),
            )
          ],
        ),
      ),
    );
  }
}
