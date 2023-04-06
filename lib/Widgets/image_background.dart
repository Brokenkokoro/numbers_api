import 'package:flutter/material.dart';

class ImageBackground extends StatelessWidget {
  const ImageBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
      height: double.infinity,
      fit: BoxFit.fitHeight,
      image: AssetImage('assets/numbers.jpg'),
    );
  }
}
