import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilledBtn extends StatelessWidget {
  const FilledBtn({
    super.key,
    required this.onPressed,
    required this.text,
    this.size = const Size(247, 50),
  });

  final Function() onPressed;
  final String text;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.lato(
          fontSize: 20,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class Outlinedbtn extends StatelessWidget {
  const Outlinedbtn({
    super.key,
    required this.onPressed,
    required this.text,
    this.size = const Size(247, 50),
  });

  final Function() onPressed;
  final String text;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.lato(
          fontSize: 20,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
