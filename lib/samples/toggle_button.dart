import 'package:flutter/material.dart';

typedef MyBoolCallback(bool);

class ToggleButton extends StatefulWidget {
  final MyBoolCallback isToggleChanged;
  ToggleButton({this.isToggleChanged});
  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isToggled = !isToggled;
        });
        widget.isToggleChanged(isToggled);
      },
      child: Container(
          height: 55 * 80 / 100,
          width: 130 * 80 / 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(100 * 80 / 100),
          ),
          child: Stack(
            children: [
              AnimatedCrossFade(
                firstChild: ClipRRect(
                  borderRadius: BorderRadius.circular(100 * 80 / 100),
                  child: Image(
                    image: AssetImage('assets/images/day.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                secondChild: ClipRRect(
                  borderRadius: BorderRadius.circular(100 * 80 / 100),
                  child: Image(
                    image: AssetImage('assets/images/night.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                crossFadeState: isToggled
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: Duration(
                  milliseconds: 500,
                ),
              ),
              AnimatedAlign(
                duration: Duration(
                  milliseconds: 400,
                ),
                alignment:
                    isToggled ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  height: 45 * 80 / 100,
                  width: 45 * 80 / 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
