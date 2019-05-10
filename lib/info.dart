import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text('E-Complaint'),
          backgroundColor: Colors.lightGreen[700],
          
        ),

      body: ListView(
        children: <Widget>[
          new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[

             new Container(
               child: Align(
                 alignment: Alignment.topLeft,
                 child: Text("Departure From:",
                 style: TextStyle(
                      fontSize: 20.0,))
               )
             ),
               
              new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                  labelText: "Posisi Awal",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  )
                ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 30.0),),
              new Container(
               child: Align(
                 alignment: Alignment.topLeft,
                 child: Text("Destination:",
                 style: TextStyle(
                      fontSize: 20.0,))
               )
             ),
               
              new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                  labelText: "Posisi Akhir",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  )
                ),
              ),
              
              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new RaisedButton(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.all(12),
                  color: Colors.lightBlueAccent,
                  child: Text('Cek Tarif', style: TextStyle(color: Colors.white)),
                ),
            ],
          )
    ),
        ],
      )

    );


  }
}
      