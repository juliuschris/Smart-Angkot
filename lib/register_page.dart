
import 'package:flutter/material.dart';
import 'tabcontroller.dart';

class Register extends StatefulWidget {
  static String tag = 'register-page';
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState extends State<Register> {

  String _jk="";

  void _pilihjk(String value){
    setState(() {
     _jk=value; 
    });
  }

  void kirimdata(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama lengkap : ${controllerUsername.text}"),
            new Text("Email : ${controllerEmail.text}"),
            new Text("No. Hp : ${controllerHP.text}"),
            new Text("Jenis Kelamin: $_jk")
          ],
        )
      )
    );
    showDialog(context: context,child: alertDialog);
  }

  TextEditingController controllerUsername= new TextEditingController();
  TextEditingController controllerEmail= new TextEditingController();
  TextEditingController controllerHP= new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sign Up"),
        backgroundColor: Colors.green,
      ),

    body: ListView(
      children: <Widget>[
        new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[

              new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                controller: controllerUsername,
                decoration: new InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                 ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                controller: controllerEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(
                  hintText: "E-mail",
                  labelText: "E-mail",
                  ),
              ),

               new Padding(padding: new EdgeInsets.only(top: 10.0),),
               new TextField(
                 obscureText: true,
                decoration: new InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  ),
              ),
               new Padding(padding: new EdgeInsets.only(top: 10.0),),
               new TextField(
                 obscureText: true,
                decoration: new InputDecoration(
                  hintText: "Confirm Password",
                  labelText: "Confirm Password",
                ),
              ),
              
              new Padding(padding: EdgeInsets.only(top: 20.0),),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(

                  child: Text(
                    "Jenis Kelamin",
                  ),
                ),
              ),

               new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Radio(
                            value: "laki",
                            groupValue: _jk,
                            onChanged: (String value){
                              _pilihjk(value);
                            },
                          ),
                          new Text(
                            'Laki-laki',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                          new Radio(
                            value: "perempuan",
                            groupValue: _jk,
                            onChanged: (String value){
                              _pilihjk(value);
                            },

                          ),
                          new Text(
                            'Perempuan',
                            style: new TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),

               new Padding(padding: new EdgeInsets.only(top: 10.0),),
               new TextField(
                 controller: controllerHP,
                 keyboardType: TextInputType.phone,
                 decoration: new InputDecoration(
                  hintText: "Nomor HP",
                  labelText: "Nomor HP",
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
                child: new Text("Sign Up",style: TextStyle(color: Colors.white)),
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
        title: Text('Success!'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Account Created'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Ashiaaap!'),
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
 
