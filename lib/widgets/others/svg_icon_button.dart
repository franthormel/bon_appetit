import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconButtonWidget extends StatelessWidget {
  final String asset;
  final void Function()? onTap;

  const SvgIconButtonWidget(
    this.asset, {
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        child: SvgPicture.asset(asset),
        onTap: onTap,
      ),
    );
  }
}
