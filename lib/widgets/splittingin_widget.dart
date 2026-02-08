// To make BottomMenu(class) a widget -> class must extends some stl or statefullwidget -> final task - to return widget
// splitting app into widget

import 'package:flutter/material.dart';

class Splittingapp extends StatelessWidget {
  const Splittingapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Samir', style: TextStyle(color: Colors.black)),
        toolbarHeight: 50,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 150, width: double.infinity, child: CatItems()),
            Container(height: 400, width: double.infinity, child: Contact()),
            Container(height: 100, width: double.infinity, child: SubCatItems()),
            Container(height: 400, width: double.infinity, child: BottomMenu()),

          ],
        ),
      ),
    );
  }
}

// ---------------------------------------
class CatItems extends StatelessWidget {
  const CatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 400,
        color: Colors.white,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(backgroundColor: Colors.black),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

// ----------------------------------
class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        height: 200,
        color: Colors.amber,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.green),
              title: Text('Name'),
              subtitle: Text('Mob No'),
              trailing: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------
class SubCatItems extends StatelessWidget {
  const SubCatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 200,
        color: Colors.orange,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.blue,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

// --------------------------------------
class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        height: 300,
        color: Colors.green,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
