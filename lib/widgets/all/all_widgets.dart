
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';      //font_awesome package -> FaIcon
import 'package:learn_app/widgets/app_bar.dart';
import '../../utils/route_helper.dart';

class Widg extends StatefulWidget {
  final String name;
  const Widg({super.key, required this.name});

  @override
  State<Widg> createState() => _WidgState();
}

class _WidgState extends State<Widg> {
  List list = [1,2,3,4,5,6,7,8,9,10];
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: 'Widgets',
        showBackButton: false, //no back in home screen
      ),

      // // _____________________________________RichText + TextSpan -> multiple text line in a same line
      // body: RichText(text: TextSpan(style: TextStyle(color: Colors.grey, fontSize: 16),
      //   children: <TextSpan>[
      //     TextSpan(text: 'Hello  ',),
      //     TextSpan(text: 'World! ', style: TextStyle(fontSize: 34, color: Colors.blue, fontWeight: FontWeight.bold)),
      //     TextSpan(text: 'Welcome to  '),
      //     TextSpan(text: 'Flutter! ', style: TextStyle(fontSize: 43, color: Colors.pink, fontWeight: FontWeight.bold, fontFamily: 'FontMain')),
      //
      //   ]
      // )),

      // _______________________________________font Awesome Icon
      // body: Center(
      //   child: SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Icon(Icons.lock, color: Colors.deepPurple, size: 80,),
      //         FaIcon(FontAwesomeIcons.amazon, size: 80, color: Colors.deepPurple,),
      //         ElevatedButton(onPressed: () {
      //           Navigator.pushNamed(context, RouteHelper.splittinginwidget, arguments: 'Samir');
      //         }, child: Text('Go to Splitting app in widget')),
      //         ElevatedButton(onPressed: () {
      //           Navigator.pushNamed(context, RouteHelper.home, arguments: 'Samir');
      //         }, child: Text('Go to Home Screen')),
      //       ],
      //     ),
      //   ),
      // ),

      //_______________________________________Positioned -> space from top, left, right, bottom
      // body: Container(width: 300, height: 200, color: Colors.blueGrey,
      //   child: Stack(children: [
      //     Positioned(top: 21, right: 21,
      //       child: Container(height: 100, width: 100, color: Colors.white,
      //       ),
      //     )
      //   ],),
      // ),

      // // _______________________________ConstraintBox(max/min height, max/min width)
      // body: ConstrainedBox(constraints: BoxConstraints(
      //   maxWidth: 300,
      //   minWidth: 250,
      //   minHeight: 100,
      //   maxHeight: 200,
      // ),
      // // child: Text('D/EGL_emulation( 8815): app_time_stats: avg=57.26ms min=7.', style: TextStyle(fontSize: 31),
      // // overflow: TextOverflow.clip,
      // // ),
      //   child: ElevatedButton(onPressed: (){}, child: Text('click')),
      // ),

      // _____________________________________List wheel scroll view
      body: Center(
        child: ListWheelScrollView(itemExtent: 200, children: list.map((value){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(child: Text('$value',style: TextStyle(fontSize: 21, color: Colors.white),),),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(21)
            ),
            width: double.infinity,
            ),
          );
        }).toList(),
        ),
      ),
    );
  }
}

// Widget / Package    -> Use When You Want...                       -> Pros                        -> Cons / Limitations                        -> Best For
// RichText + TextSpan -> Full control, inline styles, links, gestures -> Built-in, no dependencies -> Manual (lots of nesting for complex text) -> Most apps, custom formatting
// Text.rich()         -> Shorter syntax than RichText                -> Cleaner code               -> Same as RichText (manual)                -> Simple rich text
// SelectableText.rich() -> Selectable + copyable rich text          -> Users can copy parts         -> No gestures on spans                     -> Notes, code snippets

// if Container haven't height,width -> it takes body height,width
// it container's child has height,width -> it take child height,width



