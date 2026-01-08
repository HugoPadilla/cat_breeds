import 'package:flutter/material.dart';

class FeatureChip extends StatelessWidget {
  final String label;

  const FeatureChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label, style: const TextStyle(fontSize: 12)),
      backgroundColor: Colors.blue.shade50,
      side: BorderSide.none,
      visualDensity: VisualDensity.compact,
    );
  }
}
