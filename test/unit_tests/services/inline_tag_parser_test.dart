import 'package:bon_appetit/services/inline_tag_parser.dart';
import 'package:test/test.dart';

void main() {
  group("InlineTagParser", () {
    const text =
        "<u>There were</u> white out <i>conditions</i> in the <h1>town</h1>; <header>subsequently</header>, <b>the</b> roads were impassable.";

    test('b', () {
      final parser = InlineTagParser(text, "u");

      expect(parser.end, "");
    });
  });
}
