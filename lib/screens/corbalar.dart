import 'package:flutter/material.dart';
import 'package:flutter_app1/screens/mercimek.dart';

import 'home.dart';

class Corbalar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CorbalarState();
  }
}

class _CorbalarState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Çorbalar"),
      ),

      body: Column(
        children: [
          Card(
            child: new Column(
              children: [

                new ListTile(
                  leading: new Icon(Icons.local_dining, color: Colors.blue,size: 26.0,),
                  title: new Text("MERCİMEK ÇORBASI"
                    ,style: new TextStyle(fontWeight: FontWeight.w400),),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mercimek()));
                    //mesajgoster(context);
                  },
                ),
                new Divider(color: Colors.blue,indent: 160.0,),

                new ListTile(
                  leading: new Icon(Icons.local_dining, color: Colors.blue, size: 26.0,),
                  title: new Text("DOMATES ÇORBASI"
                    ,style: new TextStyle(fontWeight: FontWeight.w400),),
                ),
                new Divider(color: Colors.blue,indent: 160.0,),
                new ListTile(
                  //tileColor: Colors.,
                  leading: new Icon(Icons.local_dining, color: Colors.blue, size: 26.0,),
                  title: new Text("YAYLA ÇORBASI"
                    ,style: new TextStyle(fontWeight: FontWeight.w400),),
                ),
                new Divider(color: Colors.blue,indent: 160.0,),
                new ListTile(
                  leading: new Icon(Icons.local_dining, color: Colors.blue, size: 26.0,),
                  title: new Text("TARHANA ÇORBASI"
                    ,style: new TextStyle(fontWeight: FontWeight.w400),),
                ),
                new Divider(color: Colors.blue,indent: 160.0,),
                new ListTile(
                  leading: new Icon(Icons.local_dining, color: Colors.blue, size: 26.0,),
                  title: new Text("ŞEHRİYE ÇORBASI"
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

        ],
      ),


    );

  }
}
