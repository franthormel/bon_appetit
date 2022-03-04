import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../router/router.gr.dart';
import '../../services/index.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final router = Provider.of<RouterProvider>(context, listen: false);
        router.change(const HomeRoute());
      },
      child: SvgPicture.asset(
        'assets/logo.svg',
        height: 50.0,
      ),
    );
  }
}
