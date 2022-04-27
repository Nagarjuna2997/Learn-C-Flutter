import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'dart:io'; // Add this import.
import 'package:webview_flutter/webview_flutter.dart'
    show SurfaceAndroidWebView, WebView;

class Page11 extends StatelessWidget {
  const Page11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Files'),
      ),
      body: const WebView(
        initialUrl: 'https://telegra.ph/Files-03-18-2',
      ),
    );
  }
}
