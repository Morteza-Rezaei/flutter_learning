import 'package:flutter/material.dart';

class SigninSignUpTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final Icon prefixIcon;

  const SigninSignUpTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.obscureText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double screenWidth = MediaQuery.of(context).size.width;
        double padding = 20.0;
        if (screenWidth > 600) {
          padding = (screenWidth - 540) / 2;
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: TextField(
            // to control the text field
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              prefixIconConstraints: const BoxConstraints(minWidth: 60),
              label: Text(labelText),
              labelStyle: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 14,
              ),
              floatingLabelAlignment: FloatingLabelAlignment.start,
              floatingLabelStyle: const TextStyle(
                color: Colors.blue,
                fontSize: 14,
              ),
              prefixIconColor: MaterialStateColor.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) {
                    return Colors.blue;
                  }
                  if (states.contains(MaterialState.error)) {
                    return Colors.red;
                  }
                  return Colors.grey;
                },
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue.shade100),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        );
      },
    );
  }
}
