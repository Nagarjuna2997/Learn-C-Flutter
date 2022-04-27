import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'dart:io'; // Add this import.
import 'package:webview_flutter/webview_flutter.dart'
    show SurfaceAndroidWebView, WebView;

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Strings'),
      ),
      body: const WebView(
        initialUrl: 'https://telegra.ph/Strings-03-18',
      ),
    );
  }
}
