import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'dart:io'; // Add this import.
import 'package:webview_flutter/webview_flutter.dart'
    show JavascriptMode, SurfaceAndroidWebView, WebView;

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction to C'),
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://tinyurl.com/wud8yv3v',
      ),
    );
  }
}
