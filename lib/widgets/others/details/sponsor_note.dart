import 'package:flutter/material.dart';

import '../../../services/assets_loader.dart';
import '../../../style/theme_radley.dart';

class SponsorNoteWidget extends StatelessWidget {
  const SponsorNoteWidget({Key? key}) : super(key: key);

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
