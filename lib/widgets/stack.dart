// overlay one widget into another widget
// Stack(positioneds) -> (uses)give position to widget

import 'package:flutter/material.dart';

import 'app_bar.dart';

class Stackk extends StatelessWidget {
  const Stackk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: 'Samir',
        showBackButton: false, //no back in home screen
      ),
      body: Container(
        padding: EdgeInsets.all(11),
        width: 300,
        height: 300,
        color: Colors.orange,
        child: Stack(
          children: [
            Positioned(left: 21,right: 21,
              child: Container(width: 200, height: 200, color: Colors.blueGrey),
            ),
            Positioned(left: 30, right: 30,
              child: Container(width: 160, height: 160, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}