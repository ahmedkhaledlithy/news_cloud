import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final double screenWidth,screenHeight;
  final String url;
  const ImageWidget({Key? key,required this.screenHeight,required this.screenWidth,required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      width: screenWidth,
      height: screenHeight * 0.45,

    );
  }
}