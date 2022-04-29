import 'package:flutter/material.dart';

import '../../../../../style/index.dart';
import 'apply.dart';
import 'cancel.dart';

class FilterDialogActionsWidget extends StatelessWidget {
  const FilterDialogActionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: BonAppetitColors.white,
        boxShadow: [
          BoxShadow(
            color: BonAppetitColors.platinum,
            offset: Offset(0, -1),
            blurRadius: 1.0,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // TODO: Get actual number from SearchProvider
          const Text("100 matching results"),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FilterDialogActionApplyWidget(),
              SizedBox(width: 10.0),
              FilterDialogActionCancelWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
