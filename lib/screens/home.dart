import 'package:flutter/material.dart';
import 'package:flutter_app1/main.dart';
import 'package:flutter_app1/screens/yemekbul.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                "https://st2.depositphotos.com/4398873/9234/v/600/depositphotos_92345936-stock-illustration-fork-and-knife-with-heart.jpg"),
          ),
          Text(
            "YERİZ.COM",
            style: TextStyle(
                fontFamily: 'Trajan Pro',
                //fontStyle:FontStyle.italic ,
                fontSize: 45),
          ),
          buton(),
          SizedBox(height: 20,),
          buton2()
        ],
      )),
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
        Text("TARİFLER"),
      ]),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
        //mesajgoster(context);
      },
    );
  }

  Widget buton2() {
    return RaisedButton(
      color: Colors.lime,
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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Yemekbul()));
        //mesajgoster(context);
      },
    );
  }
}
