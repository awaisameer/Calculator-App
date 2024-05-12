// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: camel_case_types
class buttons extends StatelessWidget {
  final String title;
  final Color;
  final VoidCallback onPressed;
  const buttons(
      {super.key, required this.title, this.Color, required this.onPressed, required MaterialColor color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 60,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Color),
            child: Center(
                child: Text(
              title,
              style: TextStyle(fontSize: 24),
            )),
          ),
        ),
      ),
    );
  }
}
