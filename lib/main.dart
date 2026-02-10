// NOTES:
// scroll : singlechildscrollview and listview
//          more components in row -> come to next line -> wrap & gridview

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';    //Datetime
import 'package:learn_app/ui_helper/util.dart';
import 'utils/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});               //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic,),

        ),
      ),
      routes: RouteHelper.myRoutes(),
      onGenerateRoute: (setting) => RouteHelper.myGenerateRoutes(setting),
      // home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  callBack() {
    print('Clicked');
  }
  @override
  Widget build(BuildContext context) {
    // ListView Builder
    var arrNames = ['Raman','Ramnaujan','Rajesh','James','John','Rahim','Ram',];
    var time = DateTime.now();
    var arrColors = [Colors.amber, Colors.grey, Colors.pink, Colors.red, Colors.orange, Colors.green, Colors.purple, Colors.purpleAccent, Colors.grey];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Samir', style: TextStyle(color: Colors.black)),
      ),


      // ListView.builder -> no seperator -> required itemextent
      // ListView.seperator -> seperator -> required seperator.builder
      // -----------------------------------------------------ListView.builder(itemBuilder: ) -> best for memory recycled
      // body: ListView.builder(itemBuilder: (context, index){         //dynamic data -> store server data in array -> array used in listview.builder -> (context, index)-array index
      // body: ListView.separated(itemBuilder: (context, index) {
      //     return Row(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Column(
      //             children: [
      //               Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500,),),
      //               Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500,),),
      //               ),
      //             ],
      //           ),
      //         ),
      //
      //         Padding(padding: const EdgeInsets.all(8.0),
      //           child: Text(arrNames[index],
      //             style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //           ),
      //         ),
      //       ],
      //     );
      //   },
      //   itemCount: arrNames.length,
      //   // itemExtent: 200,
      //   // scrollDirection:r Axis.horizontal,
      //   separatorBuilder: (context, index) {
      //     return Divider(height: 4, thickness: 2);
      //   },
      //   // reverse: true,
      // ),

      // ---------------------------------------------------ListTile in Listview builder
      // body: ListView.separated(itemBuilder: (context, index) {
      //   return ListTile(
      //     leading: Text('${index+1}'),
      //     title: Text(arrNames[index]),
      //     subtitle: Text('Number'),
      //     trailing: Icon(Icons.add),
      //   );
      // },
      //   itemCount: arrNames.length,
      //   separatorBuilder: (context, index){
      //   return Divider(height:25, thickness:1);
      //   },
      // )

      // circleAvatar(bgcolor,bgimage,text)
      // ---------------------------------------------------CircleAvatar
      // body: Center(
      //   child: CircleAvatar(
      //     // child: Text('Hello', style: TextStyle(color: Colors.black, fontSize: 21),),
      //     child: Column(
      //       children: [
      //         Container(width: 50, height: 50, child: Image.asset('assets/images/1.jpeg'),),
      //         Text('Name'),
      //       ],
      //     ),
      //     // backgroundImage: AssetImage('assets/images/pngtree.png'),
      //     backgroundColor: Colors.lightGreenAccent,
      //     // radius: 100,
      //     maxRadius: 40,
      //   ),
      // ),

      // ------------------------------------styles & themes----------------------------------mistake(on importing util.dart in assets)
      // body: Column(
      //   children: [
      //     Text('Text 1', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.red),),     //Theme.of(context -> headlineMedium of textTheme of Theme of myApp(Theme.of(context) -> myApp) & .copyWith -> add additional styles
      //     Text('Text 2', style: mTextStyle50(textColor: Colors.blue),),                                       //ui_helper/util.dart
      //     Text('Text 3', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.lightGreen),),
      //     Text('Text 4', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.red),),
      //     Text('Hello world', style: TextStyle(fontFamily: 'FontMain', fontSize: 50, fontWeight: FontWeight.w500),),   //assets/fonts
      //   ]
      // )

      // card -> elevation - to enhance ui_____________________________
      // body: Center(
      //   child: Card(
      //       elevation: 2,
      //       shadowColor: Colors.lightBlueAccent,
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("Hello world!", style: TextStyle(fontSize: 50, color: Colors.lightBlueAccent),),
      //       )),
      // ),



      // body: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Container(height: 400, width: double.infinity, child: Wrapp()),
      //         Container(height: 400, width: double.infinity, child: Textfield()),
      //         Container(height: 400, width: double.infinity, child: FormValid()),
      //         Container(height: 400, width: double.infinity, child: GesturInkwel()),
      //         Container(height: 400, width: double.infinity, child: Datepickerr()),
      //         Container(height: 400, width: double.infinity, child: Stackk()),                //Stackk() -> object
      //       ],
      //   ),
      // ),
    );
  }
}


// widget(gesturedetector&inkwell) -> clickable to any widget ->     (spread)
class GesturInkwel extends StatelessWidget {
  const GesturInkwel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

// Wrap -> widgets come to next row if overflowing in 1st row
// Wrap((dir, align,spacing,runspacing)children)
class Wrapp extends StatelessWidget {
  const Wrapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 11,          //mainAxis
      runSpacing: 11,       //crossAxis
      children: [
        Container(width: 100, height: 100, color: Colors.pinkAccent),
        Container(width: 100, height: 100, color: Colors.blue),
        Container(width: 100, height: 100, color: Colors.pink),
        Container(width: 100, height: 100, color: Colors.deepOrangeAccent),
        Container(width: 100, height: 100, color: Colors.orange),
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 100, height: 100, color: Colors.red),
      ],
    );
  }
}

// -----------------------------------------------------web(props, state)
// app.jsx
// function App(){
//   let headerInfo={
//     email:'ws@gmail.com',
//     phone:"34752375409",
//   }
//   return {
//     <Header headerInfo={headerInfo} cname={wscubeTech}>
//   <h1>Welcome to Header Section</h1>
//   </Header>
//   }
// }
// Header.jsx
// function Header({headerInfo,cname,children}){
//   return (
//   <div><h1>{headerInfo.email} {cname}</h1></div>
//   )
// }

// Props
// React props(properties) facilitate data transfer from parent to child components.
// Data flows unidirectionally, ensuring a clear direction of information in React Application.
// Props are immutable, meaning child components cannot modify the data received from parents.
// Child components access props through their function parameters.
// possible -> pass JSX as props to another components

