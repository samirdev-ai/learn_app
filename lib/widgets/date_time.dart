// DateFormat -> add intl(latest) in pubspec.yaml  -> import 'intl.dart'

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datetime extends StatefulWidget {
  const Datetime({super.key});

  @override
  State<Datetime> createState() => _DatetimeState();
}

class _DatetimeState extends State<Datetime> {
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Samir', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                // 'Current Time: ${time.hour}:${time.minute}:${time.second}:${time.year}',               //$time -> 2026-2-7 7:25:35.329584
                'Current Time: ${DateFormat('yMMMMd').format(time)}',                   //Hms,jms,yMMMMd,QQQQ->quarteryear,yMMMMEEEEd,EEEE->day
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(onPressed: () {
                setState(() {});
              },
                child: Text('current Time'),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
