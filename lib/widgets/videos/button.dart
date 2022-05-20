import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';
import '../../style/index.dart';

class VideoButtonWidget extends StatelessWidget {
  const VideoButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Provider.of<RouteProvider>(context, listen: false).push(
          const DrawerVideosRoute(),
        );
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: BonAppetitColors.black,
        primary: BonAppetitColors.white,
        side: const BorderSide(color: BonAppetitColors.white, width: 2.0),
      ),
      child: const Text('SEE MORE VIDEOS'),
    );
  }
}
