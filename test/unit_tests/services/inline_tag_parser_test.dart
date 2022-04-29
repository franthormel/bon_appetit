import 'package:bon_appetit/models/others/inline_tag.dart';
import 'package:bon_appetit/services/inline_tag_parser.dart';
import 'package:test/test.dart';

void main() {
  void testInlineTag({required String text, required dynamic matcher}) {
    for (final tag in InlineTag.values) {
      test(tag, () {
        final parser = InlineTagParser(text, tag);
        expect(parser.hasInlineTag, matcher);
      });
    }
  }

  group("InlineTagParser", () {
    const textBold = "<b>Sandwiches for</b> a picnic.";
    const textHeader = "<header>Too much</header> heat today.";
    const text = "A few sandwiches for a picnic";

    group("hasInlineTag", () {
      group("should return false", () {
        const matcher = isFalse;

        group("when text does not contain any tag", () {
          testInlineTag(text: text, matcher: matcher);
        });

        group("when text is empty", () {
          testInlineTag(text: "", matcher: matcher);
        });
      });

      group("should return true when", () {
        const matcher = isTrue;

        test("tag is ${InlineTag.b}", () {
          final parser = InlineTagParser(textBold, InlineTag.b);
          expect(parser.hasInlineTag, matcher);
        });

        test("tag is ${InlineTag.header}", () {
          final parser = InlineTagParser(textHeader, InlineTag.header);
          expect(parser.hasInlineTag, matcher);
        });
      });
    });

    group("textHead", () {
      group("should return null when", () {
        const matcher = isNull;

        group("tag in the text is different from the parameter", () {
          test("${InlineTag.header} on text with b tag", () {
            final parser = InlineTagParser(textBold, InlineTag.header);
            expect(parser.textHead, matcher);
          });

          test("${InlineTag.b} on text with header tag", () {
            final parser = InlineTagParser(textHeader, InlineTag.b);
            expect(parser.textHead, matcher);
          });
        });

        group("text is empty", () {
          test(InlineTag.b, () {
            final parser = InlineTagParser("", InlineTag.b);
            expect(parser.textHead, matcher);
          });

          test(InlineTag.header, () {
            final parser = InlineTagParser("", InlineTag.header);
            expect(parser.textHead, matcher);
          });
        });
      });

      group("should return expected value", () {
        test(InlineTag.b, () {
          final parser = InlineTagParser(textBold, InlineTag.b);
          expect(parser.textHead, "Sandwiches for");
        });

        test(InlineTag.header, () {
          final parser = InlineTagParser(textHeader, InlineTag.header);
          expect(parser.textHead, "Too much");
        });
      });
    });
    group("textTail", () {
      group("should return null when expected", () {
        const matcher = isNull;

        group("tag in the text is different from the parameter", () {
          test("${InlineTag.header} on text with b tag", () {
            final parser = InlineTagParser(textBold, InlineTag.header);
            expect(parser.textTail, matcher);
          });

          test("${InlineTag.b} on text with header tag", () {
            final parser = InlineTagParser(textHeader, InlineTag.b);
            expect(parser.textTail, matcher);
          });
        });

        group("text is empty", () {
          test(InlineTag.b, () {
            final parser = InlineTagParser("", InlineTag.b);
            expect(parser.textTail, matcher);
          });

          test(InlineTag.header, () {
            final parser = InlineTagParser("", InlineTag.header);
            expect(parser.textTail, matcher);
          });
        });
      });

      group("should return expected value", () {
        test(InlineTag.b, () {
          final parser = InlineTagParser(textBold, InlineTag.b);
          expect(parser.textTail, " a picnic.");
        });

        test(InlineTag.header, () {
          final parser = InlineTagParser(textHeader, InlineTag.header);
          expect(parser.textTail, " heat today.");
        });
      });
    });
  });
}
