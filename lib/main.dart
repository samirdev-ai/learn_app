// NOTES:
// scroll : singlechildscrollview and listview
//          more components in row -> come to next line -> wrap & gridview

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';    //Datetime
import 'package:mitch_app/ui_helper/util.dart';
import 'package:mitch_app/widgets/rounded_btn.dart';
import 'package:mitch_app/widgets/listview_listtile.dart';
import 'package:mitch_app/widgets/listview_listtile.dart';
import 'package:mitch_app/widgets/expanded_flex.dart';
import 'Test.dart';
import 'package:mitch_app/widgets/date_time.dart';
import 'package:mitch_app/widgets/gridview.dart';
import 'package:mitch_app/widgets/splittingin_widget.dart';

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
      home: const MyHomePage(),
      // home: const Listviewlisttile(),
      // home: const Expandedflex(),
      // home: const Test(),
      // home: const Datetime(),
      // home: const Gridview(),
      // home: const Splittingapp(),
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

      // -------------------------Button
      // body: Container(
      //   color: Colors.lightBlue,
      //   child: TextButton(
      //     child: Text("click"),
      //     onPressed: () {
      //       print("Understand well!");
      //     },
      //     onLongPress: () {
      //       print('LongPressed!');
      //     },
      //   ),
      // ),
      // body: ElevatedButton(
      //   child: Text("what "),
      //   onPressed: (){
      //     print("pressed");
      //   },
      // body: OutlinedButton(
      //   child: Text('Samir', ),
      //   onPressed: (){
      //     print("samir");
      //   },

      // -------------------------images
      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     child: Image.asset("assets/images/img.png"),
      //   ),
      // ),

      // ---------------------------------rows/ column
      // body: Container(
      //   width: 300,
      //   // height: 300,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //         Text('A', style: TextStyle(fontSize: 25)),
      //         Text('B', style: TextStyle(fontSize: 25)),
      //         Column(children: [
      //           ElevatedButton(onPressed: (){
      //             print('samir');
      //           }, child: Text("click")),
      //           ElevatedButton(onPressed: (){
      //             print('samir');
      //           }, child: Text("click"))
      //         ],
      //         ),
      //         Text('C', style: TextStyle(fontSize: 25)),
      //         Text('d', style: TextStyle(fontSize: 25)),
      //         Text('E', style: TextStyle(fontSize: 25)),
      //         ElevatedButton(onPressed: (){
      //           print('samir');
      //         }, child: Text("click"))
      //       ],
      //       ),
      //       Text('A', style: TextStyle(fontSize: 25)),
      //       Text('B', style: TextStyle(fontSize: 25)),
      //       Text('C', style: TextStyle(fontSize: 25)),
      //       Text('d', style: TextStyle(fontSize: 25)),
      //       Text('E', style: TextStyle(fontSize: 25)),
      //       ElevatedButton(onPressed: (){
      //         print('samir');
      //       }, child: Text("click"))
      //     ],
      //   ),
      // )

      // -----------------------------------------InkWell
      // body: Center(
      //   child: InkWell(
      //     onTap: () {
      //       print('ONTAP');
      //     },
      //     onLongPress: () {
      //       print('ONPRESSED');
      //     },
      //     onDoubleTap: () {
      //       print('ONDOUBLETAP');
      //     },
      //     child: Container(
      //       height: 300,
      //       width: 300,
      //       color: Colors.lightBlue,
      //       child: Center(
      //         child: InkWell(
      //           onTap: (){
      //             print('Text Widget Tapped!');
      //           },
      //           child: Text(
      //             'Click here!',
      //             style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      // -----------------------------------------SingleChildScrollView
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: const EdgeInsets.only(bottom: 10),
      //                   height: 200,
      //                   width: 200,
      //                   child: Text('Samir'),
      //                   color: Colors.cyanAccent,
      //                 ),
      //                 Container(
      //                   margin: const EdgeInsets.only(bottom: 10),
      //                   height: 200,
      //                   width: 200,
      //                   child: Text('Samir'),
      //                   color: Colors.lightBlue,
      //                 ),
      //                 Container(
      //                   margin: const EdgeInsets.only(bottom: 10),
      //                   height: 200,
      //                   width: 200,
      //                   child: Text('Samir'),
      //                   color: Colors.lightGreen,
      //                 ),
      //               ],
      //             ),
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
      //           width: 500,
      //           child: Text('Samir'),
      //           color: Colors.red,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // ListView.builder -> no seperator -> required itemextent
      // ListView.seperator -> seperator -> required seperator.builder
      // -----------------------------------------------------ListView.builder(itemBuilder: ) -> best for memory recycled
      // body: ListView.builder(itemBuilder: (context, index){         //dynamic data -> store server data in array -> array used in listview.builder -> (context, index)-array index
      body: ListView.separated(itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500,),),
                    ),
                  ],
                ),
              ),

              Padding(padding: const EdgeInsets.all(8.0),
                child: Text(arrNames[index],
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          );
        },
        itemCount: arrNames.length,
        // itemExtent: 200,
        // scrollDirection:r Axis.horizontal,
        separatorBuilder: (context, index) {
          return Divider(height: 4, thickness: 2);
        },
        // reverse: true,
      ),

      // ---------------------------------------------------ListTile in builder
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

      // create a custom widget____________________________import 'widgets/rounded_btn';
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(width: 100,
      //         child: RoundedButton(btnName: 'Play', icon: Icon(Icons.play_arrow),textStyle: mTextStyle21(),
      //           callBack: () {
      //             print('Playing');
      //           },
      //         ),
      //       ),
      //       Container(height: 11),
      //       Container(width: 100,
      //         child: RoundedButton(btnName: 'Press',bgColor: Colors.orange, textStyle: mTextStyle21(),
      //           callBack: () {
      //             print('Pressed');
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      // body: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         // Container(height: 400, width: double.infinity, child: Wrapp()),
      //         // Container(height: 400, width: double.infinity, child: Splitting()),
      //         Container(height: 400, width: double.infinity, child: RoundedButton(btnName: 'Login', icon: Icon(Icons.lock), callBack: (){
      //           print('Logged in!');
      //         }, textStyle: mTextStyle31(),)),
      //         // Container(height: 400, width: double.infinity, child: Textfield()),
      //         // Container(height: 400, width: double.infinity, child: FormValid()),
      //         // Container(height: 400, width: double.infinity, child: GesturInkwel()),
      //         // Container(height: 400, width: double.infinity, child: Datepickerr()),
      //         // Container(height: 400, width: double.infinity, child: Stackk()),                //Stackk() -> object
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
            print('Clicked =======================================>');
          },
          child: Text('Click!', style: TextStyle(fontSize: 30, color: Colors.blueAccent),),
        ),
        InkWell(                         //effect but less properties
          onTap: (){                     //onlong/doubletap
            print('Clicked =======================================>');
          },
          child: Text('Click!', style: TextStyle(fontSize: 30, color: Colors.blueAccent),),
        )
      ],
    );
  }
}

