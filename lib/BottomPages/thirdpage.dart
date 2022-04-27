import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'dart:io'; // Add this import.
import 'package:webview_flutter/webview_flutter.dart'
    show SurfaceAndroidWebView, WebView;

class HomePageee extends StatelessWidget {
  const HomePageee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const WebView(
        initialUrl: 'https://telegra.ph/Interview-Questions-03-21',
      ),
    );
  }
}
