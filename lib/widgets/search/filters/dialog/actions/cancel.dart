import 'package:flutter/material.dart';

import '../../../../../style/index.dart';
import 'button.dart';

class FiltersDialogActionCancelWidget extends StatelessWidget {
  const FiltersDialogActionCancelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FiltersDialogActionButtonWidget(
      text: "CANCEL",
      onPressed: () {
        // TODO: Delete all selected values from checkboxes on SearchProvider
        Navigator.pop(context);
      },
      backgroundColor: BonAppetitColors.white,
      borderColor: BonAppetitColors.black,
    );
  }
}
