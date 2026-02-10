import 'package:flutter/material.dart';
import 'package:learn_app/widgets/app_bar.dart';

// Expanded / Flexible / Flex /
class Expandedflex extends StatelessWidget {
  const Expandedflex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CommonAppBar(title: 'Samir',
          showBackButton: false, //no back in home screen
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Expanded(flex: 2, child: Container(height:100, width: 100, color: Colors.red)),    //flex -> divide child in ratio in rows and column
            // Expanded(flex: 4, child: Container(height:100, width: 100, color: Colors.orange)),   //Expanded -> Widgets cover remaining space
            // Expanded(flex: 3, child: Container(height:100, width: 100, color: Colors.grey)),
            Spacer(flex: 4,),
            // Expanded(flex: 1, child: Container(height:100, width: 100, color: Colors.limeAccent)),
            // Flexible(flex: 3, child: Container(height:500, width: 500, color: Colors.grey)),
            Expanded(child: Container(width:100, height: 100,color: Colors.pinkAccent)),           //Expanded not obey height
            Flexible(child: Container(width:100, height: 100, color: Colors.red)),                 //flexible obey height
          ],
        )
    );
  }
}

//Expanded -> Widgets cover remaining space
//flex -> divide child in ratio in rows and column

// NOTES

// Flexible vs Expanded
// no cover remained space vs cover remaining space
// - both are flexible
// - both -> default flex 1
// Expanded fear from Flexible

// Margin&Padding
// Container(margin, padding)