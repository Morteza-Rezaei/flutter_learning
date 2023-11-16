import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final Function()? onTap;

  const SignUpButton({super.key, this.onTap});

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
          padding: EdgeInsets.only(
              right: padding, left: padding, bottom: 10, top: 40),
          child: Row(
            children: [
              const SizedBox(width: 20),
              const Expanded(
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: onTap,
                child: const Text(
                  'Or click here to sign up',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        );
      },
    );
  }
}
