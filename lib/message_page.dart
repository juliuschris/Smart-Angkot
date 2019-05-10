
import 'package:flutter/material.dart';
import 'tabcontroller.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: Container(),
        title: new Text("E-Complaint"),
        backgroundColor: Colors.green,
      ),

    body: ListView(
      children: <Widget>[
        new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[

              new Padding(padding: EdgeInsets.only(top: 20.0),),
                new Align(
                  alignment: Alignment(-0.9,0.0),
                  child: Container(
                    child: Text(
                  'Message:',
                  style: TextStyle( fontSize: 17.0,),
                  )),
                ),

              new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                  maxLength: 200,
                  maxLines: 10,
                  decoration: new InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  hintText: "Ketik di sini",
                 ),
              ),

              new Padding(padding: EdgeInsets.only(top: 10),),
              new ButtonTheme(
                height: 40,
                minWidth: 350,
                child: RaisedButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                ),
                color: Colors.lightBlueAccent,
                child: new Text("Send Message",style: TextStyle(color: Colors.white)),
                onPressed: _alert,
              )),

            ],
            
          )
        ),
      ],
    )

    );
  }

  Future<void> _alert() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Pesan Telah Dikirim'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Terimakasih, anda telah membantu kami dalam memaksimalkan pelayanan angkot Bogor'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Okay!'),
            onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bar()),);
                },
          ),
        ],
      );
    },
  );
}
}
 
