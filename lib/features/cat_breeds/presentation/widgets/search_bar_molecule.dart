import 'package:cat_breeds/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class SearchBarMolecule extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String? hintText;

  const SearchBarMolecule({super.key, required this.onChanged, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText ?? AppLocalizations.of(context)!.searchHint,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          filled: true,
          fillColor: Colors.grey[100],
        ),
      ),
    );
  }
}
