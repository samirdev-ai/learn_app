import 'package:flutter/material.dart';

import 'app_bar.dart';

// DateTime? -> return type -> TimeOfDay?
class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: 'Samir',
        showBackButton: false, //no back in home screen
      ),
      body: Center(
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
      ),
    );
  }
}
