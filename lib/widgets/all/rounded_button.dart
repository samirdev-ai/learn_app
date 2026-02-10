import 'package:flutter/material.dart';
import '../../ui_helper/util.dart';
import '../app_bar.dart';
import '../rounded_btn.dart';

class RoundedButton extends StatefulWidget {
  const RoundedButton({super.key});

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  callBack() {
    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: 'Samir',
        showBackButton: false, //no back in home screen
      ),
      // create a custom widget____________________________import 'widgets/rounded_btn';
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              child: RoundedBtn(
                btnName: 'Play',
                icon: Icon(Icons.play_arrow),
                textStyle: mTextStyle21(),
                callBack: () {
                  print('Playing');
                },
              ),
            ),
            Container(height: 11),
            Container(
              width: 100,
              child: RoundedBtn(
                btnName: 'Press',
                bgColor: Colors.orange,
                textStyle: mTextStyle21(),
                callBack: () {
                  print('Pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
