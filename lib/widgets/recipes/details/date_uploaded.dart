import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecipeDetailsDateUploadedWidget extends StatelessWidget {
  final DateTime dateUploaded;

  const RecipeDetailsDateUploadedWidget(
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
