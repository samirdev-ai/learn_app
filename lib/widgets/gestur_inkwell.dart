
// widget(gesturedetector&inkwell) -> clickable to any widget ->     (spread)

import 'package:flutter/material.dart';
import 'app_bar.dart';

class GesturInkwel extends StatelessWidget {
  const GesturInkwel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: 'Samir',
        showBackButton: false, //no back in home screen
      ),
      body: Column(
        children: [
          GestureDetector(                 //no effect more properties
            onTap: (){                     //onlong/doubletap
              print('Clicked --------------------->');
            },
            child: Text('Click!', style: TextStyle(fontSize: 30, color: Colors.blueAccent),),
          ),
          InkWell(                         //effect but less properties
            onTap: (){                     //onlong/doubletap
              print('Clicked ----------------------->');
            },
            child: Text('Click!', style: TextStyle(fontSize: 30, color: Colors.blueAccent),),
          )
        ],
      ),
    );
  }
}