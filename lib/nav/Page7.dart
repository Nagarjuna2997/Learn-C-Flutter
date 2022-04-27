import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'dart:io'; // Add this import.
import 'package:webview_flutter/webview_flutter.dart'
    show SurfaceAndroidWebView, WebView;

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arrays'),
      ),
      body: const WebView(
        initialUrl: 'https://telegra.ph/Arrays-03-18',
      ),
    );
  }
}
