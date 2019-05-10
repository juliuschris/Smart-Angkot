import 'package:flutter/material.dart';
import 'gmaps.dart';
import 'message_page.dart';
import 'profile_page.dart';
import 'tarif.dart';

class Bar extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Bar> {
   int _currentIndex = 0;
  final List<Widget> _children = [
   MapSample(),
   Tarif(),
   Message(),
   MyHomePage(),

 ];
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     
     body: _children[_currentIndex], // new
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
       onTap: onTabTapped, // new
       currentIndex: _currentIndex, // new
       items: [
         new BottomNavigationBarItem(
           icon: Icon(Icons.home),
           title: Text('Tracker :('),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.attach_money),
           title: Text('Cek Tarif')
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.mail),
           title: Text('E-Complaint'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )

       ],
     ),
   );
 }
 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }}