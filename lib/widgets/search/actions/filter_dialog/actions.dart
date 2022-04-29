import 'package:flutter/material.dart';

import '../../../../style/index.dart';

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
      height: kToolbarHeight,
      child: const Center(child: Text("TODO: PLACE RESULTS HERE")),
    );
  }
}
