import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

_l1URLBrowser() async {
  const url = 'https://youtu.be/U3aXWizDbQ4';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_l2URLBrowser() async {
  const url =
      'https://www.youtube.com/playlist?list=PLdo5W4Nhv31a8UcMN9-35ghv8qyFWD9_S';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_l3URLBrowser() async {
  const url =
      'https://www.youtube.com/playlist?list=PLBlnK6fEyqRggZZgYpPMUxdY1CYkZtARR';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_l4URLBrowser() async {
  const url = 'https://youtu.be/KJgsSFOSQv0';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_l5URLBrowser() async {
  const url = 'https://youtu.be/87SH2Cn0s9A';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_l6URLBrowser() async {
  const url =
      'https://www.youtube.com/playlist?list=PL9ooVrP1hQOFrNo8jK9Yb2g2eMHz7hTu9';
  if (await canLaunch(url)) {
    await launch(url,
        forceSafariVC: true, forceWebView: true, enableJavaScript: true);
  } else {
    throw 'Could not launch $url';
  }
}

class Homepagee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          onPressed: _l1URLBrowser,
          child: Text("C in 100 Seconds"),
        ),
        ElevatedButton(
          onPressed: _l2URLBrowser,
          child: Text("Jenny Lectures Playlist"),
        ),
        ElevatedButton(
          onPressed: _l3URLBrowser,
          child: Text("Neso Academy"),
        ),
        ElevatedButton(
          onPressed: _l4URLBrowser,
          child: Text("C Programming Tutorial for Beginners"),
        ),
        ElevatedButton(
          onPressed: _l5URLBrowser,
          child: Text("C Full Course "),
        ),
        ElevatedButton(
          onPressed: _l6URLBrowser,
          child: Text("Learn C Programming || Edureka"),
        ),
        SizedBox(
          width: double.infinity,
        )
      ],
    );
  }
}
