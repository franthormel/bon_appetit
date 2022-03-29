import 'package:flutter/material.dart';

import 'will_pop.dart';

/// Use this mixin when using [DetailsContentsWidget]
mixin DetailsContentsMixin {
  List<Widget> get children;
}

class DetailsContentsWidget extends StatelessWidget {
  final List<Widget> children;

  const DetailsContentsWidget({
    required this.children,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopWidget(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ListView.separated(
            padding: const EdgeInsets.only(bottom: 35.0, top: 21.0),
            itemBuilder: (context, index) => children[index],
            itemCount: children.length,
            separatorBuilder: (context, index) => const SizedBox(height: 20.0),
          ),
        ),
      ),
    );
  }
}
