// setState();

import 'package:flutter/material.dart';
import '../app_bar.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var count = 0;
  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();
  TextEditingController no3Controller = TextEditingController();
  TextEditingController no4Controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: 'Samir',
        showBackButton: false, //no back in home screen
      ),

      // _______________counterApp
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Text('COUNT : $count', style: TextStyle(fontSize: 60, fontFamily: "FontMain")),
            SizedBox(height: 200,),
            ElevatedButton(onPressed: (){
              setState(() {
                count++;
                print(count);
              });
            },style: ElevatedButton.styleFrom(minimumSize: const Size(400, 100)), child: Text('Increment')),
            SizedBox(height: 100,),
            ElevatedButton(onPressed: (){
              setState(() {
                count = 0;
                print(count);
              });
            }, child: Text('Reset')),
          ],
        ),
      ),

      // ______________setState(); - add,sub,mul,div
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: TextFormField(controller: no1Controller,keyboardType: TextInputType.number,
      //       decoration: InputDecoration(
      //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(11),),
      //         labelText: "1st num",
      //       ),),
      //
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: TextFormField(controller: no2Controller,keyboardType: TextInputType.number,
      //       decoration: InputDecoration(
      //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(11),),
      //         labelText: "2nd num",
      //       ),),
      //
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           ElevatedButton(onPressed: (){
      //             // actually user input is in Text format(editable format) -> first convert to string and then to integer(through int.parse)
      //             var no1 = int.parse(no1Controller.text.toString());
      //             var no2 = int.parse(no2Controller.text.toString());
      //             var sum = no1 + no2;
      //             result = "sum is $sum";
      //             setState(() {});
      //           }, child: Text('Add')),
      //           ElevatedButton(onPressed: (){
      //             // actually user input is in Text format(editable format) -> first convert to string and then to integer(through int.parse)
      //             var no1 = int.parse(no1Controller.text.toString());
      //             var no2 = int.parse(no2Controller.text.toString());
      //             var diff = no1 - no2;
      //             result = "diff is $diff";
      //             setState(() {});
      //           }, child: Text('diff')),
      //           ElevatedButton(onPressed: (){
      //             // actually user input is in Text format(editable format) -> first convert to string and then to integer(through int.parse)
      //             var no1 = int.parse(no1Controller.text.toString());
      //             var no2 = int.parse(no2Controller.text.toString());
      //             var mul = no1 * no2;
      //             result = "mul is $mul";
      //             setState(() {});
      //           }, child: Text('multiply')),
      //           ElevatedButton(onPressed: (){
      //             // actually user input is in Text format(editable format) -> first convert to string and then to integer(through int.parse)
      //             var no1 = int.parse(no1Controller.text.toString());
      //             var no2 = int.parse(no2Controller.text.toString());
      //             var div = no1 / no2;
      //             result = "div is ${div.toStringAsFixed(4)}";
      //             setState(() {});
      //           }, child: Text('divide')),
      //
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(result, style: TextStyle(fontSize: 25),),
      //     )
      //
      //   ],
      // ),


    );
  }
}

// changes before and inside setState() not after
// while converting to integer through int.parse -> string must be b/w 0-9