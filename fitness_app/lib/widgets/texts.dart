import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FancyText extends StatelessWidget {
  final String text;

  const FancyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.lobster(
        fontSize: 24,
      ),
    );
  }
}
