import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:training_1/column_page.dart';
import 'package:training_1/gridview_base.dart';
import 'package:training_1/image_assets.dart';
import 'package:training_1/image_network.dart';
import 'package:training_1/list_horizontal.dart';
import 'package:training_1/listview_base.dart';
import 'package:training_1/row_column.dart';
import 'package:training_1/row_page.dart';
import 'package:training_1/tampung_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// variabel

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

TextEditingController nama = TextEditingController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
        backgroundColor: Colors.lightGreen,
      ),
      drawer: Drawer(
        // menambahkan Navigation Drawer
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Harfa Thandila",
                style: TextStyle(fontSize: 15),
              ),
              accountEmail: Text(
                "aloharfa@gmail.com",
                style: TextStyle(fontSize: 15),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 45,
                child: Icon(
                  Icons.person_add_alt_1_outlined,
                  size: 45,
                ),
              ),
            ),
            ListTile(
              title: Text("Row Page"),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RowPage()));
              },
            ),
            Divider(
              //menambahkan garis
              thickness: 1, color: Colors.black,
            ),
            ListTile(
              title: Text("Column Page"),
              trailing: Icon(Icons.view_column),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ColumnPage()));
              },
            ),
            Divider(
              //menambahkan garis
              thickness: 1, color: Colors.black,
            ),
            ListTile(
              title: Text("Row &Column Page"),
              trailing: Icon(Icons.time_to_leave),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RowColumn()));
              },
            ),
            Divider(
              //menambahkan garis
              thickness: 1, color: Colors.black,
            ),
            ListTile(
              title: Text("GridView Base"),
              trailing: Icon(Icons.add_a_photo),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridViewBase()));
              },
            ),
            Divider(
              //menambahkan garis
              thickness: 1, color: Colors.black,
            ),
            ListTile(
              title: Text("ListView Base"),
              trailing: Icon(Icons.access_alarms_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListViewBase()));
              },
            ),
            Divider(
              //menambahkan garis
              thickness: 1, color: Colors.black,
            ),
            ListTile(
              title: Text("List Horizontal "),
              trailing: Icon(Icons.add_alert_sharp),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListViewHorizontal()));
              },
            ),
            Divider(
              //menambahkan garis
              thickness: 1, color: Colors.black,
            ),
            ListTile(
                title: Text("Image Assets"),
                trailing: Icon(Icons.backspace),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ImageAssets()));
                }),
            Divider(
              //menambahkan garis
              thickness: 1, color: Colors.black,
            ),
            ListTile(
                title: Text("Image Network"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ImageNetwork()));
                }),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          //satu anak
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // banyak anak
            Text(
              "My First App",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Pelajaran Pertama",
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextFormField(
                controller: nama,
                decoration: InputDecoration(
                  hintText: "Input Nama",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //memberi space sesuai ukuran, btween mepet kanan kiri space.
              children: [
                Flexible(
                  child: MaterialButton(
                      minWidth: 190,
                      // untuk toast
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text(
                        'Klik Toast',
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: "Nama anda adalah = ${nama.text}",
                            timeInSecForIosWeb: 1,
                            textColor: Colors.white,
                            gravity: ToastGravity.BOTTOM,
                            toastLength: Toast.LENGTH_LONG);
                      }),
                ),
                Flexible(
                  //untuk membagi sama rata / meminimalisir muncul button overflow
                  child: MaterialButton(
                      minWidth: 200,
                      //untuk snackbar
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text(
                        'Klik Snack Bar',
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Nama Anda adalah ${nama.text}',
                              style: TextStyle(color: Colors.white),
                            ),
                            duration: Duration(seconds: 1), // menghitung waktu
                            // backgroundColor: Colors.white, warna snackbar
                          ),
                        );
                      }),
                ),
                Flexible(
                  child: MaterialButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(210),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TampungData(nama: nama.text)));
                    },
                    child: Text('Passing Data'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//widget huruf besar
//atribut huruf kecil
