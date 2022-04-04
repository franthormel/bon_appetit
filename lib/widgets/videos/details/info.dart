import 'package:flutter/material.dart';

import '../../others/horizontal_padding.dart';

class VideoEntryInfoWidget extends StatelessWidget {
  const VideoEntryInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HorizontalPaddingWidget(
      child: Text(
        "TODO: Display [series], [season], [episode]  IF ANY (best make it as getter)",
      ),
    );
  }
}
