import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecipeDetailsPageDateUploadedWidget extends StatelessWidget {
  final DateTime dateUploaded;

  const RecipeDetailsPageDateUploadedWidget(
    this.dateUploaded, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat.yMMMMd().format(dateUploaded),
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.caption,
    );
  }
}
