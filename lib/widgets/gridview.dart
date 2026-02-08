import 'package:flutter/material.dart';

// ListView - GridView - default scroll
// .count  -> fix row -> dont use mostly
// .extent -> fix widget size -> mostly use
class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  var arrColors = [Colors.amber, Colors.grey, Colors.pink, Colors.red, Colors.orange, Colors.green, Colors.purple, Colors.purpleAccent, Colors.grey,
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Samir', style: TextStyle(color: Colors.black)),
      ),
      // _________________________________________________
      // body: Column(
      //   children: [
      //     // Container(
      //     //   height: 300,
      //     //   child: GridView.count(
      //     //     crossAxisCount: 4,
      //     //     //required para -> always for column -> 4 box in row
      //     //     crossAxisSpacing: 11,
      //     //     //width spacing
      //     //     mainAxisSpacing: 11,
      //     //     //height spacing
      //     //     children: [
      //     //       Container(color: arrColors[0]),
      //     //       Container(color: arrColors[1]),
      //     //       Container(color: arrColors[2]),
      //     //       Container(color: arrColors[3]),
      //     //       Container(color: arrColors[4]),
      //     //       Container(color: arrColors[5]),
      //     //       Container(color: arrColors[6]),
      //     //       Container(color: arrColors[7]),
      //     //       Container(color: arrColors[8]),
      //     //     ],
      //     //   ),
      //     // ),
      //     Container(height: 10),
      //     Container(
      //       height: 300,
      //       child: GridView.extent(
      //         maxCrossAxisExtent: 100,
      //         crossAxisSpacing: 11,
      //         mainAxisSpacing: 11,
      //         children: [
      //           Container(color: arrColors[0]),
      //           Container(color: arrColors[1]),
      //           Container(color: arrColors[2]),
      //           Container(color: arrColors[3]),
      //           Container(color: arrColors[4]),
      //           Container(color: arrColors[5]),
      //           Container(color: arrColors[6]),
      //           Container(color: arrColors[7]),
      //           Container(color: arrColors[8]),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      // _________________________________________________________
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(       //Controls how items are laid out (columns, spacing, aspect ratio)
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 12,
      //     mainAxisSpacing: 12,
      //     childAspectRatio: 0.7,
      //   ),
      //   itemBuilder: (context, index) {             //itembuilder -> Function that builds each grid item (called lazily)
      //     return Container(color: arrColors[index]);
      //   },
      //   itemCount: arrColors.length,
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(       //Controls how items are laid out (columns, spacing, aspect ratio)
          maxCrossAxisExtent: 80,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {             //itembuilder -> Function that builds each grid item (called lazily)
          return Container(color: arrColors[index]);
        },
        itemCount: arrColors.length,
      ),

    );
  }
}

// GridView.builder -> repetation task
// SliverGridDelegateWith(MaxCrossAxisExtent/FixedCrossAxisCount) -> maxCrossAxisExtent/crossAxisCount