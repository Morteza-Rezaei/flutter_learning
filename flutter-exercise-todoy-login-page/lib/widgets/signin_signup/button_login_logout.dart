import 'package:flutter/material.dart';

class LoginLogoutButton extends StatelessWidget {
  final String buttonName;
  // to occur when the button is pressed
  final Function()? onTap;

  const LoginLogoutButton({
    super.key,
    this.onTap,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = MediaQuery.of(context).size.width;
          double padding = 20.0;
          if (screenWidth > 600) {
            padding = (screenWidth - 540) / 2;
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    buttonName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
