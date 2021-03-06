import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';

class AppbarTitleWidget extends StatelessWidget {
  const AppbarTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<RouteProvider>(context, listen: false).goToHomepage();
      },
      child: SvgPicture.asset('assets/logo.svg', height: 50.0),
    );
  }
}
