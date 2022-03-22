import 'package:flutter/material.dart';

class HeaderDetailsWidget extends StatelessWidget {
  final String text;
  final Widget child;

  const HeaderDetailsWidget({
    required this.child,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: Theme.of(context).textTheme.headline5),
        const SizedBox(height: 10.0),
        const Divider(),
        const SizedBox(height: 10.0),
        child,
      ],
    );
  }
}
