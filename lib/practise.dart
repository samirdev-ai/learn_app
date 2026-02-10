import 'dart:io';

import 'package:animated_tree_view/helpers/collection_utils.dart';
// --------------------------------------------basics
// void main() {
//   stdout.write('Enter your name');         // i/O
//   var name = stdin.readLineSync();
//   print("Welcome, $name");
//
//   BigInt longValue;                        // BigInt/double
//   longValue = BigInt.parse('5203728735320573205280');
//   double num = 354.234;
//
//   var section; //dynamic                   // dynamic var/const
//   section = "D";
//   section = 5;
//   section = 54.56;
//   var samir = 45;
//
//   // var myC = myClass();
//   // myC.printName("arewaah");
//
//   // // Declaration:
//   // int x = 1, y = 2, z = 3;
//
//   // String name; error or mark null(?)
//   // String? name; (can be null)
//   //
//   // var count = 32; -> int
//   // var name = "josh"; -> string
//   //
//   // final now = DateTime.now(); -> mut(no)
//   // const List<int> numbers = [1,2,3]; -> mut(no)    //const -> faster, memory efficient
//   //
//   // List<String>? list;              //null list
//   // List<int> scores = [10, 20, 30];
//   // Set<String> tags = {'flutter', 'dart'};
//   // Map<String, int> ages = {'Sannu': 25, 'Ram': 30};  //Map(key-value)
//   // dynamic anything = 42;
//
//   dynamic value = 10;   //no compile time safety
//   value = "Hello";
//   value = true;
//
//   Object data = "Hello"; //
//   data = 25;
//   data = true;
//   // Object → compile-time checks
//   // dynamic → no checks
//
//   // final TextEditingController controller = TextEditingController();
//   // final GlobalKey<FormState> formKey = GlobalKey<FormState>();
// }

// keyword Identifier
// class myClass {
//   myClass(){
//     print("Welcome bro!");
//   }
//   void printName(String name){
//     print(name);
//   }
// }

// ------------------------------------------------list
// import 'package:flutter/cupertino.dart';
// main() {
//   var listNo = [10,20,30,40];
//   listNo.add(50);

// var names=[];
// names.add("raman");
// names.addAll(listNames);

// names.insert(3, 200);
// names.insertAll(3,listNames);
// names[2] = "rameez";                //update

// listNo.replaceRange(0,3, [1,2,3,5]);   //replace

// listNo.removeAt(3) |removeRange(0,3) |length |reversed |first |last |isEmpty |isNotEmpty |elementAt(2)
//   print("$listNo");
// }

// --------------------------------------------------map
// main() {
//   var samir = {
//     'Name':'value1',
//     'YearsOfExperience':2,
//   };
//
//   var map_name = Map();
//   map_name['Name'] = 'Raman';
//   map_name['Years'] = 10;
//   print(map_name);
// }
//
// -------------------------------------------------final/const
// void main(){
//   // const name = "Raman";          //initialize at declare - necessary
//   // final comp;                    //initialize at declare - not necessary
//   // comp = "welcome";
//
//   final names =[
//     "Raman",
//     "Aman"
//   ];
//   // names.addAll("samir");          // no- addAll
//   var samir =["priya", "Pooja", "Pascal", "Pratiksha", "Peter"]; //error
//   // names.addAll(samir);          // no- addAll
//
//   const lived =[                // no- add
//     "Raman",
//     "Aman"
//   ];
//   print(names);
// }


// FUNCTION WITH NAMED PARAMETERS
// String createProfile({required String name, int age = 17, String? city}) {
//   return 'Name: $name, Age: $age, ${city ?? 'Note required'}';
// }
//
// void main(){
//   print(createProfile(name: 'Alice', age: 23, city: 'New york'));
//   print(createProfile(name: 'Bob'));
// }

// -----------------------------------------access data in list of map
List<Map<String, dynamic>> products = [
  {'name': 'Laptop', 'price': 50000},
  {'name': 'Phone', 'price': 30000},
  {'name': 'RN', 'price': 40000},
];

String name = products[1]["name"];
void main() {
  //   print(name);
  // for (int i = 0; i < products.length; i++) {
  // print('name : ${products[i]['name']}');          //name : Laptop
  // print('price :' + "${products[i]['price']}");    //price :50000
  // print('Name: ${products[i]['name']}, Price: ${products[i]['price']}');     //Name: Laptop, Price: 50000
  // print({products[i]['price']});     //{50000}
  // print("${products[i]['price']}");  //50000
  // var names = products.map((p) => p['name']).toList();

  // }
  // print(products.map((p) => p['name']).toSet());   //[Laptop, Phone]
  // print(products.map((p) => p['price'] * 10).toList());
  // print(products.map((p) => p['price']).reduce((a, b) => a + b));    //.reduce - sum - single value
  // products.forEach((product) {                                  //.forEach - loop and access values
  //   print('Name: ${product['name']}, Price: ${product['price']}');
  // });
  // print(products.where((p) => p['price'] > 40000).toList());    //.where(filter) - condition


}

// -------------------------------------------------- access data in map & list
// Map<String, dynamic> user = {                         //details of each item
//   'name': 'Samir',
//   'age': 21,
// };
// void main(){
//   print(user['name']); // Samir                        //key based
// }
// uses : - storing structured data
// passing data b/w screens

// List<String> fruits = ['Apple', 'Banana', 'Mango'];         //multiple items
// void main() {
//   print(fruits[1]); // Banana                         //index based
// }
// uses :- looping widgets






// pixel 8a
// adb kill-server
// taskkill /F /IM adb.exe   # Force kill any stuck ADB
// adb start-server
// -Re-open Android Studio → Open AVD Manager → Cold Boot your Pixel 8a (cold boot = full restart).
// -Wait 30–60 seconds for emulator to fully boot.
// -Run flutter devices again — it should appear now.
// -Then flutter run or select it in the toolbar.



