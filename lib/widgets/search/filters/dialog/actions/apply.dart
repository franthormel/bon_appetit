import 'package:flutter/material.dart';

import '../../../../../style/index.dart';
import 'button.dart';

class FiltersDialogActionApplyWidget extends StatelessWidget {
  const FiltersDialogActionApplyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FiltersDialogActionButtonWidget(
      text: "APPLY",
      onPressed: () {
        // TODO: Implement on SearchProvider
        Navigator.pop(context);
      },
      backgroundColor: BonAppetitColors.black,
      textColor: BonAppetitColors.white,
    );
  }
}
