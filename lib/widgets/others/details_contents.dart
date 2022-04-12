import 'package:bon_appetit/widgets/index.dart';
import 'package:flutter/material.dart';

import 'will_pop.dart';

/// Use this mixin when using [DetailsContentsWidget]
mixin DetailsContentsMixin {
  /// The contents of this method will serve as the children of
  /// [DetailsContentsWidget]'s ListView
  List<Widget> get children;
}

class DetailsContentsWidget extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets? padding;

  const DetailsContentsWidget({
    required this.children,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopWidget(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ListView.separated(
            padding: padding ?? const EdgeInsets.symmetric(vertical: 21.0),
            itemBuilder: (context, index) => children[index],
            itemCount: children.length,
            separatorBuilder: (context, index) => const SeparatorWidget(),
          ),
        ),
      ),
    );
  }
}
