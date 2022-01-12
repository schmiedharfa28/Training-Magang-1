import 'package:flutter/material.dart';

class ListViewHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("List View Horizontal"),
      ),
      body: Container(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                // height: 200,
                width: 150,
                child: Card(
                  elevation: 5,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      "List ${index + 1}",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
