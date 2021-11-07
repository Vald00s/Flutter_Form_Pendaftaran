import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //
  TextEditingController namac = TextEditingController();
  TextEditingController nimc = TextEditingController();
  TextEditingController alamatc = TextEditingController();
  DateTime selectedDate = DateTime.now();
  final firstDate = DateTime(2000, 1);
  final lastDate = DateTime(2021, 12);
  String g = "Pria";

  bool value = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  bool value6 = false;
  final TextEditingController nim = TextEditingController(
    text: '',
  );
  final TextEditingController nama = TextEditingController(
    text: '',
  );
  final TextEditingController alamat = TextEditingController(
    text: '',
  );
  final TextEditingController email = TextEditingController(
    text: '',
  );
  final TextEditingController ipk = TextEditingController(
    text: '',
  );
  final TextEditingController tanggal_lahir = TextEditingController(
    text: '',
  );
  String? fakultas;
  String? prodi;
  List _listfakultas = [
    'F.Ekonomi',
    'F.Teknik',
    'F.Sosial Politik',
    'F.Sastra',
    'F.Hukum',
    'F.Psikologi',
  ];
  List _myprodi = [
    "Clara",
    "John",
    "Rizal",
    "Steve",
    "Laurel",
    "Bernard",
    "Miechel"
  ];
  String? valueChoose;
  //
  //
  void prod() {
    if (fakultas == "F.Ekonomi") {}
  }

  //
  //
  void ressets() {
    setState(() {
      nim.text = "";
      nama.text = "";
      alamat.text = "";
      g = "Pria";
      tanggal_lahir.text = "";
      value = false;
      value2 = false;
      value3 = false;
      value4 = false;
      value5 = false;
      value6 = false;
      email.text = "";
      ipk.text = "";
      fakultas = "F.Ekonomi";
      prodi = "F.Ekonomi";
    });
  }

  void coba() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text(
          'Data Mahasiswa',
          textAlign: TextAlign.center,
        ),
        content: SizedBox(
          height: 300.0,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                children: <Widget>[
                  Text('NIM: ' + nim.text),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                children: <Widget>[
                  Text('Nama: ' + nama.text),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                children: <Widget>[
                  Text("Alamat: " + alamat.text),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                children: <Widget>[
                  Text("Gender: " + g),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                children: <Widget>[
                  Text('Tanggal Lahir: ' +
                      DateFormat.yMd().format(selectedDate)),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                children: <Widget>[
                  Text('Hobby: '),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                children: <Widget>[
                  Text("Email: " + email.text),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                children: <Widget>[
                  Text("IPK: " + ipk.text),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                children: <Widget>[
                  Text("Fakultas: "),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Row(
                children: <Widget>[
                  Text("Prodi: "),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      Padding(padding: EdgeInsets.only(bottom: 30, right: 60)),
      Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 268,
              height: 110,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(bottom: 20, left: 5)),
                      Container(
                        width: 100,
                        child: Text(
                          "NIM",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        width: 155,
                        height: 50,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "",
                              hintText: ""),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                          ],
                          controller: nim,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 8)),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5)),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(bottom: 20, left: 5)),
                      Container(
                        width: 100,
                        child: Text(
                          "Nama",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        width: 155,
                        height: 50,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "",
                              hintText: ""),
                          keyboardType: TextInputType.text,
                          controller: nama,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 8)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            Container(
              width: 100,
              height: 100,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                image: new AssetImage("assets/images/Ellipse1.png"),
                fit: BoxFit.fill,
              )),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 20, left: 5)),
            Container(
              width: 100,
              child: Text(
                "Alamat",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: 155,
              height: 50,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                    border: OutlineInputBorder(), labelText: "", hintText: ""),
                keyboardType: TextInputType.text,
                controller: alamat,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 20, left: 5)),
            Container(
              width: 85,
              child: Text(
                "Gender",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Radio(
              value: "Pria",
              groupValue: g,
              onChanged: (String? value) {
                setState(() {
                  g = value!;
                });
              },
            ),
            Text(
              'Pria',
              style: new TextStyle(fontSize: 17.0),
            ),
            Radio(
              value: "Wanita",
              groupValue: g,
              onChanged: (String? value) {
                setState(() {
                  g = value!;
                });
              },
            ),
            Text(
              'Wanita',
              style: new TextStyle(
                fontSize: 17.0,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 20, left: 5)),
            Container(
              width: 100,
              child: Text(
                "Tanggal Lahir",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: 155,
              child: TextField(
                onTap: () {
                  _openDatePicker(context);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: '$selectedDate'.split(' ')[0],
                  suffixIcon: Icon(
                    Icons.calendar_today_rounded,
                  ),
                ),
                controller: tanggal_lahir,
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 5)),
            Container(
              width: 85,
              child: Text(
                "Hoby",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                Checkbox(
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
                Text(
                  'Menari',
                  style: TextStyle(fontSize: 17.0),
                ),
                Padding(padding: EdgeInsets.only(left: 25)),
                SizedBox(width: 10),
                Checkbox(
                  value: this.value2,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value2 = value!;
                    });
                  },
                ),
                Text(
                  'Nonton Film',
                  style: TextStyle(fontSize: 17.0),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 5)),
            Container(
              width: 85,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                Checkbox(
                  value: this.value3,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value3 = value!;
                    });
                  },
                ),
                Text(
                  'Sepakbola',
                  style: TextStyle(fontSize: 17.0),
                ),
                SizedBox(width: 10),
                Checkbox(
                  value: this.value4,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value4 = value!;
                    });
                  },
                ),
                Text(
                  'Travelling',
                  style: TextStyle(fontSize: 17.0),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 5)),
            Container(
              width: 85,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                Checkbox(
                  value: this.value5,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value5 = value!;
                    });
                  },
                ),
                Text(
                  'Berenang',
                  style: TextStyle(fontSize: 17.0),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                SizedBox(width: 10),
                Checkbox(
                  value: this.value6,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value6 = value!;
                    });
                  },
                ),
                Text(
                  'Musik',
                  style: TextStyle(fontSize: 17.0),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 20, left: 5)),
            Container(
              width: 100,
              child: Text(
                "Email",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: 155,
              height: 50,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                    border: OutlineInputBorder(), labelText: "", hintText: ""),
                keyboardType: TextInputType.text,
                controller: email,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 20, left: 5)),
            Container(
              width: 100,
              child: Text(
                "IPK",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: 155,
              height: 50,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                    border: OutlineInputBorder(), labelText: "", hintText: ""),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                ],
                controller: ipk,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 20, left: 5)),
            Container(
              width: 100,
              child: Text(
                "Fakultas",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: 120,
              child: DropdownButton<String>(
                value: fakultas,
                style: TextStyle(color: Colors.black),
                items: <String>[
                  'F.Ekonomi',
                  'F.Teknik',
                  'F.Sosial Politik',
                  'F.Sastra',
                  'F.Hukum',
                  'F.Psikologi',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                hint: Text(
                  "Pilih",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 5,
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    fakultas = value!;
                  });
                },
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 20, left: 5)),
            Container(
              width: 100,
              child: Text(
                "Prodi",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: 120,
              child: DropdownButton<String>(
                value: prodi,
                style: TextStyle(color: Colors.black),
                items: <String>[
                  'F.Ekonomi',
                  'F.Teknik',
                  'F.Sosial Politik',
                  'F.Sastra',
                  'F.Hukum',
                  'F.Psikologi',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                hint: Text(
                  "Pilih",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 5,
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    prodi = value!;
                  });
                },
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 20, left: 5)),
            Container(
              width: 100,
              child: RaisedButton(
                child: Text("Proses"),
                onPressed: () {
                  coba();
                },
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 15)),
            Container(
              width: 100,
              child: RaisedButton(
                child: Text("Reset"),
                onPressed: () {
                  ressets();
                },
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
          ],
        ),
      ]),
    ])));
  }

  _openDatePicker(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }
}
