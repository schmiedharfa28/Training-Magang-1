import 'package:flutter/material.dart';
import 'package:training_1/listview_show.dart';

class ListViewBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("List View Base"),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(
                  'Item ke - ${index + 1}',
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListViewShow(index: index)));
                });
          }),
    );
  }
}
