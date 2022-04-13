import 'package:flutter/material.dart';

import '../../../services/index.dart';
import '../../../style/index.dart';

class SponsorTextWidget extends StatelessWidget {
  const SponsorTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      builder: (context, snapshot) {
        final data = snapshot.hasData ? snapshot.data! : "";
        return Text(data, style: BonAppetitThemeRadley.bodyText1Italic);
      },
      future: AssetsLoaderService.loadSponsorTxtFile(),
      initialData: "",
    );
  }
}
