import 'package:flutter/material.dart';
import 'package:flutter_application_20/BottomPages/SecondPage.dart';
import 'package:flutter_application_20/BottomPages/firstpage.dart';
import 'package:flutter_application_20/BottomPages/thirdpage.dart';
import 'package:flutter_application_20/nav/Page1.dart';
import 'package:flutter_application_20/nav/Page10.dart';
import 'package:flutter_application_20/nav/Page11.dart';
import 'package:flutter_application_20/nav/Page2.dart';
import 'package:flutter_application_20/nav/Page3.dart';
import 'package:flutter_application_20/nav/Page4.dart';
import 'package:flutter_application_20/nav/Page5.dart';
import 'package:flutter_application_20/nav/Page6.dart';
import 'package:flutter_application_20/nav/Page7.dart';
import 'package:flutter_application_20/nav/Page8.dart';
import 'package:flutter_application_20/nav/Page9.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'BottomPages/fourthpage.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

_launchURLBrowser() async {
  const url = 'https://www.geeksforgeeks.org/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatefulWidget {
  static final title = 'Learn C programming';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;
  final screens = [
    HomePage(),
    Homepagee(),
    HomePageee(),
    HomePageeee(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Topics'),
            ),
            ListTile(
              title: const Text('Introduction to C'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute1());
              },
            ),
            ListTile(
              title: const Text('Operators'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute2());
              },
            ),
            ListTile(
              title: const Text('Data Types and Variables'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute3());
              },
            ),
            ListTile(
              title: const Text('Conditional Statements'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute4());
              },
            ),
            ListTile(
              title: const Text('Control Statements'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute5());
              },
            ),
            ListTile(
              title: const Text('Functions'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute6());
              },
            ),
            ListTile(
              title: const Text('Arrays'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute7());
              },
            ),
            ListTile(
              title: const Text('Strings'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute8());
              },
            ),
            ListTile(
              title: const Text('Pointers'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute9());
              },
            ),
            ListTile(
              title: const Text('Structures'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute10());
              },
            ),
            ListTile(
              title: const Text('Files'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.of(context).push(_createRoute11());
              },
            ),
          ],
        ),
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.video_file_rounded),
            title: Text("Videos"),
            selectedColor: Colors.teal,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.info_outline_rounded),
            title: Text("Interview Questions"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Subscribe"),
            selectedColor: Colors.red,
          ),
        ],
      ),
    );
  }
}

///Routing
// Goto Page-1
Route _createRoute1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page1(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//Goto Page-2
Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//Goto Page-3
Route _createRoute3() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page3(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//Goto page4
Route _createRoute4() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page4(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//Goto page5
Route _createRoute5() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page5(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//Goto Page6
Route _createRoute6() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page6(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//Gto Page7
Route _createRoute7() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page7(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//Goto Page8
Route _createRoute8() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page8(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//Goto Page9
Route _createRoute9() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page9(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//Goto Page10
Route _createRoute10() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page10(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

//Goto Page11
Route _createRoute11() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page11(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
