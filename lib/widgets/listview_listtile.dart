// Spread Coding
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';

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
  List<Map<String, dynamic>> contacts = [
    {'name': 'Ram',    'mobno': '9800000001', 'unread': 2},
    {'name': 'Shyam',  'mobno': '9800000002', 'unread': 0},
    {'name': 'Hari',   'mobno': '9800000003', 'unread': 5},
    {'name': 'Sita',   'mobno': '9800000004', 'unread': 1},
    {'name': 'Gita',   'mobno': '9800000005', 'unread': 3},
    {'name': 'Rita',   'mobno': '9800000006', 'unread': 0},
    {'name': 'Mohan',  'mobno': '9800000007', 'unread': 4},
    {'name': 'Sohan',  'mobno': '9800000008', 'unread': 6},
    {'name': 'Kiran',  'mobno': '9800000009', 'unread': 0},
    {'name': 'Nabin',  'mobno': '9800000010', 'unread': 8},
    {'name': 'Rita',   'mobno': '9800000006', 'unread': 0},
    {'name': 'Mohan',  'mobno': '9800000007', 'unread': 4},
    {'name': 'Sohan',  'mobno': '9800000008', 'unread': 6},
    {'name': 'Kiran',  'mobno': '9800000009', 'unread': 0},
    {'name': 'Nabin',  'mobno': '9800000010', 'unread': 8},

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: 'Samir',
        showBackButton: false, //no back in home screen
      ),
      body: ListView(
        padding: EdgeInsets.all(11),
        // scrollDirection: Axis.horizontal,
        children:
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

      // _______________________________________array.map ->
      // num.map((item) {                             // without[]
      //   return Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(11),
      //       color: Colors.deepOrange
      //     ),
      //     margin: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
      //     width: 100, height: 20,
      //     alignment: Alignment.center,
      //     child: Text(item.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
      //   );
      // }).toList()

        // ________________________________________________ContactsApp
        contacts.map((item) {
          return ListTile(
            leading: Icon(Icons.account_circle, color: Colors.deepPurple[300], size: 40,),
            title: Text(item['name'].toString()),
            subtitle: Text(item['mobno'].toString()),
            trailing: CircleAvatar(
                radius: 18,
                child: Text(item['unread'].toString())),
          );
        }).toList()

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

      ),
    );
  }
}
