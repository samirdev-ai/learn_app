import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'form_valid.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: 'Samir',
        showBackButton: false, //no back in home screen

      ),
      body: Form(
        key: formKey,
        child: Column(
          spacing: 15,
          children: [
            TextFormField(controller: name,
              decoration:InputDecoration(
                hintText: 'name',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please enter Name';
                } return null;
              },
            ),
            TextFormField(controller: phone,
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
            TextFormField(controller: email,
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
      ),
    );
  }
}