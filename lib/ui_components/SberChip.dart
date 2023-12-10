import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/constants.dart';

class SberChip extends StatefulWidget {
  final String title;

  const SberChip({Key? key, required this.title}) : super(key: key);

  @override
  State<SberChip> createState() => _SberChipState();
}

class _SberChipState extends State<SberChip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.title),
      selected: _isSelected,
      onSelected: (_) {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
    );
  }
}
