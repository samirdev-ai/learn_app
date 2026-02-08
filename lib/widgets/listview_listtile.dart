// Spread Coding
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// NOTES
//Listview -> singlechildScroll(column) -> uses(long/dynamic lists,feed,menu) -> lazy loading
//ListTile -> row inside Listview
// ListView(pad, scroldir)

class Listviewlisttile extends StatefulWidget {
  const Listviewlisttile({super.key});

  @override
  State<Listviewlisttile> createState() => _ListviewlisttileState();
}

class _ListviewlisttileState extends State<Listviewlisttile> {
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
      // body: ListView(
      //   padding: EdgeInsets.all(11),
      //   // scrollDirection: Axis.horizontal,
      //   children: [
      // 1st way ______________________________
      // for(int i=1; i<=10; i++)
      //   Container(
      //     margin: EdgeInsets.symmetric(horizontal: 1),
      //     color: Colors.deepOrange,
      //     width: 100,
      //     alignment: Alignment.center,
      //     child: Text(i.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
      //   ),

      // 2nd way_________________________________
      // for (int i in num)
      //   Container(
      //     margin: EdgeInsets.symmetric(vertical: 4),
      //     color: Colors.deepOrange,
      //     height: 100,
      //     alignment: Alignment.center,
      //     child: Text(
      //       i.toString(),
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),

      // 3rd way_______________________________________
      // num.map((item) {
      //   return Container(
      //     margin: EdgeInsets.symmetric(horizontal: 1),
      //     color: Colors.deepOrange,
      //     width: 100,
      //     alignment: Alignment.center,
      //     child: Text(item.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
      //   );
      // }).toList()

      // -------------------------------------------ListTile -> single row(leading,title,subtitle,trailing) -> (uses)list of contacts
      // for(int i=1; i<=50; i++)
      // ListTile(
      //   title: Text('This is Title'),
      //   subtitle: Text('This is subtitle'),
      //   leading: CircleAvatar(
      //     backgroundImage: NetworkImage('https://www.istockphoto.com/photo/computer-hacker-with-device-screen-gm1631047551-532490798?searchscope=image%2Cfilm'),
      //   ),                 //start(position) in a row
      //   trailing: Icon(Icons.done),              //end
      // )
      //   ],
      // ),
    );
  }
}
