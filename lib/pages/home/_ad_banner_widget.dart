import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AdBannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      child: Image.network("https://www.active.com/assets/banner.png"),
      onTap: _launchURL,
    ));
  }
    _launchURL() async {
    const url = 'tel:10000';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
