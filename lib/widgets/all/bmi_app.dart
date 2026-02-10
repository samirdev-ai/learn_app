// setState();

import 'package:flutter/material.dart';
import '../app_bar.dart';

class BmiApp extends StatefulWidget {
  const BmiApp({super.key});

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  TextEditingController wtController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inController = TextEditingController();
  var result = "";
  var bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: 'Samir',
        showBackButton: false, //no back in home screen
      ),
      // ______________setState(); - bmi app
      body: Container(
        color: bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: wtController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('enter Weight'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  // labelText: "1st num",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: ftController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('enter height'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  // labelText: "2nd num",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: inController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('enter inch'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  // labelText: "2nd num",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // actually user input is in Text format(editable format) -> first convert to string and then to integer(through int.parse)
                      var wt = wtController.text.toString();
                      var ft = ftController.text.toString();
                      var inch = inController.text.toString();
                      if (wt != "" && ft != "" && inch != "") {
                        var iwt = int.parse(wt);
                        var ift = int.parse(ft);
                        var iInch = int.parse(inch);

                        // BMI calculation
                        var tM = (((ift * 12) + iInch) * 2.54) / 100;
                        var bmi = iwt / (tM * tM);
                        var msg = "";
                        if (bmi > 35) {
                          msg = "You are OverWeight";
                          bgColor = Colors.orange;
                        } else if (bmi < 18) {
                          msg = "You are UnderWeight";
                          bgColor = Colors.red.shade200;
                        } else {
                          msg = "You are Healthy";
                          bgColor = Colors.green.shade200;
                        }
                        setState(() {
                          result =
                              "$msg \nYour BMI is ${bmi.toStringAsFixed(4)}";
                        });
                      } else {
                        setState(() {
                          result = "Please fill all the required blanks";
                        });
                      }
                    },
                    child: Text('Calculate'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(result, style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}

// changes before and inside setState() not after
// while converting to integer through int.parse -> string must be b/w 0-9