// Form(key,TextFormField(validator))           (spread)
class FormValid extends StatefulWidget {
  const FormValid({super.key});

  @override
  State<FormValid> createState() => FormValidState();
}
class FormValidState extends State<FormValid> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 15,
        children: [
          TextFormField(
            controller: name,
            decoration:InputDecoration(
              hintText: 'name',
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please enter Name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: phone,
            decoration:InputDecoration(
              hintText: 'phone',
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please enter Phone';
              }
              if(value.length!=10) {
                return 'Length must be 10';
              }
              return null;
            },
          ),
          TextFormField(
            controller: email,
            decoration:InputDecoration(
              hintText: 'email',
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please enter Email';
              }
              if(!value.contains('@gmail.com')) {
                return 'Invalid email';
              }
              return null;
            },
          ),
          TextFormField(
            controller: pass,
            decoration:InputDecoration(
              hintText: 'password',
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please enter Pass';
              }
              return null;
            },
          ),
          ElevatedButton(onPressed: (){
            if (formKey.currentState!.validate()){
              print('Name: ${name.text}');
              print('phone: ${phone.text}');
              print('email: ${email.text}');
              print('pass: ${pass.text}');
            }
          }, child: Text('Register'))
        ],
      ),
    );
  }
}

// TextField(decoration(hintlabelborder), obscure, suffix/prefixIcon/text)
class Textfield extends StatefulWidget {
  const Textfield({super.key});

  @override
  State<Textfield> createState() => _TextfieldState();
}
class _TextfieldState extends State<Textfield> {
  TextEditingController emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(                     //scroll(column(TextField(controller, decoration(border)))
              keyboardType: TextInputType.text,
              controller: emailText,
              // enabled: false,
              decoration: InputDecoration(
                hintText: 'Enter Email',
                labelText: 'Email',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(21),),  //(focused/ enabledborder/disabledborder/ border)
                // suffixText: "username exists",
                suffixIcon: IconButton(onPressed: () => emailText.clear(),
                    icon: Icon(Icons.close, color: Colors.orange,)),
                prefixIcon: Icon(Icons.phone, color: Colors.orange,),
              ),
            ),
            Container(height: 11),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              controller: passText,
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  // borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                ),
              ),
            ),
            Container(height: 11),
            TextField(                        // Description
              maxLines: 7,
              decoration: InputDecoration(
                hintText: 'Description',
                labelText: 'Description...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  // borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                ),
              ),
            ),

            ElevatedButton(onPressed: () {
              String uEmail = emailText.text.toString();
              String uPass = passText.text;
              print("Email: $uEmail, pass:$uPass");
            }, child: Text('Login'))
          ],
        ),
      ),
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

// overlay one widget into another widget
// Stack(positioneds) -> (uses)give position to widget
class Stackk extends StatelessWidget {
  const Stackk({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11),
      width: 300,
      height: 300,
      color: Colors.orange,
      child: Stack(
        children: [
          Positioned(left: 21,right: 21,
            child: Container(width: 200, height: 200, color: Colors.blueGrey),
          ),
          Positioned(left: 30, right: 30,
            child: Container(width: 160, height: 160, color: Colors.green),
          ),
        ],
      ),
    );
  }
}

// DateTime? -> return type -> TimeOfDay?
class Datepickerr extends StatelessWidget {
  const Datepickerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Select Date', style: TextStyle(fontSize: 25),),
          ElevatedButton(onPressed: () async {                               //2/7/2026 & async -> time taking process to select date
            DateTime? datePicked = await showDatePicker(context: context,        //(?)-> user may not select any date
                initialDate: DateTime.now(),        //current time
                firstDate: DateTime(2026),
                lastDate: DateTime(2028));
            if (datePicked != null) {
              print('Date selected: ${datePicked.day}-${datePicked
                  .month}-${datePicked.year}');
            }
          }, child: Text('Show')),
          ElevatedButton(onPressed: () async {                              //1:16:35
            TimeOfDay? pickedTime = await showTimePicker(context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial);
            if (pickedTime != null) {
              print('Time selected: ${pickedTime.hour}:${pickedTime.minute}');
            }
          }, child: Text('Select Time'))
        ],
      ),
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

