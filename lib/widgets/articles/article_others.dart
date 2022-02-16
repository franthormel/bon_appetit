import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';

class OtherArticlesWidget extends StatelessWidget {
  const OtherArticlesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);

    return Container();
  }
}
