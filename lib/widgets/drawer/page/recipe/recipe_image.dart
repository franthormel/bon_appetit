import 'package:flutter/material.dart';

class DrawerPageRecipeImageWidget extends StatelessWidget {
  final String imageUrl;

  const DrawerPageRecipeImageWidget(
    this.imageUrl, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Image");
  }
}
