import 'package:flutter/material.dart';

class GridViewBase extends StatelessWidget {
  // List<int> itemList = List();

  // @override
  // void initState() {
  //   super.initState();
  //   for (int i = 1; i < 20; i++) {
  //     itemList.add(i);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Grid View Base"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(15, (index) {
          return GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Anda memilih card ke- ${index + 1}"),
                duration: Duration(milliseconds: 400),
              ));
            },
            child: Card(
              child: Center(
                child: Text("Card Ke- ${index + 1}"),
              ),
            ),
          );
        }),
      ),
    );
  }
}
