import 'package:flutter/material.dart';

class SearchPageFiltersActionSizeWidget extends StatelessWidget {
  final Widget child;

  const SearchPageFiltersActionSizeWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: child, height: 40.0, width: 140.0);
  }
}
