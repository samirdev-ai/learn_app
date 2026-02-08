// cube
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowColumnScroll extends StatefulWidget {
  const RowColumnScroll({super.key});

  @override
  State<RowColumnScroll> createState() => _RowColumnScrollState();
}

class _RowColumnScrollState extends State<RowColumnScroll> {
  List<int> num = [1, 2, 6, 7, 56, 453, 43, 7676, 545];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Samir', style: TextStyle(color: Colors.black)),
        toolbarHeight: 50,
        backgroundColor: Colors.lightBlueAccent,
      ),

      // ---------------------------------rows/ column
      body: Container(
        width: 300,
        // height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text('A', style: TextStyle(fontSize: 25)),
              Text('B', style: TextStyle(fontSize: 25)),
              Column(children: [
                ElevatedButton(onPressed: (){
                  print('samir');
                }, child: Text("click")),
                ElevatedButton(onPressed: (){
                  print('samir');
                }, child: Text("click"))
              ],
              ),
              Text('C', style: TextStyle(fontSize: 25)),
              Text('d', style: TextStyle(fontSize: 25)),
              Text('E', style: TextStyle(fontSize: 25)),
              ElevatedButton(onPressed: (){
                print('samir');
              }, child: Text("click"))
            ],
            ),
            Text('A', style: TextStyle(fontSize: 25)),
            Text('B', style: TextStyle(fontSize: 25)),
            Text('C', style: TextStyle(fontSize: 25)),
            Text('d', style: TextStyle(fontSize: 25)),
            Text('E', style: TextStyle(fontSize: 25)),
            ElevatedButton(onPressed: (){
              print('samir');
            }, child: Text("click"))
          ],
        ),
      )

      // -----------------------------------------SingleChildScrollView(column(scroll(3 row),5 container)
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         SingleChildScrollView(
      //           scrollDirection: Axis.horizontal,
      //           child: Row(
      //             children: [
      //               Container(
      //                 margin: const EdgeInsets.only(bottom: 10),
      //                 height: 200,
      //                 width: 200,
      //                 child: Text('Samir'),
      //                 color: Colors.cyanAccent,
      //               ),
      //               Container(
      //                 margin: const EdgeInsets.only(bottom: 10),
      //                 height: 200,
      //                 width: 200,
      //                 child: Text('Samir'),
      //                 color: Colors.lightBlue,
      //               ),
      //               Container(
      //                 margin: const EdgeInsets.only(bottom: 10),
      //                 height: 200,
      //                 width: 200,
      //                 child: Text('Samir'),
      //                 color: Colors.lightGreen,
      //               ),
      //             ],
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           width: 500,
      //           child: Text('Samir'),
      //           color: Colors.cyanAccent,
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           width: 500,
      //           child: Text('Samir'),
      //           color: Colors.lightBlue,
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           width: 500,
      //           child: Text('Samir'),
      //           color: Colors.lightGreen,
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           width: 500,
      //           child: Text('Samir'),
      //           color: Colors.amber,
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           width: 600,
      //           child: Text('Samir'),
      //           color: Colors.red,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),


    );
  }
}
