import 'package:flutter/material.dart';

class HeaderDetailsWidget extends StatelessWidget {
  final String text;
  final Widget child;
  final bool includeDivider;

  const HeaderDetailsWidget({
    required this.child,
    required this.text,
    this.includeDivider = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: Theme.of(context).textTheme.headline5),
        const SizedBox(height: 10.0),
        if (includeDivider)
          Column(children: const [Divider(), SizedBox(height: 10.0)]),
        child,
      ],
    );
  }
}
