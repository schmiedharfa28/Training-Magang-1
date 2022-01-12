import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("Row Page"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, size: 50, color: Colors.black),
              Icon(Icons.apps, size: 50, color: Colors.black),
              Icon(Icons.person, size: 50, color: Colors.black),
            ],
          ),
        ));
  }
}
