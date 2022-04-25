import 'package:bon_appetit/services/comparator.dart';
import 'package:test/test.dart';

class ComparatorServiceTester {
  static void testCompareDoubleStrings(Map<String?, String?> map, Matcher m) {
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
          const map = <String?, String?>{
            "5.0": "",
            "3.9": "3.",
            "1.1": "1.0",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });

        group("if a is not null and b is null", () {
          const map = <String?, String?>{
            "5.0": "",
            "3.9": "3.",
            "1.1": "1.0",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });
      });

      group("should return 0", () {
        const m = isZero;

        group("if a and b are null", () {
          ComparatorServiceTester.testCompareDoubleStrings({null: null}, m);
        });

        group("if a and b are not doubles", () {
          const map = <String?, String?>{
            "": "",
            "*&*@": "KKJ(",
            "asdnull": "nuller",
            "nVll": "axr",
            "ryh": "nUll",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });

        group("if a and b are equal", () {
          const map = <String?, String?>{
            "3.0": "3.0",
            "50.2": "50.20",
            "0.12302": "00.12302",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });
      });

      group("should return positive", () {
        const m = isPositive;

        group("if a is lesser than b", () {
          const map = <String?, String?>{
            "": "1.2",
            "3.2": "3.3",
            "0.01": "1.01",
            "5.1102": "5.11030",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });

        group("if a is null and b is not null", () {
          const map = <String?, String?>{
            null: "3.2",
            "null": "5.1",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });
      });
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
