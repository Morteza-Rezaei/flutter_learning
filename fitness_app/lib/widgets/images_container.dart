import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.height,
    required this.width,
    required this.imagePath,
    required this.shadow,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.fit = BoxFit.cover,
  });

  final double height;
  final double width;
  final String imagePath;
  final BoxShadow shadow;
  final BorderRadius borderRadius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          shadow,
        ],
        borderRadius: borderRadius,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: fit,
        ),
      ),
    );
  }
}
