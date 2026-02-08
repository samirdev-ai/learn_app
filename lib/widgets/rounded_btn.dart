import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  // const RoundedButton({super.key});

  final String btnName;
  final Icon? icon;
  final Color bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  RoundedButton({required this.btnName, this.icon, this.bgColor = Colors.blue, this.textStyle, this.callBack,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callBack!();
        },
        child: icon!=null ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [icon!, Container(width: 11,), Text(btnName, style: textStyle,)],
        ): Text(btnName, style: textStyle,),
        style: ElevatedButton.styleFrom(shadowColor: bgColor,
            foregroundColor: bgColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomLeft: Radius.circular(16),
                )
            )
        )
    );
  }
}
