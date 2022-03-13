import 'package:flutter/material.dart';
import 'package:flutter_app1/models/tarif.dart';
import 'package:flutter_app1/screens/arama.dart';
import 'package:flutter_app1/validation/yemek_validator.dart';

class Yemekbul extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _YemekbulState();
  }
}

class _YemekbulState extends State with YemekValidationMixin {
  var tarif = Tarif.witoutInfo();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("MALZEMELERİ GİR"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Form(
              child: Column(
            children: [
              buildMalzemeField1(),
              buildMalzemeField2(),
              buildMalzemeField3(),
              buton()
            ],
          )),
        ));


  }

  Widget buildMalzemeField1() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Malzeme "),
      validator: validateIsim,
      onSaved: (String value) {
        tarif.malzeme1 = value;
      },
    );
  }

  Widget buildMalzemeField2() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Malzeme "),
      validator: validateIsim,
      onSaved: (String value) {
        tarif.malzeme2 = value;
      },
    );
  }

  Widget buildMalzemeField3() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Malzeme "),
      validator: validateIsim,
      onSaved: (String value) {
        tarif.malzeme3 = value;
      },
    );
  }

 Widget buton() {
   return RaisedButton(
     color: Colors.amber,
     child: Row(children: <Widget>[
       SizedBox(width: 120),
       Icon(Icons.local_dining),
       SizedBox(
         width: 10,
         height: 50,
       ),
       Text("YEMEK BUL"),
     ]),
     onPressed: () {
       Navigator.push(context,
           MaterialPageRoute(builder: (context) => Arama()));
       //mesajgoster(context);
     },
   );
  }
}
