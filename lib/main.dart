import 'package:flutter/material.dart';
import 'package:flutter_app1/models/tarif.dart';
import 'package:flutter_app1/screens/corbalar.dart';
import 'package:flutter_app1/screens/home.dart';
import 'package:flutter_app1/screens/yemekbul.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  String seciliYemek = "alo";

  List<Tarif> tarifler = [
    Tarif("ÇORBALAR", "Mercimek", "Salça", "Soğan"),
    Tarif("ARA SICAKLAR", "Patlıcan", "Kıyma", "Domates"),
    Tarif("TATLILAR", "Pirinç", "Şehriye", "Tereyağı")
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            "YERİZ.COM",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
     Card(
    child: new Column(
    children: [

    new ListTile(
    leading: new Icon(Icons.local_dining, color: Colors.blue,size: 26.0,),
    title: new Text("ÇORBALAR"
    ,style: new TextStyle(fontWeight: FontWeight.w400),),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Corbalar()));
        //mesajgoster(context);
      },
    ),
    new Divider(color: Colors.blue,indent: 160.0,),

    new ListTile(
    leading: new Icon(Icons.local_dining, color: Colors.blue, size: 26.0,),
    title: new Text("ARA SICAKLAR"
    ,style: new TextStyle(fontWeight: FontWeight.w400),),
    ),
      new Divider(color: Colors.blue,indent: 160.0,),
      new ListTile(
       //tileColor: Colors.,
        leading: new Icon(Icons.local_dining, color: Colors.blue, size: 26.0,),
        title: new Text("HAMUR İŞİ TARİFLERİ"
          ,style: new TextStyle(fontWeight: FontWeight.w400),),
      ),
      new Divider(color: Colors.blue,indent: 160.0,),
      new ListTile(
        leading: new Icon(Icons.local_dining, color: Colors.blue, size: 26.0,),
        title: new Text("BAKLİYAT YEMEKLERİ"
          ,style: new TextStyle(fontWeight: FontWeight.w400),),
      ),
      new Divider(color: Colors.blue,indent: 160.0,),
    new ListTile(
    leading: new Icon(Icons.local_dining, color: Colors.blue, size: 26.0,),
    title: new Text("TATLILAR"
    ,style: new TextStyle(fontWeight: FontWeight.w400),),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Home()));
        //mesajgoster(context);
      },
    )
    ],
    ),
    ),

        // Expanded(
        //     child: ListView.builder(
        //         itemCount: tarifler.length,
        //         itemBuilder: (BuildContext context, int index) {
        //           return ListTile(
        //             leading: CircleAvatar(
        //               radius: 30,
        //               backgroundColor: Colors.lime,
        //               backgroundImage: NetworkImage(
        //                   "https://lh3.googleusercontent.com/ntVEKuziP8o9gpZSkpuLIYRf72rGbX73ln3-OTARyiku2S_YB2rZGLEUOuAn5DzIDisrRN6n=w1080-h608-p-no-v0"),
        //             ),
        //             title: Text(tarifler[index].isim),
        //             subtitle: Text(tarifler[index].malzeme1 +
        //                 "  " +
        //                 tarifler[index].malzeme2 +
        //                 "  " +
        //                 tarifler[index].malzeme3),
        //             trailing: Icon(Icons.local_dining),
        //             onTap: () {
        //               /*setState(() {
        //                 seciliYemek = tarifler[index].isim;
        //               });*/
        //               Navigator.push(context,
        //                   MaterialPageRoute(builder: (context) => Corbalar()));
        //             },
        //           );
        //         })),
        //Text("Seçili Yemek : "+ seciliYemek),

        // CircleAvatar(
        //   radius: 100,
        //   backgroundColor: Colors.lime,
        //   backgroundImage: NetworkImage(
        //       "https://im.haberturk.com/2019/09/13/ver1568794591/2521922_810x458.jpg"),
        //   child: Text(
        //     "MERCİMEK ÇORBASI",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        SizedBox(height: 200,),
        Row(
          children: <Widget>[
            Flexible(

              fit: FlexFit.tight,
              flex: 1,
              child: RaisedButton(
                color: Colors.amber,
                child: Row(children: <Widget>[
                  SizedBox(width: 120),

                  SizedBox(
                    width: 10,
                    height: 50,
                  ),
                  Text("ANA SAYFA"),
                ]),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home()));
                  //mesajgoster(context);
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
