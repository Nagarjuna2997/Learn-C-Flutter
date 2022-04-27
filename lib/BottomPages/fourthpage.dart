import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

_l1URLBrowser() async {
  const url = 'https://www.youtube.com/channel/UCyKiuaHuTmdxwPEKj6hFdDQ';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class HomePageeee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: _l1URLBrowser,
              icon: Icon(
                // <-- Icon
                Icons.video_file_rounded,
                size: 24.0,
              ),
              label: Text('Subscribe'), // <-- Text
            ),
          ],
        ),
      ),
    );
  }
}
