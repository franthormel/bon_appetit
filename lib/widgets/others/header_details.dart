import 'package:flutter/material.dart';

class HeaderDetailsWidget extends StatelessWidget {
  final String header;
  final Widget child;
  final bool hasDivider;

  const HeaderDetailsWidget({
    required this.child,
    required this.header,
    this.hasDivider = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header, style: Theme.of(context).textTheme.headline5),
        const SizedBox(height: 10.0),
        if (hasDivider)
          Column(children: const [Divider(), SizedBox(height: 10.0)]),
        child,
      ],
    );
  }
}
