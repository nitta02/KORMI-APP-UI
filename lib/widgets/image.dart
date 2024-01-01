// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomAssetImage extends StatelessWidget {
  final String assetName;
  final double height;
  const CustomAssetImage({
    Key? key,
    required this.assetName,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        assetName,
      ),
      fit: BoxFit.fill,
      height: height,
    );
  }
}
