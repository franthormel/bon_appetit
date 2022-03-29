import 'package:flutter/material.dart';

import '../horizontal_padding.dart';
import 'sponsor_note.dart';

class SponsorNotePaddedWidget extends StatelessWidget {
  const SponsorNotePaddedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HorizontalPaddingWidget(child: SponsorNoteWidget());
  }
}
