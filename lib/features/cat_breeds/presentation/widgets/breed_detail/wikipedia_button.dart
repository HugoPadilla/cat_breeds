import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WikipediaButton extends StatelessWidget {
  final String url;
  final String label;

  const WikipediaButton({super.key, required this.url, required this.label});

  Future<void> _launchUrl() async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: _launchUrl,
        icon: const Icon(Icons.public),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}
