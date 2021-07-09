import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'Hospitals.dart';
import 'Info.dart';
import 'chat_screen.dart';
import 'home_screen.dart';
import 'stats_screen.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int pageIndex = 0;

// creating all pages
  final home = new HomeScreen();
  final chat = new Chat();
  final stat = new StatsScreen();
  final info = new Info();
  final map = new PlacesPage();

  Widget showPage = new HomeScreen();

  Widget pageChooser(int page) {
    switch (page) {
      case 0:
        return stat;
        break;
      case 1:
        return map;
        break;
      case 2:
        return home;
        break;
      case 3:
        return chat;
        break;
      case 4:
        return info;
      default:
        return home;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        //initialIndex : pageIndex,
        color: Colors.green[400],
        backgroundColor: Colors.white70,
        buttonBackgroundColor: Colors.black,
        height: 60,
        items: [
          Icon(Icons.dashboard, size: 30, color: Colors.white,),
          Icon(Icons.map, size: 30, color: Colors.white,),
          Icon(Icons.home, size: 30, color: Colors.white,),
          Icon(Icons.chat, size: 30, color: Colors.white,),
          Icon(Icons.info, size: 30, color: Colors.white,),
        ],
        animationDuration: Duration(
          milliseconds: 200,
        ),
        index: 2,
        onTap: (index) {
          setState(() {
            showPage = pageChooser(index);
          });
        },
        animationCurve: Curves.bounceInOut,
      ),
      body: Container(
        child: Center(
          child: showPage,
        ),
      ),
    );
  }
}
