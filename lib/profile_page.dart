import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        ClipPath(
          child: Container(color: Colors.lightGreen.withOpacity(0.8)),
          clipper: getClipper(),
        ),
        Positioned(
            width: 420.0,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: <Widget>[
                Container(

                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ]),
                         ),
                
                new Padding(padding: EdgeInsets.only(top: 50.0),),
                Text(
                  'AngkotMania123',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                
                new Padding(padding: EdgeInsets.only(top: 20.0),),
                new Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                  'angkot@gmail.com',
                  style: TextStyle( fontSize: 17.0,),
                  )),
                ),

                new Padding(padding: EdgeInsets.only(top: 20.0),),
                new Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                  'Laki-laki',
                  style: TextStyle( fontSize: 17.0,),
                  )),
                ),

                new Padding(padding: EdgeInsets.only(top: 20.0),),
                new Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                  'Jalan Bara 1',
                  style: TextStyle( fontSize: 17.0,),
                  )),
                ),

            
               new Padding(padding: EdgeInsets.only(top: 90.0),),
                 Container(
                    alignment: Alignment.bottomCenter,
                    height: 40.0,
                    width: 160.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.redAccent,
                      color: Colors.green,
                      elevation: 10.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    )),
                new Padding(padding: EdgeInsets.only(top: 20.0),),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 40.0,
                    width: 160.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.redAccent,
                      color: Colors.red,
                      elevation: 10.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Log out',
                            style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ))
                    
              ],
            ))
      ],
    ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}


                
                
               