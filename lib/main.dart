import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Exo - Alexis LG',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _1Controller = TextEditingController();
  var _2Controller = TextEditingController();
  var _3Controller = TextEditingController();
  var _4Controller = TextEditingController();
  var _5Controller = TextEditingController();
  var _refController = TextEditingController();
  final _somme = TextEditingController();
  final _moyenne = TextEditingController();
  final _maximum = TextEditingController();
  final _minimum = TextEditingController();
  int? resultS;
  int? sum;
  int? resultM;
  int? moy;
  int? resultMax;
  int? maxi;
  int? resultMin;
  int? mini;

  List<String> localOwners = [
    'Nbre de rugbyman...',
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  @override
  void initState() {
    //Nbre de rugbyman...
    ownersList = new List.from(localOwners);
    dropDownOwners = buildAndGetDropDownItems(ownersList);
    selectedOwners = dropDownOwners?[0].value;
    super.initState();
  }

  validate() {
    if (selectedOwners == "Nbre de rugbyman...") {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                'Sélectionnez le nombre de rugbymans',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              content: Text(
                "Vous devez sélectionner le nombre de rugbyman",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black,
                ),
              ),
              actions: [
                TextButton(
                  child: Text(
                    'Fermer',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
      return;
    }
    if (_refController.text == '') {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                'Entrez la taille de référence',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              content: Text(
                "Vous devez entrer la taille de référence",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black,
                ),
              ),
              actions: [
                TextButton(
                  child: Text(
                    'Fermer',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
      return;
    }
    if (selectedOwners == "1"){
      if (_1Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 1er rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°1",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }

      //somme
      resultS = int.parse(_1Controller.text);
      _somme.text = resultS.toString();

      double? cmS = double.tryParse(resultS.toString()) ?? 0;
      _somme.text = (cmS / 100).toStringAsFixed(2);

      //moyenne
      resultM = int.parse(_1Controller.text);
      _moyenne.text = resultM.toString();

      double? cmM = double.tryParse(resultM.toString()) ?? 0;
      _moyenne.text = (cmM / 100).toStringAsFixed(2);

      //max
      resultMax = int.parse(_1Controller.text);
      _maximum.text = resultMax.toString();

      double? cmMax = double.tryParse(resultMax.toString()) ?? 0;
      _maximum.text = (cmMax / 100).toStringAsFixed(2);

      //min
      resultMin = int.parse(_1Controller.text);
      _minimum.text = resultMin.toString();

      double? cmMin = double.tryParse(resultMin.toString()) ?? 0;
      _minimum.text = (cmMin / 100).toStringAsFixed(2);
    }
    if (selectedOwners == "2"){
      if (_1Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 1er rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°1",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      if (_2Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 2eme rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°2",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }

      //somme
      sum = int.parse(_1Controller.text) +
          int.parse(_2Controller.text);
      resultS = sum;
      _somme.text = resultS.toString();

      double? cmS = double.tryParse(resultS.toString()) ?? 0;
      _somme.text = (cmS / 100).toStringAsFixed(2);

      //moyenne
      moy = int.parse(_1Controller.text) +
          int.parse(_2Controller.text);
      resultM = moy! ~/ int.parse(selectedOwners!);
      _moyenne.text = resultM.toString();

      double? cmM = double.tryParse(resultM.toString()) ?? 0;
      _moyenne.text = (cmM / 100).toStringAsFixed(2);

      //max
      maxi = [
        int.parse(_1Controller.text),
        int.parse(_2Controller.text)
      ].reduce(max);
      resultMax = maxi;
      _maximum.text = resultMax.toString();

      double? cmMax = double.tryParse(resultMax.toString()) ?? 0;
      _maximum.text = (cmMax / 100).toStringAsFixed(2);

      //min
      mini = [
        int.parse(_1Controller.text),
        int.parse(_2Controller.text)
      ].reduce(min);
      resultMin = mini;
      _minimum.text = resultMin.toString();

      double? cmMin = double.tryParse(resultMin.toString()) ?? 0;
      _minimum.text = (cmMin / 100).toStringAsFixed(2);
    }
    if (selectedOwners == "3"){
      if (_1Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 1er rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°1",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      if (_2Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 2eme rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°2",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      if (_3Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 3eme rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°3",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }

      //somme
      sum = int.parse(_1Controller.text) +
          int.parse(_2Controller.text)  +
          int.parse(_3Controller.text);
      resultS = sum;
      _somme.text = resultS.toString();

      double? cmS = double.tryParse(resultS.toString()) ?? 0;
      _somme.text = (cmS / 100).toStringAsFixed(2);

      //moyenne
      moy = int.parse(_1Controller.text) +
          int.parse(_2Controller.text)  +
          int.parse(_3Controller.text);
      resultM = moy! ~/ int.parse(selectedOwners!);
      _moyenne.text = resultM.toString();

      double? cmM = double.tryParse(resultM.toString()) ?? 0;
      _moyenne.text = (cmM / 100).toStringAsFixed(2);

      //max
      maxi = [
        int.parse(_1Controller.text),
        int.parse(_2Controller.text),
        int.parse(_3Controller.text),
      ].reduce(max);
      resultMax = maxi;
      _maximum.text = resultMax.toString();

      double? cmMax = double.tryParse(resultMax.toString()) ?? 0;
      _maximum.text = (cmMax / 100).toStringAsFixed(2);

      //min
      mini = [
        int.parse(_1Controller.text),
        int.parse(_2Controller.text),
        int.parse(_3Controller.text),
      ].reduce(min);
      resultMin = mini;
      _minimum.text = resultMin.toString();

      double? cmMin = double.tryParse(resultMin.toString()) ?? 0;
      _minimum.text = (cmMin / 100).toStringAsFixed(2);
    }
    if (selectedOwners == "4"){
      if (_1Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 1er rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°1",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      if (_2Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 2eme rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°2",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      if (_3Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 3eme rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°3",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      if (_4Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 4eme rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°4",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      //somme
      sum = int.parse(_1Controller.text) +
          int.parse(_2Controller.text) +
          int.parse(_3Controller.text) +
          int.parse(_4Controller.text);
      resultS = sum;
      _somme.text = resultS.toString();

      double? cmS = double.tryParse(resultS.toString()) ?? 0;
      _somme.text = (cmS / 100).toStringAsFixed(2);

      //moyenne
      moy = int.parse(_1Controller.text) +
          int.parse(_2Controller.text) +
          int.parse(_3Controller.text) +
          int.parse(_4Controller.text);
      resultM = moy! ~/ int.parse(selectedOwners!);
      _moyenne.text = resultM.toString();

      double? cmM = double.tryParse(resultM.toString()) ?? 0;
      _moyenne.text = (cmM / 100).toStringAsFixed(2);

      //max
      maxi = [
        int.parse(_1Controller.text),
        int.parse(_2Controller.text),
        int.parse(_3Controller.text),
        int.parse(_4Controller.text),
      ].reduce(max);
      resultMax = maxi;
      _maximum.text = resultMax.toString();

      double? cmMax = double.tryParse(resultMax.toString()) ?? 0;
      _maximum.text = (cmMax / 100).toStringAsFixed(2);

      //min
      mini = [
        int.parse(_1Controller.text),
        int.parse(_2Controller.text),
        int.parse(_3Controller.text),
    int.parse(_4Controller.text),
      ].reduce(min);
      resultMin = mini;
      _minimum.text = resultMin.toString();

      double? cmMin = double.tryParse(resultMin.toString()) ?? 0;
      _minimum.text = (cmMin / 100).toStringAsFixed(2);
    }
    if (selectedOwners == "5"){
      if (_1Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 1er rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°1",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      if (_2Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 2eme rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°2",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      if (_3Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 3eme rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°3",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      if (_4Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 4eme rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°4",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      if (_5Controller.text == '') {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Entrez la taille du 5eme rugbyman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                content: Text(
                  "Vous devez entrer la taille du rugbyman N°5",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Fermer',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
        return;
      }
      //somme
      sum = int.parse(_1Controller.text) +
          int.parse(_2Controller.text) +
          int.parse(_3Controller.text) +
          int.parse(_4Controller.text) +
          int.parse(_5Controller.text);
      resultS = sum;
      _somme.text = resultS.toString();

      double? cmS = double.tryParse(resultS.toString()) ?? 0;
      _somme.text = (cmS / 100).toStringAsFixed(2);

      //moyenne
      moy = int.parse(_1Controller.text) +
          int.parse(_2Controller.text) +
          int.parse(_3Controller.text) +
          int.parse(_4Controller.text) +
          int.parse(_5Controller.text);
      resultM = moy! ~/ int.parse(selectedOwners!);
      _moyenne.text = resultM.toString();

      double? cmM = double.tryParse(resultM.toString()) ?? 0;
      _moyenne.text = (cmM / 100).toStringAsFixed(2);

      //max
      maxi = [
        int.parse(_1Controller.text),
        int.parse(_2Controller.text),
        int.parse(_3Controller.text),
        int.parse(_4Controller.text),
        int.parse(_5Controller.text),
      ].reduce(max);
      resultMax = maxi;
      _maximum.text = resultMax.toString();

      double? cmMax = double.tryParse(resultMax.toString()) ?? 0;
      _maximum.text = (cmMax / 100).toStringAsFixed(2);

      //min
      mini = [
        int.parse(_1Controller.text),
        int.parse(_2Controller.text),
        int.parse(_3Controller.text),
    int.parse(_4Controller.text),
        int.parse(_5Controller.text),
      ].reduce(min);
      resultMin = mini;
      _minimum.text = resultMin.toString();

      double? cmMin = double.tryParse(resultMin.toString()) ?? 0;
      _minimum.text = (cmMin / 100).toStringAsFixed(2);
    }

    setState(() {
      _refController.text;
    });
  }

  //Nbre de rugbyman...
  List<DropdownMenuItem<String>>? dropDownOwners;
  String? selectedOwners;
  List<String> ownersList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Alexis LE GOFF')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Entrée :',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Combien de rugbyman il y a :",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 1000,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.blue,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15.0),
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: selectedOwners,
                            icon: Icon(
                              Icons.arrow_downward,
                              color: Colors.blue,
                            ),
                            isExpanded: true,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontStyle: FontStyle.italic),
                            items: dropDownOwners,
                            onChanged: (String? selectedSize) {
                              setState(() {
                                selectedOwners = selectedSize;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    selectedOwners != "Nbre de rugbyman..." ? Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 8),
                      child: Container(
                        color: Colors.grey.shade200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text ('Vert', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 17),),
                                  Text(' = Supérieur ou égal à la taille de référence')
                                ],
                              ),
                              Row(
                                children: [
                                  Text ('Rouge', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17),),
                                  Text(' = Inférieur à la taille de référence')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) : Container(),
                    Column(
                      children: [
                        selectedOwners == '1'
                            ? Column(
                                children: [
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          "1er rugbyman",
                                          style: TextStyle(
                                            color: _refController.text != ''
                                                ? int.parse(_refController.text) <= int.parse(_1Controller.text) ? Colors.green : Colors.red
                                                : Colors.blue,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  TextFormField(
                                    controller: _1Controller,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: _refController.text != ''
                                        ? int.parse(_refController.text) <= int.parse(_1Controller.text) ? Colors.green : Colors.red
                                        : Colors.black,),
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 16,
                                      ),
                                      hintText: 'Entrez sa taille en cm',
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Veuillez remplir le champ obligatoire';
                                      }
                                      return null;
                                    },
                                    inputFormatters: [
                                      FilteringTextInputFormatter.deny(
                                          new RegExp(r"\s\b|\b\s"))
                                    ],
                                  ),
                                ],
                              )
                            : Column(),
                        selectedOwners == '2'
                            ? Column(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                              "1er rugbyman",
                                              style: TextStyle(
                                                color: _refController.text != ''
                                                    ? int.parse(_refController.text) <= int.parse(_1Controller.text) ? Colors.green : Colors.red
                                                    : Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      TextFormField(
                                        controller: _1Controller,
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(color: _refController.text != ''
                                            ? int.parse(_refController.text) <= int.parse(_1Controller.text) ? Colors.green : Colors.red
                                            : Colors.black,),
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 16,
                                          ),
                                          hintText: 'Entrez sa taille en cm',
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Veuillez remplir le champ obligatoire';
                                          }
                                          return null;
                                        },
                                        inputFormatters: [
                                          FilteringTextInputFormatter.deny(
                                              new RegExp(r"\s\b|\b\s"))
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                              "2eme rugbyman",
                                              style: TextStyle(
                                                color: _refController.text != ''
                                                    ? int.parse(_refController.text) <= int.parse(_2Controller.text) ? Colors.green : Colors.red
                                                    : Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      TextFormField(
                                        controller: _2Controller,
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(color: _refController.text != ''
                                            ? int.parse(_refController.text) <= int.parse(_2Controller.text) ? Colors.green : Colors.red
                                            : Colors.black,),
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 16,
                                          ),
                                          hintText: 'Entrez sa taille en cm',
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Veuillez remplir le champ obligatoire';
                                          }
                                          return null;
                                        },
                                        inputFormatters: [
                                          FilteringTextInputFormatter.deny(
                                              new RegExp(r"\s\b|\b\s"))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Column(),
                        selectedOwners == '3'
                            ? Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "1er rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_1Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _1Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_1Controller.text) ? Colors.green : Colors.red
                                      : Colors.black,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "2eme rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_2Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _2Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_2Controller.text) ? Colors.green : Colors.red
                                      : Colors.black,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "3eme rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_3Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _3Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_3Controller.text) ? Colors.green : Colors.red
                                      : Colors.black,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                            : Column(),
                        selectedOwners == '4'
                            ? Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "1er rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_1Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _1Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_1Controller.text) ? Colors.green : Colors.red
                                      : Colors.black,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "2eme rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_2Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _2Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_2Controller.text) ? Colors.green : Colors.red
                                      : Colors.black,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "3eme rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_3Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _3Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_3Controller.text) ? Colors.green : Colors.red
                                      : Colors.black,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "4eme rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_4Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _4Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_4Controller.text) ? Colors.green : Colors.red
                                      : Colors.blue,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                            : Column(),
                        selectedOwners == '5'
                            ? Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "1er rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_1Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _1Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_1Controller.text) ? Colors.green : Colors.red
                                      : Colors.black,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "2eme rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_2Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _2Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_2Controller.text) ? Colors.green : Colors.red
                                      : Colors.black,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "3eme rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_3Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _3Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_3Controller.text) ? Colors.green : Colors.red
                                      : Colors.black,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "4eme rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_4Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _4Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_4Controller.text) ? Colors.green : Colors.red
                                      : Colors.blue,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        "5eme rugbyman",
                                        style: TextStyle(
                                          color: _refController.text != ''
                                              ? int.parse(_refController.text) <= int.parse(_5Controller.text) ? Colors.green : Colors.red
                                              : Colors.blue,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: _5Controller,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: _refController.text != ''
                                      ? int.parse(_refController.text) <= int.parse(_5Controller.text) ? Colors.green : Colors.red
                                      : Colors.black,),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    hintText: 'Entrez sa taille en cm',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Veuillez remplir le champ obligatoire';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        new RegExp(r"\s\b|\b\s"))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                            : Column(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Entrez la taille de référence en cm :",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          controller: _refController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.black),
                          maxLines: 1,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            hintText: 'Ex : 190',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Veuillez remplir le champ obligatoire';
                            }
                            return null;
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(
                                new RegExp(r"\s\b|\b\s"))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Sortie :',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      color: Colors.grey.shade200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text ('Vert', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 17),),
                                Text(' = Supérieur ou égal à la taille de référence')
                              ],
                            ),
                            Row(
                              children: [
                                Text ('Rouge', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17),),
                                Text(' = Inférieur à la taille de référence')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Somme des tailles : ",
                                style: TextStyle(
                                  color: _refController.text != ''
                                      ? int.parse(_refController.text) <= resultS! ? Colors.green : Colors.red
                                      : Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          controller: _somme,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: _refController.text != ''
                              ? int.parse(_refController.text) <= resultS! ? Colors.green : Colors.red
                              : Colors.black, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          decoration: InputDecoration(
                            labelText: "En mètre",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            hintText: 'Cliquez sur le bouton CALCULER en bas',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(
                                new RegExp(r"\s\b|\b\s"))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Moyenne des tailles : ",
                                style: TextStyle(
                                  color: _refController.text != ''
                                      ? int.parse(_refController.text) <= resultM! ? Colors.green : Colors.red
                                      : Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          controller: _moyenne,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: _refController.text != ''
                              ? int.parse(_refController.text) <= resultM! ? Colors.green : Colors.red
                              : Colors.black, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          decoration: InputDecoration(
                            labelText: "En mètre",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            hintText: 'Cliquez sur le bouton CALCULER en bas',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(
                                new RegExp(r"\s\b|\b\s"))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Taille maximum : ",
                                style: TextStyle(
                                  color: _refController.text != ''
                                      ? int.parse(_refController.text) <= resultMax! ? Colors.green : Colors.red
                                      : Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          controller: _maximum,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: _refController.text != ''
                              ? int.parse(_refController.text) <= resultMax! ? Colors.green : Colors.red
                              : Colors.black, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          decoration: InputDecoration(
                            labelText: "En mètre",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            hintText: 'Cliquez sur le bouton CALCULER en bas',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(
                                new RegExp(r"\s\b|\b\s"))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Taille minimum : ",
                                style: TextStyle(
                                  color: _refController.text != ''
                                      ? int.parse(_refController.text) <= resultMin! ? Colors.green : Colors.red
                                      : Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          controller: _minimum,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: _refController.text != ''
                              ? int.parse(_refController.text) <= resultMin! ? Colors.green : Colors.red
                              : Colors.black, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          decoration: InputDecoration(
                            labelText: "En mètre",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            hintText: 'Cliquez sur le bouton CALCULER en bas',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(
                                new RegExp(r"\s\b|\b\s"))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
      bottomSheet: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: NeumorphicButton(
                style: NeumorphicStyle(color: Theme.of(context).primaryColor),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'CALCULER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  validate();


                },
              ),
            ),
          )
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownItems(List size) {
    List<DropdownMenuItem<String>> items = [];
    for (String size in size) {
      items.add(new DropdownMenuItem(value: size, child: new Text(size)));
    }
    return items;
  }
}
