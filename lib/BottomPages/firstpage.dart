import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'dart:io'; // Add this import.

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: SafeArea(
            child: Image.asset(
              "assets/homepage.jpg",
              width: 3000,
              height: 3000,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
