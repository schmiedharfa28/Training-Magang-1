import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Image Assets"),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.only(top: 100),
      //   child: Container(
      //     child: Column(
      //       children: [
      //         Container(
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Container(
      //                 color: Colors.lightGreen,
      //                 child: Image.asset(
      //                   'assets/icons/phone.png',
      //                   height: 115,
      //                   width: 116,
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: 20,
      //               ),
      //               Row(
      //                 children: [
      //                   Container(
      //                     color: Colors.lightGreen,
      //                     child: Image.asset(
      //                       'assets/icons/phone.png',
      //                       height: 115,
      //                       width: 116,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Flexible(
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Container(
      //                 color: Colors.lightGreen,
      //                 child: Image.asset(
      //                   'assets/icons/phone.png',
      //                   height: 115,
      //                   width: 116,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Container(
      //               color: Colors.lightGreen,
      //               child: Image.asset(
      //                 'assets/icons/phone.png',
      //                 height: 115,
      //                 width: 116,
      //               ),
      //             ),
      //             SizedBox(
      //               width: 20,
      //             ),
      //             Row(
      //               children: [
      //                 Container(
      //                   color: Colors.lightGreen,
      //                   child: Image.asset(
      //                     'assets/icons/phone.png',
      //                     height: 115,
      //                     width: 116,
      //                   ),
      //                 )
      //               ],
      //             ),
      //             SizedBox(
      //               width: 20,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Container(
      //                   color: Colors.lightGreen,
      //                   child: Image.asset(
      //                     'assets/icons/phone.png',
      //                     height: 115,
      //                     width: 116,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/whatsapp.png',
                      height: 116,
                      width: 116,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/whatsapp.png',
                      height: 116,
                      width: 116,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/icons/whatsapp.png',
                  height: 116,
                  width: 116,
                ),
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/whatsapp.png',
                      height: 116,
                      width: 116,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/whatsapp.png',
                      height: 116,
                      width: 116,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/whatsapp.png',
                      height: 116,
                      width: 116,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
