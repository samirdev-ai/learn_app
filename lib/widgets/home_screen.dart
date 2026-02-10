import 'package:flutter/material.dart';
import '../../utils/route_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Text('HomeScreen'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.widgets, arguments: 'Samir');     //RouterHelper.profile -> '/profile'
            }, child: Text('Go to all widgets')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.bmiapp, arguments: 'Samir');
            }, child: Text('Go to BMI App')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.counter, arguments: 'Samir');
            }, child: Text('Go to Counter App')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.datetime, arguments: 'Samir');
            }, child: Text('Go to DateTime App')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.expandedflex, arguments: 'Samir');
            }, child: Text('Go to Expanded flex')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.gridview, arguments: 'Samir');
            }, child: Text('Go to Gridview')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.listviewtile, arguments: 'Samir');
            }, child: Text('Go to Listtile')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.roundedbutton, arguments: 'Samir');
            }, child: Text('Go to RoundedButton')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.rowcolscroll, arguments: 'Samir');
            }, child: Text('Go to rowcolScroll')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.datepicker, arguments: 'Samir');
            }, child: Text('Go to Date Picker')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.formvalidate, arguments: 'Samir');
            }, child: Text('Go to Form validation')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.gesturinkwell, arguments: 'Samir');
            }, child: Text('Go to GesturInkwell')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.stack, arguments: 'Samir');
            }, child: Text('Go to Stack')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.textfield, arguments: 'Samir');
            }, child: Text('Go to TextField')),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, RouteHelper.splittinginwidget, arguments: 'Samir');
            }, child: Text('Go to Splitting app in widget')),

          ],
        ),
      ),
    );
  }
}
