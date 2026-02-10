// TextField(decoration(hintlabelborder), obscure, suffix/prefixIcon/text)

import 'package:flutter/material.dart';

import 'app_bar.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: 'Samir',
        showBackButton: false, //no back in home screen
      ),
      body: Center(
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
      ),
    );
  }
}
