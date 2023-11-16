import 'package:flutter/material.dart';

class ResetPasswordButton extends StatelessWidget {
  final Function()? onTap;

  const ResetPasswordButton({
    super.key,
    this.onTap,
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
            padding: EdgeInsets.only(
                right: padding + 10, left: padding, bottom: 20, top: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'Reset Password?',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
