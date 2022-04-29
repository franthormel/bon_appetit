import 'package:flutter/material.dart';

import '../../../../../style/index.dart';
import 'button.dart';

class FilterDialogActionApplyWidget extends StatelessWidget {
  const FilterDialogActionApplyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilterDialogActionButtonWidget(
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
