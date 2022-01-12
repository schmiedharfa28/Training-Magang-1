import 'package:flutter/material.dart';

class ListViewShow extends StatelessWidget {
  int? index;
  ListViewShow({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item ke - ${index! + 1}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('$index')],
        ),
      ),
    );
  }
}
