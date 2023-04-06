import 'package:flutter/material.dart';

class ImageBackground extends StatelessWidget {
  const ImageBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        return Image(
          width: double.infinity,
          height: double.infinity,
          fit: orientation == Orientation.landscape
              ? BoxFit.fill
              : BoxFit.fitHeight,
          image: const AssetImage('assets/numbers.jpg'),
        );
      },
    );
  }
}
