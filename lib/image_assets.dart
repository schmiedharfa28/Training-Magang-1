import 'package:flutter/material.dart';

class ImageAssets extends StatelessWidget {
  const ImageAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Image Assets"),
      ),
      body: Center(
        child: Image.asset('assets/icons/phone.png'),
      ),
    );
  }
}
