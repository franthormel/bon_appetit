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
    return ScaffoldedWillPopWidget(
      appBar: AppBar(),
      body: ListView.separated(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 21.0),
        itemBuilder: (context, i) => children[i],
        itemCount: children.length,
        separatorBuilder: (context, i) => const SizedBox(height: 25.0),
      ),
    );
  }
}
