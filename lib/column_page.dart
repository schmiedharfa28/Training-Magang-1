import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Haii"),
      ),
      body: Container(
        width: 400,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Harfa Thandila",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "aloharfa@gmail.com",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Udacoding",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
