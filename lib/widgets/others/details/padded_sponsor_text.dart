import 'package:flutter/material.dart';

import '../horizontal_padding.dart';
import 'sponsor_text.dart';

class PaddedSponsorTextWidget extends StatelessWidget {
  const PaddedSponsorTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HorizontalPaddingWidget(child: SponsorTextWidget());
  }
}
