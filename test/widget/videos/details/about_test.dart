import 'package:bon_appetit/widgets/videos/details/about.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("VideoDetailsAboutWidget", () {
    testWidgets('about is empty', (WidgetTester t) async {
      await t.pumpWidget(Directionality(
        child: VideoDetailsAboutWidget(
          about: "",
          uploadDate: DateTime(2022, 1, 1),
        ),
        textDirection: TextDirection.ltr,
      ));

      expect(find.text(""), findsNothing);
    });
  });
}
