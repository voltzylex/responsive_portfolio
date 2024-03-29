import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AreaInfo extends StatelessWidget {
  final String title;
  final String text;
  final String url;
  const AreaInfo({super.key, required this.title, required this.text, this.url = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: primaryColor),
          ),
          InkWell(onTap: url.isEmpty ? null : () => launchUrlString(url), child: Text(text)),
        ],
      ),
    );
  }
}
