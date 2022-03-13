import 'package:flutter/material.dart';

import 'home.dart';

class Mercimek extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MercimekState();
  }
}

class _MercimekState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Çorbalar"),
        ),
        body: Center(

          child: Column(
            children: [
              SizedBox(height: 20,),
              CircleAvatar(
                radius: 120,
                backgroundColor: Colors.lime,
                backgroundImage: NetworkImage(
                    "https://i12.haber7.net//haber/haber7/photos/2018/46/lokanta_usulu_mercimek_corbasi_nasil_yapilir_1542098338_5594.Jpeg"),
              ),
              SizedBox(height: 20,),
              Text("                  MERCİMEK ÇORBASI\n\n\n3 yemek kaşığıayçiçek yağı\n1 adetkuru soğan(iri doğranmış)\n1 yemek kaşığıun\n1 adethavuç(iri doğranmış)\n adetpatates(büyük boy, iri doğranmış)\n1 tatlı kaşığıtuz\n1,5 su bardağıkırmızı ya da sarı mercimek"),
            ],
          ),
        ));
  }
}
