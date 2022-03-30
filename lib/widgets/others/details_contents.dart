import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/index.dart';
import 'will_pop.dart';

/// Use this mixin when using [DetailsContentsWidget]
mixin DetailsContentsMixin {
  /// The contents of this method will serve as the children of
  /// [DetailsContentsWidget]'s ListView
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
        body: GestureDetector(
          onDoubleTap: () {
            final route = Provider.of<RouteProvider>(context, listen: false);
            route.pop();
          },
          child: Center(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 35.0, top: 21.0),
              itemBuilder: (context, index) => children[index],
              itemCount: children.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 25.0),
            ),
          ),
        ),
      ),
    );
  }
}
