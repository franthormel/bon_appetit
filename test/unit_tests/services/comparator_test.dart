import 'package:bon_appetit/services/comparator.dart';
import 'package:test/test.dart';

class ComparatorServiceTester {
  static void testCompareDoubleStrings(Map<String, String> map, Matcher m) {
    map.forEach((a, b) {
      test("a=$a b=$b", () {
        expect(ComparatorService.compareDoubleStrings(a, b), m);
      });
    });
  }
}

void main() {
  group("Comparator", () {
    group("compareDoubleStrings()", () {
      group("should return negative", () {
        const m = isNegative;

        group("if a is greater than b", () {
          const map = <String, String>{
            "5.0": "",
            "3.9": "3.",
            "1.1": "1.0",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });

        group("if b is null and a is not null", () {
          const map = <String, String>{
            "5.0": "",
            "3.9": "3.",
            "1.1": "1.0",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });
      });

      group("should return 0", () {});

      group("should return positive", () {});
    });

    group("compareIntStrings()", () {
      // TODO: Test compareIntsFromNullableStrings()
      group("should return -1", () {});
      group("should return 0", () {});
      group("should return 1", () {});
    });
  });

  group("Sorting collections with nullable map", () {
    group("Nullable doubles should be sorted in descending order", () {
      // TODO: Test compareDoublesFromNullableStrings() with a collection
    });

    group("Nullable integers should be sorted in descending order", () {
      // TODO: Test compareIntsFromNullableStrings() with a collection
    });
  });
}
